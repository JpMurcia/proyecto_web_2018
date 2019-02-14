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
        private usuario usuarioVG = new usuario();

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

        public DataTable consultarGrupos(modelUsuario usu) {

            return usuarioSigepi.consultarProyecto(usu);

        }

    }
}