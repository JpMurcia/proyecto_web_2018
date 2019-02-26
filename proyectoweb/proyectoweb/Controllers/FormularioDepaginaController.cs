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

        private grupo_investigacion grupovg = new grupo_investigacion();

        private modelUsuario miembro = new modelUsuario();

        private usuario usur = new usuario();
        
       


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

        public DataTable consultarProyectoActController(grupo_investigacion grupo)
        {
            return grupovg.consultarproductos(grupo);
        }

        public DataTable consultarProyectoInacController(grupo_investigacion grupo)
        {
            return grupovg.consultarProyectoInac(grupo);
        }

        //public DataTable consultarProyectoDeMiembroController(modelUsuario user)
        //{
        //    return miembro.consultarProyecto(user);
        //}

        public DataTable consultarProyectoDeMiembroController(usuario user)
        {
            return usur.consultarProyectodeMiembro(user);
        }
    }
}