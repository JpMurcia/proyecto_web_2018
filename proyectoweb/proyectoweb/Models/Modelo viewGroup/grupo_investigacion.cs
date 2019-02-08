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
        public string url_imagen { get; set; }
        public Boolean estado { get; set; }
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
    }
}