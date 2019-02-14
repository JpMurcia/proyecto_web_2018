using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using proyectoweb.Models.conexion;

namespace proyectoweb.Models.ModeloSigepi
{
    public class modelUsuario
    {

        private Conexion conect = new Conexion();
        public string id { get; set; }
        public string email_usuario { get; set; }
        public string nombre { get; set; }
        public string contrasena { get; set; }
        public string programa { get; set; }
        public string foto { get; set; }
        public string tipo { get; set; }
        public string grupo { get; set; }





        public modelUsuario(string nombre, string contrasena, string foto)
        {
            this.nombre = nombre;
            this.contrasena = contrasena;
            this.foto = foto;
        }

        public modelUsuario()
        {
        }

        public DataTable Consultar(modelUsuario obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "idUser",
                obj.id,
                "VARCHAR",
                ParameterDirection.Input
                ));


            return conect.ExecuteProcedure("proced_consul_user", p);
        }

        public DataTable validarUsuario(modelUsuario obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "email_usuari",
                obj.email_usuario,
                "VARCHAR",
                ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "contra",
                obj.contrasena,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proced_validar_user", p);

        }

        public DataTable consultarProyecto(modelUsuario obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "grupo_perte",
                obj.grupo,
                "VARCHAR",
                ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "id_user",
                obj.id,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proced_consul_user_proye_grupo", p);

        }

        public DataTable cosultarGrupo(modelUsuario obj) {

            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_usuario",
                obj.id,
                "VARCHAR",
                ParameterDirection.Input
                ));
          

            return conect.ExecuteProcedure("proced_consul_user_proye_grupo", p);


        }



    }
}