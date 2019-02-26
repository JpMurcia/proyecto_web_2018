using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using proyectoweb.Models.conexion;

namespace proyectoweb.Models.ModelosViewGroup

    //este es el modelo perro
{
    public class Actividad
    {
        private Conexion conect = new Conexion();
            public string idActividad { get; set; }
 
        public string nombreActividad { get; set; }
        public string descripcion { get; set; }
        public string fechaActividad { get; set; }
        public string fk_grupo { get; set; }

        public DataTable Crear(Actividad obj)
        {
            List<Parametro> p = new List<Parametro>();
           
            p.Add(new Parametro(
               "NombreActividad",
               obj.nombreActividad,
               "VARCHAR",
               ParameterDirection.Input
               ));
           
            p.Add(new Parametro(
               "fechaActividad",
               obj.fechaActividad,
               "DATE",
               ParameterDirection.Input
               ));
            p.Add(new Parametro(
               "fk_grupo",
               obj.fk_grupo,
               "INT",
               ParameterDirection.Input
               ));
            return conect.ExecuteProcedure("proced_create_activity", p);

        }

        public DataTable consul_acti(Actividad obj)
        {
            List<Parametro> p = new List<Parametro>();

            
            p.Add(new Parametro(
               "fk_grupo",
               obj.fk_grupo,
               "INT",
               ParameterDirection.Input
               ));
            return conect.ExecuteProcedure("proced_consul_activity", p);

        }

        public DataTable eliminar_acti(Actividad obj)
        {
            List<Parametro> p = new List<Parametro>();

            p.Add(new Parametro(
               "id_activity",
               obj.idActividad,
               "VARCHAR",
               ParameterDirection.Input
               ));
            return conect.ExecuteProcedure("proced_dele_activity", p);
        }
            
        public DataTable update_acti(Actividad obj)
        {
            List<Parametro> p = new List<Parametro>();

            p.Add(new Parametro(
               "id_activity",
               obj.idActividad,
               "VARCHAR",
               ParameterDirection.Input
               ));

            p.Add(new Parametro(
               "nom_activity",
               obj.nombreActividad,
               "VARCHAR",
               ParameterDirection.Input
               ));
            p.Add(new Parametro(
               "fecha_activity",
               obj.fechaActividad,
               "VARCHAR",
               ParameterDirection.Input
               ));
            return conect.ExecuteProcedure("proced_update_activity", p);

        }


    }
}