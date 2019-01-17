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
        private modelUsuario usuario = new modelUsuario();
        private usuario usuario1 = new usuario();

        public loginController()
        {
        }

        public DataTable iniciarSesion(modelUsuario usu)
        {
            return usuario.validarUsuario(usu);
        }
        public DataTable crearUsuario(usuario usu)
        {
            return usuario1.crearUsuario(usu);
        }
    }
}