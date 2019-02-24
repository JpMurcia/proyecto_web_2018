using proyectoweb.Models.ModeloSigepi;
using proyectoweb.Models.ModelosViewGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Controllers
{
    public class loginController
    {
        private modelUsuario usuarioSigepi = new modelUsuario();

        private Grupo_inve_semillero grupoSigepi = new Grupo_inve_semillero();

        private grupo_investigacion grupoVG = new grupo_investigacion();
        private usuario usuarioVG = new usuario();

        //private proyecto proyec = new proyecto();

        public loginController()
        {
        }

        public DataTable Consultar(usuario usu)
        {
            return usuarioVG.ConsultarUser(usu);
        }

        public DataTable iniciarSesion(modelUsuario usu)
        {
            return usuarioSigepi.validarUsuario(usu);
        }

        public DataTable crearUsuario(usuario usu)
        {
            return usuarioVG.crearUsuario(usu);
        }

        public DataTable consultarInforGrupo(Grupo_inve_semillero grup) {

            return grupoSigepi.consultargrupoModel(grup);

        }
        public DataTable crear_grupo(grupo_investigacion grup)
        {

            return grupoVG.Crear_grupo(grup);

        }

        public DataTable consultarInfoSemillero(Grupo_inve_semillero grup)
        {

            return grupoSigepi.consultarsemilleroModel(grup);

        }

        public DataTable crear_semillero(grupo_investigacion grup)
        {

            return grupoVG.Crear_grupo(grup);

        }

        public DataTable consultarInfoProyecto(Grupo_inve_semillero grup)
        {

            return grupoSigepi.consultarProyecto(grup);

        }

        public DataTable crear_proyecto(grupo_investigacion grup)
        {

            return grupoVG.Crear_grupo(grup);

        }

    }
}