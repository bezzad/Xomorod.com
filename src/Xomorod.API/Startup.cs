using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(Xomorod.API.Startup))]
namespace Xomorod.API
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
