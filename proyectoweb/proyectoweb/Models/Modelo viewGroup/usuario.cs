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
        public string correo { get; set; }
        public string url_foto_usuario { get; set; }
        public string fk_tipo_user { get; set; }
        public string programa { get; set; }
        public string grupo { get; set; }
        public string fk_grupo { get; set; }

        private ConexionPropio conect = new ConexionPropio();


        public DataTable crearUsuario(usuario obj)
        {


            List<Parametro> p = new List<Parametro>();

            p.Add(new Parametro(
              "id_user",
              obj.idUsuario,
              "VARCHAR",
              ParameterDirection.Input
              ));

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
            p.Add(new Parametro(
               "email",
               obj.correo,
               "VARCHAR",
               ParameterDirection.Input
               ));

            p.Add(new Parametro(
              "fk_programa",
              obj.programa,
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

        public DataTable consultarProyectodeMiembro(usuario obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "grupo_perte",
                obj.fk_grupo,
                "VARCHAR",
                ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "id_user",
                obj.idUsuario,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proyec_semi_trabajo_consul", p);

        }

        public DataTable consul_data_basi(usuario obj) {

            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_user",
                obj.idUsuario,
                "VARCHAR",
                ParameterDirection.Input
                ));
          

            return conect.ExecuteProcedure("proced_consul_user_datos", p);



        }






    }

}