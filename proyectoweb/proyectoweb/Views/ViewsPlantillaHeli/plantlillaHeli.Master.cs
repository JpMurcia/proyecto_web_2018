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
                mod_gi.idGrupoInvestigacion = Request.QueryString["IdGrupo"].ToString();
              //  mod_gi.idGrupoInvestigacion = "111";
                dtG = mod_grupo.consultarGrupo(mod_gi);
                imagenContact.Src = dtG.Rows[0]["url_logo_grupo"].ToString();
                emailGrupo.Text = dtG.Rows[0]["email_grupo"].ToString();
                telefonoGrupo.Text = dtG.Rows[0]["telefo_grupo"].ToString();
                DirGrupo.Text = dtG.Rows[0]["direcc_grupo"].ToString();
                DataTable dt = controlador.consultarsemilleroControllerVG(mod_gi);
                string hola = "";
                SemilleroMenu.DataSource = dt;
                SemilleroMenu.DataBind();




            }

        }
    }
}