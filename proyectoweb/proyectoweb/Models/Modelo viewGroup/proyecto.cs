using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModelosViewGroup
{
    public class proyecto
    {
        private ConexionPropio conect = new ConexionPropio();
        public string idproyect { get; set; }
        public string nom_proyect { get; set; }

        public string descri { get; set; }

        public string imagen { get; set; }

        public string estado { get; set; }
        public string fechaproye { get; set; }
        public string estado_proyec { get; set; }
        public string fk_grupo { get; set; }


        public DataTable  Crear_proyecto (proyecto obj){

            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_proyec",
                obj.idproyect,
                "VARCHAR",
                ParameterDirection.Input
                ));
            p.Add(new Parametro(
              "nom_proyec",
              obj.nom_proyect,
              "VARCHAR",
              ParameterDirection.Input
              ));
            p.Add(new Parametro(
              "estado_proyec",
              obj.estado_proyec,
              "VARCHAR",
              ParameterDirection.Input
              ));
            p.Add(new Parametro(
              "fk_grupo",
              obj.fk_grupo,
              "VARCHAR",
              ParameterDirection.Input
              ));
            p.Add(new Parametro(
              "fecha",
              obj.fechaproye,
              "DATE",
              ParameterDirection.Input
              ));
            return conect.ExecuteProcedure("proye_crearte_proced", p);
        }

        public DataTable consul_proyecto(proyecto obj)
        {

            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "idProyecto",
                obj.idproyect,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("Consultar__Proyecto", p);


        }


        public DataTable update_proyecto(proyecto obj)
        {

            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_proyec",
                obj.idproyect,
                "VARCHAR",
                ParameterDirection.Input
                ));
            p.Add(new Parametro(
              "descrip",
              obj.descri,
              "VARCHAR",
              ParameterDirection.Input
              ));
            p.Add(new Parametro(
              "imagen",
              obj.imagen,
              "VARCHAR",
              ParameterDirection.Input
              ));
         
            return conect.ExecuteProcedure("proced_update_proyecto", p);


        }


    }
}