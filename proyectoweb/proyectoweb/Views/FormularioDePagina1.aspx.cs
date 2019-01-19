using proyectoweb.Models.ModeloSigepi;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoweb.Views
{
    public partial class FormularioDePagina1 : System.Web.UI.Page
    {
        Grupo_inve_semillero grupo = new Grupo_inve_semillero();
        Grupo_inve_semillero semillero = new Grupo_inve_semillero();
        protected void Page_Load(object sender, EventArgs e)
        {
            llenarDatos();
        }



        public void llenarDatos()
        {
            grupo.nombreGrupo = Request.QueryString["grupo"];
            Console.Write("epa hijuemadre");
            DataTable dt = grupo.consultargrupoModel(grupo);

            semillero.nombreGrupo = Request.QueryString["grupo"];
            DataTable dt2 = semillero.consultarsemilleroModel(semillero);

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
                Objetivo.Text = grupo.objetivo;
                sigSiglas.Text = grupo.siglas;
                Mision.Text = grupo.mision;
                Vision.Text = grupo.vision;
                Justificacion.Text = grupo.justificacion;
                QuienSomos.Text = grupo.quienesSomos;
                programa.Text = grupo.ProgramaGrupo;
                imagenDeGrupo.Src = "../imagenes/grupos/" + grupo.urlLogo;






                if (dt2.Rows.Count > 0) {
                    ////////////////////////////////////semilleros////////
                    for (int i=0; i < dt2.Rows.Count; i++) {
                        semillero.nombreGrupo = dt2.Rows[i]["nom_grupo"].ToString();
                        semillero.justificacion = dt2.Rows[i]["justif_grupo"].ToString();
                        semillero.mision = dt2.Rows[i]["mision_grupo"].ToString();
                        semillero.objetivo = dt2.Rows[i]["objetivo_grupo"].ToString();
                        semillero.ProgramaGrupo = dt2.Rows[i]["programa_grupo"].ToString();
                        semillero.quienesSomos = dt2.Rows[i]["quien_somos_grupo"].ToString();
                        semillero.siglas = dt2.Rows[i]["sigla_signif_grupo"].ToString();
                        semillero.urlLogo = dt2.Rows[i]["url_logo_grupo"].ToString();
                        semillero.vision = dt2.Rows[i]["vision_grupo"].ToString();

                        Console.Write("epa hijuemadre");

                        NombreSemillero.Text = semillero.nombreGrupo;
                        JustificacionSemillero.Text = semillero.justificacion;
                        MisionSemiller.Text = semillero.mision;
                        ObjetivoSemillero.Text = semillero.objetivo;
                        programa.Text = semillero.ProgramaGrupo;
                        siglaSemillero.Text = semillero.siglas;
                        QuinesSomosSemillero.Text = semillero.quienesSomos;
                        imagenDeSemillero.Src = "../imagenes/semilleros/" + semillero.urlLogo;
                        VisionSemillero.Text = semillero.vision;
                    }
                    

                }

                
            }
            
            

        }
    }
}