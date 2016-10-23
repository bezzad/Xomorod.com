using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Routing;

namespace Xomorod.API
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            // ignore
            routes.Ignore("{resource}.axd/{*pathInfo}");
            routes.Ignore("images/*");


            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
                );


            //routes.MapRoute(
            //    name: "productAPI",
            //    url: "{controller}/{language}",
            //    defaults: new { controller = "products", language = "en" }
            //    );

            //routes.MapRoute(
            //    name: "productByCategoryAPI",
            //    url: "{controller}/{language}/{category}",
            //    defaults: new { controller = "products", language = "en", category = UrlParameter.Optional }
            //    );

            routes.MapHttpRoute(
                    name: "errors",
                    routeTemplate: "errors/{id}",
                    defaults: new { id = RouteParameter.Optional }
                );

            routes.MapPageRoute("ErrorRoute",
                "Errors/{id}",
                "~/Views/Errors/err{id}", true,
                new RouteValueDictionary
                {
                    {"id", 404}
                },
                new RouteValueDictionary
                {
                    {"id", @"\d{3}"}
                });

            // catch all route
            routes.MapPageRoute(
                "All Pages",
                "{*RequestedPage}",
                "~/errors/404",
                true,
                new System.Web.Routing.RouteValueDictionary { { "RequestedPage", "home" } }
                );
        }
    }
}
