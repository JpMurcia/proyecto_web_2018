using proyectoweb.Models.ModeloSigepi;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Controllers
{
    public class FormularioDepaginaController
    {
        private Grupo_inve_semillero grupo = new Grupo_inve_semillero();

        public FormularioDepaginaController()
        {
        }

        public DataTable consultarGrupoController(Grupo_inve_semillero group)
        {
            return grupo.consultargrupoModel(group);
        }
    }
}