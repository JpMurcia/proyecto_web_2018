using proyectoweb.Models.Modelo_viewGroup;
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


        public DataTable dato_pag() {

            return pag.consul_dato();
        }


    }
}