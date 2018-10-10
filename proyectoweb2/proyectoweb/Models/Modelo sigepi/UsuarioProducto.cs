using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModeloSigepi
{
    public class UsuarioProducto
    {
        public modelUsuario usuario { get; set; }
        public proyecto proyecto { get; set; }
        Conexion con =new Conexion();


        public UsuarioProducto(modelUsuario usuario, proyecto proyecto)
        {
            this.usuario = usuario;
            this.proyecto = proyecto;
        }

        public UsuarioProducto()
        {
        }
        
    }
}