using System;
using System.Web.Mvc;
using System.Web.Routing;
using Xomorod.Shared;

namespace Xomorod.Com
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.IgnoreRoute("content/{*pathInfo}");
            routes.IgnoreRoute("favicon.ico");
            routes.IgnoreRoute("robots.txt");
            routes.IgnoreRoute("sitemap.html");
            routes.IgnoreRoute("scripts/{resource}.map/{*pathInfo}");
            routes.IgnoreRoute("content/{resource}.map/{*pathInfo}");
            //
            // First of all MapRoutes
            routes.MapRoute("sitemap", "sitemap", new { culture = CultureHelper.GetDefaultCulture(), controller = "Sitemaps", action = "Index", area = "" });
            routes.MapRoute("sitemapHtml", "sitemap.html", new { culture = CultureHelper.GetDefaultCulture(), controller = "Sitemaps", action = "Index", area = "" });
            routes.MapRoute("sitemapXml", "sitemap.xml", new { culture = CultureHelper.GetDefaultCulture(), controller = "Sitemaps", action = "SitemapXml", area = "" });
            //
            // Add Default MapRoute
            routes.MapRoute(
                name: "DefaultLocalized",
                url: "{culture}/{controller}/{action}/{id}",
                //Warning: if uncomment below code then can not catch errors in the first rout !!!
                //constraints: new { culture = @"(\w{2})|(\w{2}-\w{2})" },   // e.g:  'en' or 'en-US' 
                defaults: new { culture = CultureHelper.GetDefaultCulture(), controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
