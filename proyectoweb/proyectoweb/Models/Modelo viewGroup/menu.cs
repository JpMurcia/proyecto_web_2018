using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.Modelo_viewGroup
{
    public class menu
    {
        public string id_menu { get; set; }
        public string nom_menu { get; set; }
        public string id_menu_padre { get; set; }
        public string url_pagina { get; set; }
        public string fk_rol { get; set; }

        private ConexionPropio conect = new ConexionPropio();



        public DataTable consultar_menu_nom(menu obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_rol",
                obj.fk_rol,
                "VARCHAR",
                ParameterDirection.Input
                ));


            return conect.ExecuteProcedure("proced_consul_menu_nom", p);
        }

        public DataTable consultar_menu_view(menu obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_rol",
                obj.fk_rol,
                "VARCHAR",
                ParameterDirection.Input
                ));


            return conect.ExecuteProcedure("proced_consul_menu_view", p);
        }
    }
}