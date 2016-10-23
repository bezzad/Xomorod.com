using System;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Xomorod.Com.Models;
using Xomorod.Shared;
using Xomorod.Shared.Resources;

namespace Xomorod.Com.Controllers
{
    public class BaseController : Controller
    {
        private ApplicationUserManager _userManager;
        public ApplicationUserManager UserManager
        {
            get
            {
                return _userManager ?? HttpContext.GetOwinContext().GetUserManager<ApplicationUserManager>();
            }
            set { _userManager = value; }
        }

        
        public ApplicationUser CurrentUser => UserManager.FindById(User.Identity.GetUserId());

        protected override IAsyncResult BeginExecuteCore(AsyncCallback callback, object state)
        {
            string cultureName = Request.GetUrlCulture(false) // read route culture
                ?? Request.Cookies[SecurityKeys.CultureCookieKey]?.Value // Attempt to read the culture cookie from Request
                ?? (Request.UserLanguages?.Any() == true
                    ? Request.UserLanguages[0] // obtain it from HTTP header AcceptLanguages
                    : null);

            // Validate culture name
            cultureName = CultureHelper.GetImplementedCulture(cultureName); // This is safe


            // Modify current thread's cultures            
            Thread.CurrentThread.CurrentCulture =
                Thread.CurrentThread.CurrentUICulture = 
                    new System.Globalization.CultureInfo(cultureName);

            RouteData.Values["culture"] = cultureName;  // set culture

            return base.BeginExecuteCore(callback, state);
        }
    }
}