﻿using System;
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

        protected void verGiecom_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["tipo"].ToString() == "1")
                {
                    Response.Redirect("FormularioDePagina1.aspx?grupo=giecom");
                }
                else {


                }

                
            }
            catch (Exception ex)
            {
                
                ScriptManager.RegisterStartupScript(this, this.GetType(), "hwa", "modalError();", true);
                // Extract some information from this exception, and then 
                
            }
            
        }

       
    }
}