using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;
using Newtonsoft.Json;
using Xomorod.Helper.Resources;
using Xomorod.Shared;
using Xomorod.Shared.Resources;

namespace Xomorod.Com.Controllers
{
    [System.Web.Mvc.AllowAnonymous]
    public class SharedController : BaseController
    {
        public ActionResult SetCulture(string culture)
        {
            // Validate input
            culture = CultureHelper.GetImplementedCulture(culture);

            // Save culture in a cookie
            HttpCookie cookie = Request.Cookies[SecurityKeys.CultureCookieKey];
            if (cookie != null)
                cookie.Value = culture;   // update cookie value
            else
            {
                cookie = new HttpCookie(SecurityKeys.CultureCookieKey)
                {
                    Value = culture,
                    Expires = DateTime.Now.AddYears(1)
                };
            }
            Response.Cookies.Add(cookie);
            RouteData.Values["culture"] = culture;  // set culture

            var callerActionRout = Request.GetReferrerUrlByCulture(culture);

            return Redirect(callerActionRout);
        }

        [System.Web.Mvc.HttpGet]
        public object GetLocalization(string localization)
        {
            var @params = JsonConvert.DeserializeObject<Dictionary<string, string>>(localization);

            var localizeDic = new Dictionary<string, string>();
            foreach (var param in @params)
            {
                localizeDic[param.Key] = Localization.ResourceManager.GetString(param.Value);
            }

            return Json(localizeDic);
        }

        [System.Web.Mvc.HttpPost]
        public object GetLocalization()
        {
            var @params = Request.Params.AllKeys.Where(x => x.StartsWith("localize")).ToList();

            var localizeDic = new Dictionary<string, string>();
            foreach (var param in @params)
            {
                localizeDic[param.Replace("localize[", "").Replace("]", "")] = Localization.ResourceManager.GetString(Request[param]);
            }

            return Json(localizeDic);
        }
    }
}