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

        public string nombreGrupo { get; set; }
        public string siglas { get; set; }
        public string objetivo { get; set; }
        public string ProgramaGrupo { get; set; }
        public string urlLogo { get; set; }
        public string mision { get; set; }
        public string vision { get; set; }
        public string justificacion { get; set; }
        public string quienesSomos { get; set; }


        public Grupo_inve_semillero(string nombreGrupo, string siglas, string objetivo, string ProgramaGrupo, string urlLogo
            , string mision, string vision, string justificacion, string quinesSomos)
        {
            this.nombreGrupo = nombreGrupo;
            this.siglas = siglas;
            this.objetivo = objetivo;
        }

        public Grupo_inve_semillero()
        {

        }

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
    }
}