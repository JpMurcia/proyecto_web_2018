using proyectoweb.Models.ModeloSigepi;
using proyectoweb.Models.ModelosViewGroup;
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
        public DataTable consultarsemilleroController(Grupo_inve_semillero group)
        {
            return grupo.consultarsemilleroModel(group);
        }

        public DataTable consultarmiembroController(Grupo_inve_semillero group)
        {
            return grupo.consultarMiembros(group);
        }

        public DataTable consultarProyectoActController(Grupo_inve_semillero group)
        {
            return grupo.consultarProyectoAct(group);
        }

        public DataTable consultarProyectoInacController(Grupo_inve_semillero group)
        {
            return grupo.consultarProyectoInac(group);
        }
    }
}