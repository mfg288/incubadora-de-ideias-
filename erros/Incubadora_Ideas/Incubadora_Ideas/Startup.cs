using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Incubadora_Ideas.Startup))]
namespace Incubadora_Ideas
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
