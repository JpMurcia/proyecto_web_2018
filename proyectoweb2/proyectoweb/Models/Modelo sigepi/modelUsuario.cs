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
        public string nombre { get; set; }
        public string contrasena { get; set; }
        public string foto { get; set; }
        public tipoUsuario tipo { get; set; }





        public modelUsuario(string nombre, string contrasena, string foto)
        {
            this.nombre = nombre;
            this.contrasena = contrasena;
            this.foto = foto;
        }

        public modelUsuario()
        {
        }

        public DataTable validarUsuario(modelUsuario obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "usuari",
                obj.nombre,
                "VARCHAR",
                ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "contra",
                obj.contrasena,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("validar_user", p);

        }
        


    }
}