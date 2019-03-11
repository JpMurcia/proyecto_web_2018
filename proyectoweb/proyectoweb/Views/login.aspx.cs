using proyectoweb.Controllers;
using proyectoweb.Models.ModeloSigepi;
using proyectoweb.Models.ModelosViewGroup;
using proyectoweb.Models.Modelo_viewGroup;
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
        DataTable Consul_dato = new DataTable();
        protected void Unnamed_Click(object sender, EventArgs e)
        {
            usuario b = new usuario();//VG
            usuario miembro = new usuario();
            modelUsuario a = new modelUsuario();//SIGEPI
            Grupo_inve_semillero grupoSIGEPI = new Grupo_inve_semillero();
            grupo_investigacion grupoVG = new grupo_investigacion();
            grupo_investigacion Semillero = new grupo_investigacion();
            enlace enlaceVG = new enlace();
            Models.ModelosViewGroup.proyecto proyectoVG = new Models.ModelosViewGroup.proyecto();

            a.email_usuario = usuarioNombre.Text;
            a.contrasena = usuarioContrasena.Text;
            loginController controlador = new loginController();
            DataTable datoRegreso = controlador.iniciarSesion(a);
            //


            if (datoRegreso.Rows[0]["mensaje"].ToString() == "bueeeeena perro")
            {

                if (datoRegreso.Rows[0]["es"].ToString() == ("Lider"))
                {


                    b.idUsuario = datoRegreso.Rows[0]["usuari"].ToString();

                    Consul_dato = controlador.Consultar(b);

                    grupoVG.grupo_nombre = datoRegreso.Rows[0]["su_grupo"].ToString();
                    grupoVG.idGrupoInvestigacion= datoRegreso.Rows[0]["id_grupo"].ToString();


                    if (Consul_dato.Rows[0]["mensaje"].ToString() == "siii wey si existe :D")
                    {
                        b.fk_tipo_user = datoRegreso.Rows[0]["tipo_user"].ToString();
                        b.idUsuario = datoRegreso.Rows[0]["usuari"].ToString();
                        b.nom_usuario = datoRegreso.Rows[0]["nombreeee"].ToString();
                        b.url_foto_usuario = datoRegreso.Rows[0]["foto_perfil"].ToString();
                        b.correo = datoRegreso.Rows[0]["correo"].ToString();
                        Session["nom"] = b.nom_usuario;
                        //Session["contra"] = a.contrasena;
                        Session["tipo"] = b.fk_tipo_user;
                        Session["grupo"] = grupoVG.grupo_nombre;

                        grupoSIGEPI.nombreGrupo = datoRegreso.Rows[0]["su_grupo"].ToString();
                        DataTable datos_grupo = controlador.consultarInforGrupo(grupoSIGEPI);
                        
                        grupoVG.urlLogo = datos_grupo.Rows[0]["url_logo_grupo"].ToString();

                        Session["id_grupo"] = datos_grupo.Rows[0]["id_grupo"].ToString();
                        Session["id_grupo"] = grupoVG.idGrupoInvestigacion;
                        Session["url_logo"] = grupoVG.urlLogo;
                        Response.Redirect("principal.aspx");




                    }
                    else
                    {


                        b.fk_tipo_user = datoRegreso.Rows[0]["tipo_user"].ToString();
                        b.idUsuario = datoRegreso.Rows[0]["usuari"].ToString();
                        b.nom_usuario = datoRegreso.Rows[0]["nombreeee"].ToString();
                        b.url_foto_usuario = datoRegreso.Rows[0]["foto_perfil"].ToString();
                        b.correo = datoRegreso.Rows[0]["correo"].ToString();
                        b.programa = datoRegreso.Rows[0]["pro"].ToString();
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

                       
                        grupoSIGEPI.id_grupo= datoRegreso.Rows[0]["id_grupo"].ToString();


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
                        DataTable hola = new DataTable();
                        dato_proyec = controlador.consultarInfoProyecto(grupoSIGEPI);

                        for (int i = 0; i < dato_proyec.Rows.Count; i++)
                        {
                            proyectoVG.idproyect = dato_proyec.Rows[i]["id_proyecto"].ToString();
                            proyectoVG.nom_proyect = dato_proyec.Rows[i]["nom_proyecto"].ToString();
                            //  proyectoVG.fechaproye = Convert.ToDateTime(dato_proyec.Rows[i]["fecha_proyecto"]);
                            //proyectoVG.fechaproye = dato_proyec.Rows[i]["fecha_proyecto"].ToString();
                            proyectoVG.fechaproye = null;
                            proyectoVG.estado_proyec =  dato_proyec.Rows[i]["estado_proyecto"].ToString();
                            proyectoVG.fk_grupo = dato_proyec.Rows[i]["semi"].ToString();

                           hola =controlador.crear_proyecto(proyectoVG);
                        }

                        DataTable dato_miembros = new DataTable();

                        DataTable proyecto_trabajado = new DataTable();
                        dato_miembros = controlador.consultarInfoMiembros(grupoSIGEPI);
                        DataTable registrado_enlaces = new DataTable();

                        for (int i = 0; i < dato_miembros.Rows.Count; i++)
                        {
                            miembro.idUsuario = dato_miembros.Rows[i]["id_usuario"].ToString();
                            miembro.nom_usuario = dato_miembros.Rows[i]["nom_usuario"].ToString();
                            miembro.url_foto_usuario= dato_miembros.Rows[i]["url_foto_usuario"].ToString();
                            miembro.correo= dato_miembros.Rows[i]["email_usuario"].ToString();
                            miembro.fk_tipo_user = dato_miembros.Rows[i]["fk_tipo_usuario"].ToString();
                            miembro.programa = dato_miembros.Rows[i]["Programa"].ToString();
                            miembro.grupo = grupoVG.idGrupoInvestigacion.ToString();


                            controlador.crearUsuario(miembro);

                            proyecto_trabajado = controlador.consultarInfoProyecMiembros(miembro);

                            for (int j = 0; j < proyecto_trabajado.Rows.Count; j++)
                            {
                                enlaceVG.tipo = proyecto_trabajado.Rows[j]["cargo"].ToString();
                                enlaceVG.identificador = proyecto_trabajado.Rows[j]["identificador"].ToString();

                                enlaceVG.id_user = miembro.idUsuario.ToString();
                                

                                registrado_enlaces = controlador.create_dato_enlace(enlaceVG);
                            }


                        }

                       // b.fk_tipo_user = datoRegreso.Rows[0]["tipo_user"].ToString();
                       
                        enlaceVG.tipo = b.fk_tipo_user.ToString();
                        enlaceVG.identificador = grupoVG.idGrupoInvestigacion.ToString();

                        enlaceVG.id_user = b.idUsuario.ToString();
                        hola = controlador.create_dato_enlace(enlaceVG);
                        //<>
                        b.ToString();

                    }
                    
                    //  DataTable dt = controlador.consultarGrupos(a);
                    //a.tipo = datoRegreso.Rows[0]["tipo"].ToString();
                    ////grupo.id_grupo = dt.Rows[0]["id_grupo"].ToString();
                    ////grupo.nombreGrupo= dt.Rows[0]["nom_grupo"].ToString();
                    Session["nom"] = b.nom_usuario;
                    //Session["contra"] = a.contrasena;
                    Session["tipo"] = b.fk_tipo_user;
                    Session["grupo"] = grupoVG.grupo_nombre;
                    Session["id_grupo"] = grupoVG.idGrupoInvestigacion;

                    Session["url_logo"] = grupoVG.urlLogo;

                    Response.Redirect("principal.aspx");
                    



                }
                else
                {
                    b.idUsuario = datoRegreso.Rows[0]["usuari"].ToString();






                    Consul_dato = controlador.Consultar(b);


                    Session["tipo"] = Consul_dato.Rows[0]["idtipo"].ToString();
                    Session["nomtipo"] = Consul_dato.Rows[0]["tipo"].ToString();

                    if (Session["nomtipo"].ToString().Equals( "Super aministrador"))
                    {

                        Response.Redirect("principal.aspx");

                    }
                    else {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "hwa", "modalError();", true);
                    }

                       
                   

                    
                }

             

             






            }
            else
            {
                

                ScriptManager.RegisterStartupScript(this, this.GetType(), "hwa", "modalError();", true);
              
            }


        }
    }
}