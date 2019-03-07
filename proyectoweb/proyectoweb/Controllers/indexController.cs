using proyectoweb.Models.Modelo_viewGroup;
using proyectoweb.Models.ModelosViewGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Controllers
{
    public class indexController
    {
        pagina_propia pag = new pagina_propia();

        pagina_web pagWeb = new pagina_web();

        public DataTable dato_pag() {

            return pag.consul_dato();
        }

        public DataTable dato_view_pag_web()
        {

            return pagWeb.consul_viewPaginas();
        }



    }
}