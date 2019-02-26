using System;
using System.Collections.Generic;
using proyectoweb.Models.ModelosViewGroup;
using System.Linq;
using System.Web;
using System.Data;

namespace proyectoweb.Controllers
{
    public class ActividadController
    {
        private Actividad activy = new Actividad();


        public DataTable cosultarA(Actividad act)
        {

            return activy.consul_acti(act);
        }
        public DataTable crearA(Actividad act)
        {

            return activy.Crear(act);
        }

        public DataTable eliminarA(Actividad act)
        {

            return activy.eliminar_acti(act);
        }

        public DataTable updateA(Actividad act)
        {

            return activy.update_acti(act);
        }



    }
}