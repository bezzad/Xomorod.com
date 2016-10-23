using System;
using System.Data;
using System.Globalization;
using System.IdentityModel.Tokens;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Cors;
using AdoManager;
using Dapper;
using Xomorod.Helper.Resources;
using Xomorod.Shared.Resources;

namespace Xomorod.API.Controllers
{
    /// <summary>
    /// Xomorod general controller
    /// </summary>
    [AllowAnonymous]
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class GeneralController : ApiController
    {
        public bool VerifyCaptcha(string captchaResponse)
        {
            //Getting Response String Append to Post Method
            //string captchaResponse = Request["g-recaptcha-response"]; 

            bool Valid = false;

            //Request to Google Server
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create
                    ($"https://www.google.com/recaptcha/api/siteverify?secret={SecurityKeys.ReCaptchaPrivateKey}&response=" + captchaResponse);
            try
            {
                //Google recaptcha Response
                using (WebResponse wResponse = req.GetResponse())
                {

                    using (StreamReader readStream = new StreamReader(wResponse.GetResponseStream()))
                    {
                        string jsonResponse = readStream.ReadToEnd();

                        var data = Newtonsoft.Json.JsonConvert.DeserializeObject<dynamic>(jsonResponse); // Deserialize Json
                        Valid = (bool)data.success.ToObject(typeof(bool));
                    }
                }

                return Valid;
            }
            catch (WebException ex)
            {
                throw ex;
            }
        }

        // POST: api/ContactMe
        [HttpPost]
        [Route("General/ContactMe")]
        public async Task<IHttpActionResult> ContactMe(HttpRequestMessage request)
        {
            var content = request.Content;
            var jsonContent = content.ReadAsStringAsync().Result;
            var data = Newtonsoft.Json.JsonConvert.DeserializeObject<dynamic>(jsonContent);

            string captchaResponse = data.captchaResponse?.ToObject(typeof(string));
            string culture = data.culture?.ToObject(typeof(string));
            string name = data.name?.ToObject(typeof(string));
            string email = data.email?.ToObject(typeof(string));
            string subject = data.subject?.ToObject(typeof(string));
            string message = data.message?.ToObject(typeof(string));
            string alert;

            if (!VerifyCaptcha(captchaResponse))
            {
                alert = Localization.ResourceManager.GetString("CaptchaHasNotValid", CultureInfo.GetCultureInfo(culture));
            }
            else
            {
                // store contact data on database
                var result = await AdoManager.ConnectionManager.GetDefaultConnection().SqlConn.ExecuteAsync(
                    "sp_Insert_ContactMe",
                    new { name, email, subject, message },
                    commandType: CommandType.StoredProcedure);
                alert = Localization.ResourceManager.GetString("ContactedSuccessfull",
                    CultureInfo.GetCultureInfo(culture));
            }

            return Ok(alert);
        }


        // POST: api/SubscriptEmail
        [HttpPost]
        [Route("General/SubscriptEmail")]
        public async Task<IHttpActionResult> SubscriptEmail(HttpRequestMessage request)
        {
            var content = request.Content;
            var jsonContent = content.ReadAsStringAsync().Result;
            var data = Newtonsoft.Json.JsonConvert.DeserializeObject<dynamic>(jsonContent);

            string culture = data.culture?.ToObject(typeof(string));
            string email = data.email?.ToObject(typeof(string));

            string alert;
            try
            {
                if (string.IsNullOrEmpty(email))
                    alert = Localization.ResourceManager.GetString("EntryUrlEmpty", CultureInfo.GetCultureInfo(culture));
                else
                {
                    var result =
                        await ConnectionManager.GetDefaultConnection()
                            .SqlConn.ExecuteAsync("sp_Insert_NewsletterSubscribeEmails", new { Email = email },
                                commandType: CommandType.StoredProcedure);
                    alert = Localization.ResourceManager.GetString("SuccessSubscript", CultureInfo.GetCultureInfo(culture));
                }
            }
            catch (Exception exp)
            {
                alert = Localization.ResourceManager.GetString(exp.Message, CultureInfo.GetCultureInfo(culture)) ?? exp.Message;
            }

            return Ok(alert);
        }
    }
}
