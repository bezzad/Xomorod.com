using System.Web.Http;

namespace Xomorod.News
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services

            // Enabling Cross-Origin Requests in ASP.NET Web API 2
            // helpfull link: http://www.asp.net/web-api/overview/security/enabling-cross-origin-requests-in-web-api
            config.EnableCors();

            // Web API routes
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/v{version}/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional },
                constraints: new { version = @"\d" });

            config.SuppressHostPrincipal();
        }
    }
}
