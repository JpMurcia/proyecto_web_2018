using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using proyectoweb.Controllers;
using proyectoweb.Models.ModelosViewGroup;

namespace proyectoweb.Views.ViewsPlantillaHeli
{
    public partial class QuienesSomos : System.Web.UI.Page
    {
        grupo mod_grupo = new grupo();
        grupo_investigacion mod_gi = new grupo_investigacion();
        DataTable DT_Grupo;
        protected void Page_Load(object sender, EventArgs e)
        {
            string hola = Session["IdGrupo_pag"].ToString();
            mod_gi.idGrupoInvestigacion = Session["IdGrupo_pag"].ToString();
            DT_Grupo = mod_grupo.consultarGrupo(mod_gi);
            QuienesSomos_Titulo.Text = DT_Grupo.Rows[0]["nom_grupo"].ToString();

            if (DT_Grupo.Rows[0]["objetivo_grupo"].ToString().Equals(""))
            {
                objetivoDiv.Visible = false;

            }
            else {

                objetivo.Text = DT_Grupo.Rows[0]["objetivo_grupo"].ToString();
            }
             if (DT_Grupo.Rows[0]["quien_somos_grupo"].ToString().Equals(""))
            {
                quienesSomosDiv.Visible = false;

            }
            else {
                QuienesSomos_desc.Text = DT_Grupo.Rows[0]["quien_somos_grupo"].ToString();

            }
            if (DT_Grupo.Rows[0]["mision_grupo"].ToString().Equals(""))
            {
                misionDiv.Visible = false;

            }
            else
            {

                mision.Text = DT_Grupo.Rows[0]["mision_grupo"].ToString();
            }
            if (DT_Grupo.Rows[0]["vision_grupo"].ToString().Equals(""))
            {
                visionDiv.Visible = false;

            }
            else
            {

                vision.Text = DT_Grupo.Rows[0]["vision_grupo"].ToString();
            }
            if (DT_Grupo.Rows[0]["justif_grupo"].ToString().Equals(""))
            {
                justificacionDiv.Visible = false;

            }
            else
            {

                just.Text = DT_Grupo.Rows[0]["justif_grupo"].ToString();
            }

        }
        
    }
}