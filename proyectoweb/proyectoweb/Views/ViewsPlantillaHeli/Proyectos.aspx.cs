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
    public partial class Proyectos : System.Web.UI.Page
    {
        grupo mod_grupo = new grupo();
        grupo_investigacion mod_gi = new grupo_investigacion();
        DataTable DT_Grupo;
        protected void Page_Load(object sender, EventArgs e)
        {
            llenarProyectos();
        }

        public void llenarProyectos()
        {
            mod_gi.idGrupoInvestigacion = Session["IdGrupo_pag"].ToString(); 
            DT_Grupo = mod_grupo.consultarProyectosAct(mod_gi);
            Repeater3.DataSource = DT_Grupo;
            Repeater3.DataBind();

        }
    }
}