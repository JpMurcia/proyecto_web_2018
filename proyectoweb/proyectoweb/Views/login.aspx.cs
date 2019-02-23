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
            Grupo_inve_semillero grupo = new Grupo_inve_semillero();
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

                         grupo.nombreGrupo = datoRegreso.Rows[0]["su_grupo"].ToString();
                        DataTable datos_grupo = controlador.consultarInforGrupo(grupo);
                        grupo.id_grupo = datoRegreso.Rows[0]["id_grupo"].ToString();




                        DataTable CreandoUser = controlador.crearUsuario(b);

                        b.ToString();

                    }
                    b.fk_tipo_user = "1";
                    //  DataTable dt = controlador.consultarGrupos(a);
                    a.tipo = datoRegreso.Rows[0]["tipo"].ToString();
                    //grupo.id_grupo = dt.Rows[0]["id_grupo"].ToString();
                    //grupo.nombreGrupo= dt.Rows[0]["nom_grupo"].ToString();
                    Session["nom"] = a.nombre;
                    Session["contra"] = a.contrasena;
                    Session["tipo"] = a.tipo;

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