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
    public partial class Miembros : System.Web.UI.Page
    {


        private grupo_investigacion grupoVG = new grupo_investigacion();
        protected void Page_Load(object sender, EventArgs e)
        {
            llenar();
        }

        miebro_pag_Controller controlador = new miebro_pag_Controller();

        public void llenar( ) {
            grupoVG.idGrupoInvestigacion = Session["IdGrupo_pag"].ToString(); 

            DataTable dt = controlador.consultar_miembros(grupoVG);

            RepeaterMiembroPag.DataSource = dt;
            RepeaterMiembroPag.DataBind();

            string hola = "hola";


        }
    }
}