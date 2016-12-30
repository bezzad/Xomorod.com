using System;
using System.Web.Mvc;
using System.Web.UI;
using Xomorod.Helper.Resources;

namespace Xomorod.Com.Controllers
{
    [AllowAnonymous]
    public class ErrorsController : BaseController
    {
        // GET: Errors
        public ActionResult Index()
        {
            ViewBag.Title = Localization.Error;
            return View("Index");
        }

        [OutputCache(Duration = 1728000, Location = OutputCacheLocation.Any, VaryByCustom = "culture;user",
            VaryByContentEncoding = "gzip;deflate", VaryByHeader = "X-Requested-With;Accept-Language")]
        public ActionResult NotFound()
        {
            ViewBag.Title = Localization.PageNotFound;
            return View("NotFound");
        }
    }
}
