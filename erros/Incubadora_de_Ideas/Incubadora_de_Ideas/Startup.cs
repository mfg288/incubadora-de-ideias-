using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Incubadora_de_Ideas.Startup))]
namespace Incubadora_de_Ideas
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
