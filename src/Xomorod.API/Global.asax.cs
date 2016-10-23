using System;
using System.Diagnostics;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using AdoManager;
using GlobalConfiguration = System.Web.Http.GlobalConfiguration;
using Xomorod.API.Controllers;

namespace Xomorod.API
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            ConnectionManager.SetToDefaultConnection(Connections.Xomorod.Connection.Name);

            AreaRegistration.RegisterAllAreas();
            GlobalConfiguration.Configure(WebApiConfig.Register);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        protected void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs
            var context = new HttpContextWrapper(Context); //((MvcApplication)sender).Context;
            var action = "Index";
            var statusCode = 500;

            var currentController = " ";
            var currentAction = " ";
            var currentRouteData = RouteTable.Routes.GetRouteData(context);

            if (currentRouteData != null)
            {
                currentController = currentRouteData.Values["controller"]?.ToString() ?? " ";
                currentAction = currentRouteData.Values["action"]?.ToString() ?? " ";
            }

            // Get the exception object.
            var exc = Server.GetLastError();

            if (exc == null)
                return;

            // Clear the error from the server
            Server.ClearError();

            // Handle HTTP errors
            if (exc.GetType() == typeof(HttpException))
            {
                // The Complete Error Handling Example generates
                // some errors using URLs with "NoCatch" in them;
                // ignore these here to simulate what would happen
                // if a global.asax handler were not implemented.
                if (exc.Message.Contains("NoCatch") || exc.Message.Contains("maxUrlLength"))
                    return;

                //Redirect HTTP errors to HttpError page
                var httpEx = exc as HttpException;

                if (httpEx != null)
                    switch (httpEx.GetHttpCode())
                    {
                        case 404: // Redirect to 404:
                            action = "NotFound";
                            statusCode = 404;
                            break;

                        // others if any
                        default:
                            statusCode = httpEx.GetHttpCode();
                            break;
                    }
            }

            context.ClearError();
            context.Response.Clear();
            context.Response.StatusCode = statusCode;
            context.Response.TrySkipIisCustomErrors = true;
            if (!context.Request.IsAjaxRequest())
            {
                context.Response.ContentType = "text/html";
            }

            var controller = new ErrorsController();
            var routeData = new RouteData();
            routeData.Values["controller"] = "Errors";
            routeData.Values["action"] = action;

            controller.ViewData.Model = new HandleErrorInfo(exc, currentController, currentAction);
            ((IController)controller).Execute(new RequestContext(context, routeData));
        }
    }
}
