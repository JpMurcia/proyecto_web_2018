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
       // proyecto produc = new proyecto();
        grupo_investigacion grupovg = new grupo_investigacion();
        public void llenar_noticias() {

            NoticiaController controlador = new NoticiaController();

            grupovg.idGrupoInvestigacion = Session["id_grupo"].ToString();

            //  DropDownListProye
            DataTable dt = controlador.consultarProductos(grupovg);


            //DropDownListProye.DataTextField ="nom_proyecto";
            //DropDownListProye.DataValueField = "id_produc";
            //DropDownListProye.DataSource = controlador.consultarProductos(grupovg);
            //DropDownListProye.DataBind();

          //  DataTable dt = controlador.consultarProductos(grupovg);


           // DataTable dt2 = controlador.consultarSemillero(semillero);


            //RepeaterRoducto.DataSource = dt;
            //RepeaterRoducto.DataBind();

            //RepeaterMiembro.DataSource = dt2;
            //RepeaterMiembro.DataBind();


        }
    }
}