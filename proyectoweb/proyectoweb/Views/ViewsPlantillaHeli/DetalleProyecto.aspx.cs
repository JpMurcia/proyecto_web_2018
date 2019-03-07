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
    public partial class DetalleProyecto : System.Web.UI.Page
    {

        grupo mod_grupo = new grupo();
        grupo_investigacion mod_gi = new grupo_investigacion();
        Pagina_Heli_MasterController paginaController = new Pagina_Heli_MasterController();
        proyecto proyecto = new proyecto();
        DataTable DT_Grupo;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                llenar();
            }
        }


        public void llenar()
        {
          //string hola=  
            proyecto.idproyect= Request.QueryString["IdProyecto"].ToString();
            DT_Grupo = paginaController.consultarProyecto(proyecto);
            NombreProyecto.Text= DT_Grupo.Rows[0]["nom_proyecto"].ToString();
            DescripcionProyecto.Text = DT_Grupo.Rows[0]["proyecto_descrip"].ToString();
            ImagenProyecto.ImageUrl= DT_Grupo.Rows[0]["url_image_proyec"].ToString();
        }
    }
}