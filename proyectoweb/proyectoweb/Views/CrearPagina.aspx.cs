using System;
using System.Collections.Generic;
using System.IO;
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
            llenar();
        }



        public void llenar() {


            //Image1.ImageUrl = Session["url_logo"].ToString();



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