using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoweb.Views
{
    public partial class principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void verGiecom_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormularioDePagina2.aspx?grupo=giecom");
        }

        protected void verSara_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormularioDePagina2.aspx?grupo=sara");
        }

        protected void verPicardie_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormularioDePagina2.aspx?grupo=picardie");
        }
    }
}