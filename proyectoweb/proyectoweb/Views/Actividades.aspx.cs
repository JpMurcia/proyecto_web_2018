using System;
using proyectoweb.Controllers;
using proyectoweb.Models.ModelosViewGroup;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace proyectoweb.Views
{
    public partial class Actividades : System.Web.UI.Page
    {
        Actividad actividades = new Actividad();
        ActividadController actividad = new ActividadController();
        protected void Page_Load(object sender, EventArgs e)
        {
            llenar();
        }

        void llenar()
        {
           
            actividades.fk_grupo = "1";
            ActividadController controlador = new ActividadController();
            DataTable datoRegreso = controlador.cosultarA(actividades);
            // DataTable datoRegreso = controlador.crearA(actividades);
            DataTable eliminarDato = controlador.eliminarA(actividades);
            DataTable actualizarDato = controlador.updateA(actividades);
            DataTable crearrDato = controlador.crearA(actividades);

        }

        public static string entra()
        {
            string hj = "jaja";
            return hj;
        }
    }
}