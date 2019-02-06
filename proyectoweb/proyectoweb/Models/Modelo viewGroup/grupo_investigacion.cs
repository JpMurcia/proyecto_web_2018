using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModelosViewGroup
{
    public class grupo_investigacion
    {
        public string idGrupoInvestigacion { get; set; }
        public string nom_grupo { get; set; }
        public string url_logo_grupo { get; set; }
        public string correo   { get; set; }
        public string direccion { get; set; }
        public Boolean estado{ get; set; }
        public grupo_investigacion fk_semillero { get; set; }

    }
}