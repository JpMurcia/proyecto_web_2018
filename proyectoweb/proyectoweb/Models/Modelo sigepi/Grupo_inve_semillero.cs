using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModeloSigepi
{
    public class Grupo_inve_semillero
    {
        private Conexion conect = new Conexion();


        public string id_grupo { get; set; }
        public string nombreGrupo { get; set; }
        public string siglas { get; set; }
        public string objetivo { get; set; }
        public string ProgramaGrupo { get; set; }
        public string urlLogo { get; set; }
        public string mision { get; set; }
        public string vision { get; set; }
        public string justificacion { get; set; }
        public string quienesSomos { get; set; }

        
        
        public DataTable consultargrupoModel(Grupo_inve_semillero obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "nombre",
                obj.nombreGrupo,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proced_consul_grupo", p);

        }

        public DataTable consultarsemilleroModel(Grupo_inve_semillero obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "nombre",
                obj.nombreGrupo,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proced_consul_semilleros", p);

        }


        public DataTable consultarMiembros(Grupo_inve_semillero obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "nom_grupo",
                obj.nombreGrupo,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proced_consul_miembro_simple", p);

        }

        public DataTable consultarProyectoAct(Grupo_inve_semillero obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "nombre",
                obj.nombreGrupo,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proced_consul_proyec_act", p);

        }

        public DataTable consultarProyectoInac(Grupo_inve_semillero obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "nombre",
                obj.id_grupo,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proced_consul_proyec_act", p);

        }

        public DataTable consultarProyecto(Grupo_inve_semillero obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_grupo",
                obj.id_grupo,
                "VARCHAR",
                ParameterDirection.Input
                ));

            return conect.ExecuteProcedure("proced_consul_proyecto", p);

        }



    }
}