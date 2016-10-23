using System;
using AdoManager;
using Hangfire;
using Microsoft.Owin.Security;
using Microsoft.Owin.Security.Cookies;
using Owin;
using Xomorod.Com.Filters;

namespace Xomorod.Com.Core
{
    public static class HangfireSetting
    {
        public static readonly string HangfireDahsboardRout = "/BackgroundJobs";
        internal static void SetHangfireBackgroundJobs(this IAppBuilder app)
        {
            GlobalConfiguration.Configuration.UseSqlServerStorage(ConnectionManager.GetDefaultConnection().ConnectionString);

            app.UseCookieAuthentication(new CookieAuthenticationOptions()
                { AuthenticationMode = AuthenticationMode.Active }); // Authentication - first

            var opt = new DashboardOptions
            {
                AuthorizationFilters = new[] { new HangfireRestrictiveAuthorizationFilter() },
                AppPath = "http://xomorod.com"
            };
            app.UseHangfireDashboard(HangfireDahsboardRout, opt);
            app.UseHangfireServer();
        }

        internal static void SetSchaduleJobs()
        {
            RecurringJob.AddOrUpdate(() => XomorodRankingWriter.ReadWebSiteRanking(), Cron.Hourly);
        }
    }
}
