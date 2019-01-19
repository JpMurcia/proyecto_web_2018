using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModelosViewGroup
{
    public class usuario
    {
        public string idUsuario { get; set; }
        public string nom_usuario { get; set; }
        public string url_foto_usuario { get; set; }


        private Conexion conect = new Conexion();


        public DataTable crearUsuario(usuario obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "nombre_user",
                obj.nom_usuario,
                "VARCHAR",
                ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "url_foto_user",
                obj.url_foto_usuario,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proced_create_usuario", p);

        }

        //public DataTable ValidarUsuario(usuario obj)
        //{
        //    List<Parametro> p = new List<Parametro>();
        //    p.Add(new Parametro(
        //        "nombre_user",
        //        obj.nom_usuario,
        //        "VARCHAR",
        //        ParameterDirection.Input
        //        ));
        //    p.Add(new Parametro(
        //        "url_foto_user",
        //        obj.url_foto_usuario,
        //        "VARCHAR",
        //        ParameterDirection.Input
        //        ));

        //    return conect.ExecuteProcedure("proced_create_usuario", p);

        //}

        public DataTable ConsultarUser(usuario obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_user",
                obj.idUsuario,
                "INT",
                ParameterDirection.Input
                ));


            return conect.ExecuteProcedure("proced_consul_user", p);
        }







    }

}