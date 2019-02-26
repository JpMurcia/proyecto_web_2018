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

        //private Grupo_inve_semillero grupo = new Grupo_inve_semillero();

        //private grupo_investigacion grupoVG = new grupo_investigacion();

        //private modelUsuario miembro = new modelUsuario();




        //public FormularioDepaginaController()
        //{

        //}

        //public DataTable consultarGrupoController(Grupo_inve_semillero group)
        //{
        //    return grupo.consultargrupoModel(group);
        //}

       


        //public DataTable consultarsemilleroController(Grupo_inve_semillero group)
        //{
        //    return grupo.consultarsemilleroModel(group);
        //}

        //public DataTable consultarmiembroController(Grupo_inve_semillero group)
        //{
        //    return grupo.consultarMiembros(group);
        //}

        //public DataTable consultarProyectoActController(Grupo_inve_semillero group)
        //{
        //    return grupo.consultarProyectoAct(group);
        //}

        //public DataTable consultarProyectoInacController(Grupo_inve_semillero group)
        //{
        //    return grupo.consultarProyectoInac(group);
        //}




        //public DataTable consultarProyectoDeMiembroController(modelUsuario user)
        //{
        //    return miembro.consultarProyecto(user);
        //}




        private Grupo_inve_semillero grupo = new Grupo_inve_semillero();

        private grupo_investigacion grupoVG = new grupo_investigacion();

        private modelUsuario miembro = new modelUsuario();

        private usuario usur = new usuario();


        public DataTable consultarsemilleroControllerVG(grupo_investigacion groupvg)
        {
            return grupoVG.consultarSemillero(groupvg);
        }

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
            return grupoVG.consultarproductos(grupo);
        }

        public DataTable consultarProyectoInacController(grupo_investigacion grupo)
        {
            return grupoVG.consultarProyectoInac(grupo);
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
 
