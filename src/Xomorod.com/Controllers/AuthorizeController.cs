using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Xomorod.Com.Models;

namespace Xomorod.Com.Controllers
{
    public class AuthorizeController : System.Web.Http.ApiController
    {
        private ApplicationUserManager _userManager;
        public ApplicationUserManager UserManager
        {
            get
            {
                return _userManager ?? HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>();
            }
            set { _userManager = value; }
        }


        public ApplicationUser CurrentUser => UserManager.FindById(User.Identity.GetUserId());

        // POST: api/SubscriptEmail
        [HttpPost]
        [Route("authorize/googleoauth2callback")]
        public IHttpActionResult GoogleOauth2Callback(HttpRequestMessage request)
        {
            var content = request.Content;
            var jsonContent = content.ReadAsStringAsync().Result;
            var data = Newtonsoft.Json.JsonConvert.DeserializeObject<dynamic>(jsonContent);

            return Ok();
        }

        // POST: api/SubscriptEmail
        [HttpGet]
        [Route("authorize/messageReadAsync")]
        [Authorize]
        public async Task<IHttpActionResult> MessageReadAsync(int id)
        {
            var affectedRow =
                await
                    Connections.Xomorod.SqlConn.ExecuteAsync(
                        "UPDATE dbo.ContactMe SET IsRead = 1 WHERE ContactMeID = @Id AND UserId = @UserId", new { Id = id, UserId = CurrentUser.Id });

            return Ok(affectedRow > 0);
        }
    }
}
