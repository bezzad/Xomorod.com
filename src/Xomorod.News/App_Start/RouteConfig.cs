using System;
using System.Web.Routing;

namespace Xomorod.News
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            // ignore
            routes.Ignore("{resource}.axd/{*pathInfo}");
            routes.Ignore(""); //Allow index.html to load
            routes.Ignore("partials/*");
            routes.Ignore("assets/*");
            routes.Ignore("images/*");

            //// The following code shows how to prevent routing from handling requests for .axd requests.
            //routes.Add(new System.Web.Routing.Route("{resource}.axd/{*pathInfo}",
            //    new System.Web.Routing.StopRoutingHandler()));

            // localization routes e.g:  http://News.Xomorod.com/en/
            routes.MapPageRoute("localRoutes",
                "{local}",
                "~/default.aspx", true,
                new RouteValueDictionary
                {
                    {"local", "en"},
                },
                new RouteValueDictionary
                {
                    {"local", "[a-z]{2}"},
                });

            // id routes e.g:  http://News.Xomorod.com/News/id/566546
            routes.MapPageRoute("IdRoute",
                "News/id/{id}",
                "~/pages/news.aspx", true,
                new RouteValueDictionary
                {
                    {"id", 0}
                },
                new RouteValueDictionary
                {
                    {"id", @"\d+"}
                });

            routes.MapPageRoute("ExpensesRoute",
                "{local}/News/{category}/{year}/{title}",
                "~/pages/news.aspx", true,
                new RouteValueDictionary
                {
                    {"local", "en"},
                    {"year", DateTime.Now.Year.ToString()}
                },
                new RouteValueDictionary
                {
                    {"local", "[a-z]{2}"},
                    {"year", @"\d{4}"}
                });

            routes.MapPageRoute("DateDetailedRoute",
                "{local}/News/{category}/{year}/{month}/{day}/{*extrainfo}",
                "~/pages/news.aspx", true,
                new RouteValueDictionary
                {
                    {"local", "en"},
                    {"category", "all" },
                    {"year", DateTime.Now.Year.ToString()},
                    {"month", DateTime.Now.Month.ToString()},
                    {"day", DateTime.Now.Day.ToString()}
                },
                new RouteValueDictionary
                {
                    {"local", "[a-z]{2}"},
                    {"year", @"\d{4}"},
                    {"month", @"\d{2}"},
                    {"day", @"\d{2}"}
                });




            // catch all route
            routes.MapPageRoute(
                "All Pages",
                "{*RequestedPage}",
                "~/pages/errors/404.aspx",
                true,
                new System.Web.Routing.RouteValueDictionary { { "RequestedPage", "home" } }
                );

        }
    }
}