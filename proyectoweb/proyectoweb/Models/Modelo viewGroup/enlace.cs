using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;

using System.Linq;
using System.Web;

namespace proyectoweb.Models.Modelo_viewGroup
{
    public class enlace
    {
        private ConexionPropio conect = new ConexionPropio();
        public string tipo { get; set; }
        public string id_user { get; set; }
        public string identificador { get; set; }

        public DataTable crear_enlace(enlace obj)
        {


            List<Parametro> p = new List<Parametro>();

            p.Add(new Parametro(
              "tipo",
              obj.tipo,
              "VARCHAR",
              ParameterDirection.Input
              ));

            p.Add(new Parametro(
                "id_user",
                obj.id_user,
                "VARCHAR",
                ParameterDirection.Input
                ));
            p.Add(new Parametro(
                "identificador",
                obj.identificador,
                "VARCHAR",
                ParameterDirection.Input
                ));
          


            return conect.ExecuteProcedure("proced_create_usuario", p);

        }


    }
}