using proyectoweb.Models.Modelo_viewGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoweb.Views
{
    public partial class administracion : System.Web.UI.MasterPage
    {
        
        menu menuD = new menu();
        public DataTable dt;



        protected void Page_Load(object sender, EventArgs e)
        {
            llenarmenu();
        }

        public void llenarmenu() {
            
           // tipo_menu.pk_fk_tipo_usuario.id_tipo_usuario = "1";
           // tipo_menu.pk_fk_tipo_usuario.id_tipo_usuario = Session["tipo"].ToString();
           menuD.fk_rol= Session["tipo"].ToString();
            menuD.fk_rol = "1";
            dt = menuD.consultar_menu_nom(menuD);

            
            //menuD.nom_menu = dt.Rows[0]["nom_menu"].ToString();

            //RepeaterMenu.DataSource = dt;

            //RepeaterMenu.DataBind();




            // grupo.justificacion = dt.Rows[0]["justif_grupo"].ToString();
        }
    }
}