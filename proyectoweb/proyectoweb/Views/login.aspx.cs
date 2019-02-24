using proyectoweb.Controllers;
using proyectoweb.Models.ModeloSigepi;
using proyectoweb.Models.ModelosViewGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace proyectoweb.Views
{
    public partial class login : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            usuario b = new usuario();
            modelUsuario a = new modelUsuario();
            Grupo_inve_semillero grupoSIGEPI = new Grupo_inve_semillero();
            grupo_investigacion grupoVG = new grupo_investigacion();
            grupo_investigacion Semillero = new grupo_investigacion();
            a.email_usuario = usuarioNombre.Text;
            a.contrasena = usuarioContrasena.Text;
            loginController controlador = new loginController();
            DataTable datoRegreso = controlador.iniciarSesion(a);



            if (datoRegreso.Rows[0]["mensaje"].ToString() == "bueeeeena perro")
            {

                if (datoRegreso.Rows[0]["es"].ToString() == ("Lider"))
                {


                    b.idUsuario = datoRegreso.Rows[0]["usuari"].ToString();

                    DataTable Consul_dato = controlador.Consultar(b);

                    if (Consul_dato.Rows[0]["mensaje"].ToString() == "siii wey si existe :D")
                    {



                    }
                    else
                    {


                        b.fk_tipo_user = datoRegreso.Rows[0]["tipo_user"].ToString();
                        b.idUsuario = datoRegreso.Rows[0]["usuari"].ToString();
                        b.nom_usuario = datoRegreso.Rows[0]["nombreeee"].ToString();
                        b.url_foto_usuario = datoRegreso.Rows[0]["foto_perfil"].ToString();
                        b.correo = datoRegreso.Rows[0]["correo"].ToString();

                        grupoSIGEPI.nombreGrupo = datoRegreso.Rows[0]["su_grupo"].ToString();
                        DataTable datos_grupo = controlador.consultarInforGrupo(grupoSIGEPI);


                        grupoVG.idGrupoInvestigacion = datos_grupo.Rows[0]["id_grupo"].ToString();
                        grupoVG.grupo_nombre = datos_grupo.Rows[0]["nom_grupo"].ToString();
                        grupoVG.siglas = datos_grupo.Rows[0]["sigla_signif_grupo"].ToString();
                        grupoVG.objetivo = datos_grupo.Rows[0]["objetivo_grupo"].ToString();

                        grupoVG.ProgramaGrupo = datos_grupo.Rows[0]["programa_grupo"].ToString();
                        grupoVG.mision = datos_grupo.Rows[0]["mision_grupo"].ToString();
                        grupoVG.vision = datos_grupo.Rows[0]["vision_grupo"].ToString();
                        grupoVG.justificacion = datos_grupo.Rows[0]["justif_grupo"].ToString();
                        grupoVG.quienesSomos = datos_grupo.Rows[0]["quien_somos_grupo"].ToString();
                        grupoVG.urlLogo = datos_grupo.Rows[0]["url_logo_grupo"].ToString();


                        DataTable crear_grupo = controlador.crear_grupo(grupoVG);

                        DataTable CreandoUser = controlador.crearUsuario(b);

                       

                      

                        DataTable dato_semillero = controlador.consultarInfoSemillero(grupoSIGEPI);



                        for (int i=0;i <dato_semillero.Rows.Count;i++) {

                            Semillero.idGrupoInvestigacion = dato_semillero.Rows[i]["id_grupo"].ToString();
                            Semillero.grupo_nombre = dato_semillero.Rows[i]["nom_grupo"].ToString();
                            Semillero.siglas = dato_semillero.Rows[i]["sigla_signif_grupo"].ToString();
                            Semillero.objetivo = dato_semillero.Rows[i]["objetivo_grupo"].ToString();

                            Semillero.ProgramaGrupo = dato_semillero.Rows[i]["programa_grupo"].ToString();
                            Semillero.mision = dato_semillero.Rows[i]["mision_grupo"].ToString();
                            Semillero.vision = dato_semillero.Rows[i]["vision_grupo"].ToString();
                            Semillero.justificacion = dato_semillero.Rows[i]["justif_grupo"].ToString();
                            Semillero.quienesSomos = dato_semillero.Rows[i]["quien_somos_grupo"].ToString();
                            Semillero.urlLogo = dato_semillero.Rows[i]["url_logo_grupo"].ToString();
                            Semillero.fk_id_grupo = grupoVG.idGrupoInvestigacion;

                            controlador.crear_semillero(Semillero);


                        }

                        DataTable dato_proyec = new DataTable();

                        dato_proyec = controlador.consultarInfoProyecto(grupoSIGEPI);

                        for (int i = 0; i < dato_proyec.Rows.Count; i++)
                        {
                         

                        }


                            //<>
                            b.ToString();

                    }
                    b.fk_tipo_user = "1";
                    //  DataTable dt = controlador.consultarGrupos(a);
                    //a.tipo = datoRegreso.Rows[0]["tipo"].ToString();
                    ////grupo.id_grupo = dt.Rows[0]["id_grupo"].ToString();
                    ////grupo.nombreGrupo= dt.Rows[0]["nom_grupo"].ToString();
                    //Session["nom"] = a.nombre;
                    //Session["contra"] = a.contrasena;
                    //Session["tipo"] = a.tipo;

                    Response.Redirect("principal.aspx");

                   

                }
                else
                {
                    b.fk_tipo_user = "2";


                }

             

             






            }
            else
            {
                

                ScriptManager.RegisterStartupScript(this, this.GetType(), "hwa", "modalError();", true);
              
            }


        }
    }
}