using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using proyectoweb.Controllers;
using proyectoweb.Models.ModelosViewGroup;
using System.Data;

namespace proyectoweb.Views.ViewsPlantillaHeli
{
    public partial class plantlillaHeli : System.Web.UI.MasterPage
    {
        Pagina_Heli_MasterController controlador = new Pagina_Heli_MasterController();
        grupo mod_grupo = new grupo();
        grupo_investigacion mod_gi = new grupo_investigacion();
        DataTable dtG;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //mod_gi.idGrupoInvestigacion = Request.QueryString["IdGrupo"].ToString();
                //  mod_gi.idGrupoInvestigacion = "111";
                //Session["IdGrupo_pag"] = mod_gi.idGrupoInvestigacion.ToString();
                mod_gi.idGrupoInvestigacion = Session["IdGrupo_pag"].ToString();
                dtG = mod_grupo.consultarGrupo(mod_gi);
                //imagenContact.Src = dtG.Rows[0]["url_logo_grupo"].ToString();
                emailGrupo.Text = dtG.Rows[0]["email_grupo"].ToString();
                telefonoGrupo.Text = dtG.Rows[0]["telefo_grupo"].ToString();
                DirGrupo.Text = dtG.Rows[0]["direcc_grupo"].ToString();
                //icono.ImageUrl= dtG.Rows[0]["url_logo_grupo"].ToString();

               // ImagenIcono.Src = "../" + dtG.Rows[0]["url_logo_grupo"].ToString();
                icono.ImageUrl = "../" + dtG.Rows[0]["url_logo_grupo"].ToString();
                //imagenContact.Src = "../" + dtG.Rows[0]["url_logo_grupo"].ToString();
                DataTable dt = controlador.consultarsemilleroControllerVG(mod_gi);
                SemilleroMenu.DataSource = dt;
                SemilleroMenu.DataBind();

               

            }

        }

        public void CerrarSesion(object sender, EventArgs e) {
            

            Session["IdGrupo_pag"] = "";

            string hola = Session["IdGrupo_pag"].ToString();
            Response.Redirect("../ViewsUser/Index.aspx");
        }

        protected void Unnamed_Command(object sender, CommandEventArgs e)
        {
            
        }
    }
}