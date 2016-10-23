using System;
using System.Web.Mvc;
using System.Web.UI;
using Xomorod.Shared.Resources;

namespace Xomorod.Com.Controllers
{
    public class HomeController : BaseController
    {
        [OutputCache(Duration = 172800, Location = OutputCacheLocation.Client, VaryByCustom = "culture;user",
            VaryByContentEncoding = "gzip;deflate", VaryByHeader = "X-Requested-With;Accept-Language")]
        public ActionResult Index()
        {
            ViewBag.BodyClass = "custom-background";

            return View();
        }

        [OutputCache(Duration = 172800, VaryByCustom = "culture")]
        public ActionResult Services()
        {
            return PartialView("Services");
        }

        [OutputCache(Duration = 172800, VaryByCustom = "culture")]
        public ActionResult GreenSeparator()
        {
            return PartialView("GreenSeparator");
        }

        [OutputCache(Duration = 172800, VaryByCustom = "culture")]
        public ActionResult Portfolios()
        {
            return PartialView("Portfolios");
        }

        [OutputCache(Duration = 172800, VaryByCustom = "culture")]
        public ActionResult About()
        {
            return PartialView("About");
        }

        [OutputCache(Duration = 172800, VaryByCustom = "culture")]
        public ActionResult RedSeparator()
        {
            return PartialView("RedSeparator");
        }

        [OutputCache(Duration = 172800, VaryByCustom = "culture")]
        public ActionResult Subscribe(string email)
        {
            return PartialView("Subscribe");
        }

        [OutputCache(Duration = 172800, VaryByCustom = "culture")]
        public ActionResult Map()
        {
            return PartialView("Map");
        }

        [OutputCache(Duration = 172800, VaryByCustom = "culture")]
        public ActionResult Contact()
        {
            ViewBag.reCaptchaPublicKey = SecurityKeys.ReCaptchaPublicKey;

            return PartialView("Contact");
        }

        [OutputCache(Duration = 172800, VaryByCustom = "culture")]
        public ActionResult LatestNews()
        {
            return PartialView("LatestNews");
        }

        [OutputCache(Duration = 172800, VaryByCustom = "culture")]
        public ActionResult Team()
        {
            return PartialView("Team");
        }

        [OutputCache(Duration = 172800, VaryByCustom = "culture")]
        public ActionResult Testimonials()
        {
            return PartialView("Testimonials");
        }

        [OutputCache(Duration = 172800, VaryByCustom = "culture")]
        public ActionResult Packages()
        {
            return PartialView("Packages");
        }

        [OutputCache(Duration = 172800, Location = OutputCacheLocation.Any, VaryByCustom = "culture", 
                VaryByContentEncoding = "gzip;deflate", VaryByHeader = "X-Requested-With;Accept-Language")]
        public ActionResult Privacy()
        {
            return View();
        }
    }
}