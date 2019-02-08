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
    public partial class Noticias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            llenar_noticias();
        }
        producto produc = new producto();
        grupo_investigacion semillero = new grupo_investigacion();
        public void llenar_noticias() {

            NoticiaController controlador = new NoticiaController();
            Session["grupo"] = "3";
            produc.fk_grupo= Session["grupo"].ToString();


            semillero.fk_id_grupo = Session["grupo"].ToString();

            DataTable dt = controlador.ConsultarProduc(produc);

            DataTable dt2 = controlador.consultarSemillero(semillero);


            RepeaterRoducto.DataSource = dt;
            RepeaterRoducto.DataBind();

            RepeaterMiembro.DataSource = dt2;
            RepeaterMiembro.DataBind();


        }
    }
}