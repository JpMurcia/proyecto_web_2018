using proyectoweb.Models.conexion;
using proyectoweb.Models.ModeloSigepi;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModelosViewGroup
{
    public class pagina_web
    {


        private ConexionPropio conect = new ConexionPropio();

        public string id { get; set; }
        public string urlPagina { get; set; }
        public string idplantilla  { get; set; }
        public string idgrupo { get; set; }



        public DataTable CrearPagina(pagina_web obj)
        {

            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "fk_grupo",
                obj.idgrupo,
                "VARCHAR",
                ParameterDirection.Input
                ));

            p.Add(new Parametro(
                "fk_plantilla",
                obj.idplantilla,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proced_create_pagina_web", p);

        }


        public DataTable consul_viewPaginas()
        {
            List<Parametro> p = new List<Parametro>();


            return conect.ExecuteProcedure("proced_view_consul_paginas", p);


        }
    }
}