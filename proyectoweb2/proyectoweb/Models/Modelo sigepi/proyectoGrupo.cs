using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModeloSigepi
{
    public class proyectoGrupo
    {
        public proyecto proyecto { get; set; }
        public Grupo_inve_semillero grupoInvestigacion { get; set; }
    }
}