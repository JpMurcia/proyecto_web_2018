using proyectoweb.Models.ModelosViewGroup;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models.ModeloSigepi
{



    public class tipoUsuario
    {
        public string id { get; set; }
        public string nombre { get; set; }
        public plantilla plantilla { get; set; }

        public tipoUsuario(string id, string nombre)
        {
            this.id = id;
            this.nombre = nombre;
        }

        public tipoUsuario()
        {
        }

    }
}
