using System;
using System.Text;
using System.Web.Mvc;
using Xomorod.Com.Core;
using Xomorod.Helper.Resources;
using Xomorod.Helper.Sitemap;
using Xomorod.Shared;

namespace Xomorod.Com.Controllers
{
    public class SitemapsController : BaseController
    {
        // GET: Sitemap
        //[OutputCache(Duration = 360, Location = System.Web.UI.OutputCacheLocation.Any, VaryByCustom = "culture")]
        public ActionResult Index()
        {
            ViewBag.Title = Localization.SiteNameSiteMap;
            var sitemapNodes = SitemapHelper.GetSitemapNodes(CultureHelper.GetCurrentCulture());
            var tree = sitemapNodes.GetTreeNode();
            return View(tree);
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