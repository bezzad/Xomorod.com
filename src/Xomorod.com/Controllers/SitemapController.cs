using System;
using System.Text;
using System.Web.Mvc;
using Xomorod.Helper.Resources;
using Xomorod.Shared;
using Xomorod.Shared.Sitemap;

namespace Xomorod.Com.Controllers
{
    public class SitemapsController : BaseController
    {
        // GET: Sitemap
        //[OutputCache(Duration = 360, Location = System.Web.UI.OutputCacheLocation.Any, VaryByCustom = "none")]
        public ActionResult Index()
        {
            ViewBag.Title = Localization.SiteNameSiteMap;
            var sitemapNodes = SitemapHelper.GetSitemapNodes(CultureHelper.GetCurrentCulture());
            return View(sitemapNodes);
        }

        [OutputCache(Duration = 360, Location = System.Web.UI.OutputCacheLocation.Any, VaryByCustom = "none")]
        public ActionResult SitemapXml()
        {
            var sitemapNodes = SitemapHelper.GetSitemapNodes();
            var xml = sitemapNodes.GetSitemapDocument();
            return this.Content(xml, "text/Xml", Encoding.UTF8);
        }


    }
}