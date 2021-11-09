using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(semana15_aplicacion_web.Startup))]
namespace semana15_aplicacion_web
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
