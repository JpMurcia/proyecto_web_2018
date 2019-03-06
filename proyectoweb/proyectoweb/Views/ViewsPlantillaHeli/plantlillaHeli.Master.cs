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

        grupo mod_grupo = new grupo();
        grupo_investigacion mod_gi = new grupo_investigacion();
        DataTable dtG;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                mod_gi.idGrupoInvestigacion = "111";
                dtG = mod_grupo.consultarGrupo(mod_gi);
                imagenContact.Src = dtG.Rows[0]["url_logo_grupo"].ToString();
                emailGrupo.Text = dtG.Rows[0]["email_grupo"].ToString();
                telefonoGrupo.Text = dtG.Rows[0]["telefo_grupo"].ToString();
                DirGrupo.Text = dtG.Rows[0]["direcc_grupo"].ToString();
            }

        }
    }
}