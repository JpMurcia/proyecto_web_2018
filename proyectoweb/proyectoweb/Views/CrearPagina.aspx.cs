using proyectoweb.Models.ModelosViewGroup;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoweb.Views
{
    public partial class CrearPagina : System.Web.UI.Page
    {
        grupo_investigacion grupoVG = new grupo_investigacion();

        protected void Page_Load(object sender, EventArgs e)
        {
            llenar();
        }



        public void llenar() {



            string hola = Session["url_logo"].ToString();

            string hola2 = Session["tipo"].ToString();
            //Session["tipo"] = b.fk_tipo_user;
            //Session["grupo"] = grupoVG.grupo_nombre;
            //Session["id_grupo"] = grupoVG.idGrupoInvestigacion;

          //  Session["url_logo"] = grupoVG.urlLogo;

            string hola3 = Session["grupo"].ToString();

            imagenGrupo.Src = Session["url_logo"].ToString();

            string hola4 = Session["tipo"].ToString(); 

          //  grupoVG.urlLogo = Session["url_logo"].ToString();
            //Image1.ImageUrl = Session["url_logo"].ToString();
            //imagenGrupo.Src = "../imagenes/grupos/" +grupoVG.urlLogo;
           


        }

        

        protected void ver(object sender, EventArgs e)
        {
            string hola = Session["tipo"].ToString();
            try
            {
               
                if (Session["tipo"].ToString().Equals("1"))
                {

                    Response.Redirect("FormularioDePagina1.aspx");
                    Response.Redirect("principal.aspx");
                }
                else
                {


                }


            }
            catch (Exception ex)
            {
                if (hola.Equals("1"))
                {
                    Response.Redirect("FormularioDePagina1.aspx");
                }
                else {
                    Response.Redirect("Error404.aspx");
                }
             
                Response.Redirect("principal.aspx");
              
               
                // Extract some information from this exception, and then 

            }

        }

    }
}