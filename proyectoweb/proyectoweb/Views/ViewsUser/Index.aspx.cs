using proyectoweb.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoweb.Views.ViewsUser
{
    public partial class Index : System.Web.UI.Page
    {
        indexController controlador = new indexController();

        protected void Page_Load(object sender, EventArgs e)
        {
            llenar();
        }

        //public DataTable cosultarA()
        //{

        //    return activy.consul_acti(act);
        //}

        DataTable dt = new DataTable();
        DataTable dt2 = new DataTable();

        public void llenar() {

            dt = controlador.dato_pag();
            dt2 = controlador.dato_view_pag_web();
            RepeaterPaginas.DataSource = dt2;
            RepeaterPaginas.DataBind();
            string hola = "fdsf";
            //
            
        }
    }
}