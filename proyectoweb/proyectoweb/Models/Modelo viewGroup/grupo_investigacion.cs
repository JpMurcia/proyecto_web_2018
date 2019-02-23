using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModelosViewGroup
{
    public class grupo_investigacion
    {
        private ConexionPropio conect = new ConexionPropio();


        public string idGrupoInvestigacion { get; set; }
        public string grupo_nombre { get; set; }

        public string siglas { get; set; }
        public string objetivo { get; set; }
        public string ProgramaGrupo { get; set; }
        public string urlLogo { get; set; }
        public string mision { get; set; }
        public string vision { get; set; }
        public string justificacion { get; set; }
        public string quienesSomos { get; set; }
    
        public string url_imagen { get; set; }
        public string estado { get; set; }
        public string fk_id_grupo { get; set; }
        public string correo   { get; set; }
        public string direccion { get; set; }
        

        public DataTable consultarSemillero(grupo_investigacion obj) {

            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "pk_grupo",
                obj.fk_id_grupo,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proced_consul_semillero", p);

        }

        public DataTable Crear_grupo(grupo_investigacion obj)
        {

            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_grupo",
                obj.idGrupoInvestigacion,
                "VARCHAR",
                ParameterDirection.Input
                ));

            p.Add(new Parametro(
                "nom_grupo",
                 obj.grupo_nombre,
                 "VARCHAR",
                 ParameterDirection.Input
                ));

            p.Add(new Parametro(
                "email_grupo",
                 obj.grupo_nombre,
                 "VARCHAR",
                 ParameterDirection.Input
                ));

            p.Add(new Parametro(
                "telefo_grupo",
                obj.grupo_nombre,
                "VARCHAR",
                 ParameterDirection.Input
                ));


            p.Add(new Parametro(
                "direcc_grupo",
                obj.grupo_nombre,
                "VARCHAR",
                ParameterDirection.Input
                 ));



            return conect.ExecuteProcedure("proced_create_grupo", p);

        }

    }
}