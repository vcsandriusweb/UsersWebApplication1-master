using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(UsersWebApplication1.Startup))]
namespace UsersWebApplication1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
