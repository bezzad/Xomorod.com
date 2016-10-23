using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Xomorod.Com.Controllers
{
    public class SitemapsController : Controller
    {
        // GET: Sitemap
        //[OutputCache(Duration = 172800, VaryByCustom = "culture")]
        public ActionResult Index()
        {
            ViewBag.Title = "Sitemap";
            return View();
        }
    }
}