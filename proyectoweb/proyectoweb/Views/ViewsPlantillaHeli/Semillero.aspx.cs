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
    public partial class Semillero : System.Web.UI.Page
    {
        Pagina_Heli_MasterController controlador = new Pagina_Heli_MasterController();
        grupo_investigacion semillero = new grupo_investigacion();
        protected void Page_Load(object sender, EventArgs e)
        {
            llenar();
        }

        public void llenar()        {

            semillero.idGrupoInvestigacion = Request.QueryString["IdSemillero"].ToString();
            DataTable dt = controlador.consultarsemilleroDatos(semillero);

            if (dt.Rows[0]["objetivo_grupo"].ToString().Equals(""))
            {
                objetivoDiv.Visible = false;

            }
            else
            {

                objetivo.Text = dt.Rows[0]["objetivo_grupo"].ToString();
            }
            if (dt.Rows[0]["quien_somos_grupo"].ToString().Equals(""))
            {
                QuineSomosDiv.Visible = false;

            }
            else
            {
                QuinesSemillero.Text = dt.Rows[0]["quien_somos_grupo"].ToString();

            }
            if (dt.Rows[0]["mision_grupo"].ToString().Equals(""))
            {
                MisionDiv.Visible = false;

            }
            else
            {

                MisionSemillero.Text =dt.Rows[0]["mision_grupo"].ToString();
            }
            if (dt.Rows[0]["vision_grupo"].ToString().Equals(""))
            {
                VisionDiv.Visible = false;

            }
            else
            {

                VisionSemillero.Text = dt.Rows[0]["vision_grupo"].ToString();
            }
            if (dt.Rows[0]["justif_grupo"].ToString().Equals(""))
            {
                JustificacionDiv.Visible = false;

            }
            else
            {

                JustificacionSemillero.Text = dt.Rows[0]["justif_grupo"].ToString();
            }
            //
            ImagenSemillero.Src = "../"+dt.Rows[0]["url_logo_grupo"].ToString();

            string hola ="dsadd";
        }
    }
}