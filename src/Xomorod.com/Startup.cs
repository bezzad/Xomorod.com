using Microsoft.Owin;
using Owin;
using Xomorod.Com.Core;

[assembly: OwinStartup(typeof(Xomorod.Com.Startup))]
namespace Xomorod.Com
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);

            app.SetHangfireBackgroundJobs();

            HangfireSetting.SetSchaduleJobs();
        }
    }
}
