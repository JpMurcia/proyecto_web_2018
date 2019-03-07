using proyectoweb.Controllers;
using proyectoweb.Models.ModelosViewGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoweb.Views.ViewsPlantillaHeli
{
    public partial class DetalleNoticia : System.Web.UI.Page
    {

        soporta notici = new soporta();
        NoticiaController controlador = new NoticiaController();
        DataTable dt2 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            llenarNoticia();
        }

        public void llenarNoticia()
        {


            //notici.idSoporte = Convert.ToString(Request.QueryString["Id"]);
            notici.idSoporte = Request.QueryString["IdNoticia"].ToString();
            DataTable dt1 = controlador.consulNoticiaDatos(notici);
           NombreNoticia.Text = dt1.Rows[0]["titulo_soporte"].ToString();
           DescNoticia.Text = dt1.Rows[0]["descrip_soperte"].ToString();
            ImagenNoticia.ImageUrl = dt1.Rows[0]["url_imagene"].ToString();
            fecha.Text= dt1.Rows[0]["Fecha_publica"].ToString();
        }
    }
}