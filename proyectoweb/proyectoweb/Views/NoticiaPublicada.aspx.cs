using proyectoweb.Controllers;
using proyectoweb.Models.ModelosViewGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoweb.Views
{
    public partial class NoticiaPublicada : System.Web.UI.Page
    {

        soporta notici = new soporta();
        NoticiaController control = new NoticiaController();
        grupo_investigacion grupoVG = new grupo_investigacion();
        soporta noticia = new soporta();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarDatos();
            }
        }
    public void LlenarDatos() {

            noticia.id_grupo= Session["id_grupo"].ToString();
            DataTable dt1 = control.consulNoticias(noticia);
            RepeaterNoticia.DataSource = dt1;
            RepeaterNoticia.DataBind();
        }


        

        protected void EditarNoticia_Command(object sender, CommandEventArgs e)
        {
            noticia.idSoporte = e.CommandArgument.ToString();
            Session["actu_noticia"] = noticia.idSoporte;
            Response.Redirect("NoticiaNueva.aspx");
        }

        protected void EliminarNoticia_Command(object sender, CommandEventArgs e)
        {
            noticia.idSoporte = e.CommandArgument.ToString();
            DataTable dt1 = control.deleNoticias(noticia);
            Response.Redirect("NoticiaPublicada.aspx");
        }
    }
}