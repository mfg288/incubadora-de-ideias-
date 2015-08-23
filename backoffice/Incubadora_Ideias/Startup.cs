using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Incubadora_Ideias.Startup))]
namespace Incubadora_Ideias
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
