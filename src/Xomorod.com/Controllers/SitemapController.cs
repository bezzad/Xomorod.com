using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using Xomorod.Shared.Sitemap;

namespace Xomorod.Com.Controllers
{
    public class SitemapsController : Controller
    {
        // GET: Sitemap
        [OutputCache(Duration = 360, Location = System.Web.UI.OutputCacheLocation.Any, VaryByCustom = "none")]
        public ActionResult Index()
        {
            ViewBag.Title = "Sitemap";
            var sitemapNodes = SitemapHelper.GetSitemapNodes();
            return View(sitemapNodes);
        }

        [OutputCache(Duration = 360, Location = System.Web.UI.OutputCacheLocation.Any, VaryByCustom = "none")]
        public ActionResult SitemapXml()
        {
            var sitemapNodes = SitemapHelper.GetSitemapNodes();
            string xml = SitemapHelper.GetSitemapDocument(sitemapNodes);
            return this.Content(xml, "text/Xml", Encoding.UTF8);
        }


    }
}