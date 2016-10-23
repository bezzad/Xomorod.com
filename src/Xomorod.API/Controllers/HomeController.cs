using System;
using System.Web.Mvc;
using System.Web.UI;

namespace Xomorod.API.Controllers
{
    public class HomeController : Controller
    {
        [OutputCache(Duration = 120960, Location = OutputCacheLocation.Any, VaryByCustom = "culture;user",
            VaryByContentEncoding = "gzip;deflate", VaryByHeader = "X-Requested-With;Accept-Language")]
        public ActionResult Index()
        {
            ViewBag.Title = "Xomorod API";

            return View();
        }

    }
}
