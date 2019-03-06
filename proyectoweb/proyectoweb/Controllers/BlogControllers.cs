using proyectoweb.Models.ModelosViewGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Controllers
{
   

    public class BlogControllers
    {
        private Models.ModelosViewGroup.proyecto proyec = new Models.ModelosViewGroup.proyecto();
        private grupo_investigacion grupoVG = new grupo_investigacion();


        soporta noticia = new soporta();

        public DataTable consulProyecto(Models.ModelosViewGroup.proyecto pro)
        {
            return proyec.consul_proyecto(pro);
        }
        public DataTable consultarProyectoActController(grupo_investigacion grupo)
        {
            return grupoVG.consultarproductos(grupo);
        }

        public DataTable consultarProyectoInacController(grupo_investigacion grupo)
        {
            return grupoVG.consultarProyectoInac(grupo);
        }

        public DataTable consulNoticias(soporta noti)
        {

            return noticia.consul_soporte(noti);

        }
    }
}