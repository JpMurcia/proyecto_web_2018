using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using proyectoweb.Models.ModeloSigepi;

namespace proyectoweb.Views
{
    public partial class FormularioDePagina2 : System.Web.UI.Page
    {
        Grupo_inve_semillero grupo = new Grupo_inve_semillero();
        protected void Page_Load(object sender, EventArgs e)
        {
            //llenarDatos();

        }

        public void llenarDatos()
        {
            grupo.nombreGrupo = Request.QueryString["grupo"];
            Console.Write("epa hijuemadre");
            DataTable dt = grupo.consultargrupoModel(grupo);
            if (dt.Rows.Count>0)
            {
                grupo.justificacion = dt.Rows[0]["justif_grupo"].ToString();
                grupo.mision = dt.Rows[0]["mision_grupo"].ToString();
                grupo.objetivo = dt.Rows[0]["objetivo_grupo"].ToString();
                grupo.ProgramaGrupo = dt.Rows[0]["programa_grupo"].ToString();
                grupo.quienesSomos = dt.Rows[0]["quien_somos_grupo"].ToString();
                grupo.siglas = dt.Rows[0]["sigla_signif_grupo"].ToString();
                grupo.urlLogo = dt.Rows[0]["url_logo_grupo"].ToString();
                grupo.vision = dt.Rows[0]["vision_grupo"].ToString();

                Console.Write("epa hijuemadre");

                nombreGrupo.Text = grupo.nombreGrupo;
                Justificacion.Text = grupo.justificacion;
                Mision.Text = grupo.mision;
                Objetivo.Text = grupo.objetivo;
                programa.Text = grupo.ProgramaGrupo;
                sigSiglas.Text = grupo.siglas;
                QuienSomos.Text = grupo.quienesSomos;
                imagenDeGrupo.Src = "../imagenes/grupos/" + grupo.urlLogo;
                Vision.Text = grupo.vision;
            }
            
            

        }
    }
}