﻿using proyectoweb.Controllers;
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
                b.idUsuario = datoRegreso.Rows[0]["usuari"].ToString();
                DataTable Consul_dato = controlador.Consultar(b);

                if (Consul_dato.Rows[0]["mensaje"].ToString() == "siii wey si existe :D")
                {

                   

                }
                else
                {

                    if (datoRegreso.Rows[0]["grupo"].ToString() == ("Lider"))
                    {

                        b.fk_tipo_user = "1";

                    }
                    else
                    {
                        b.fk_tipo_user = "2";


                    }

                    b.idUsuario = datoRegreso.Rows[0]["usuari"].ToString();
                    b.nom_usuario = datoRegreso.Rows[0]["nombreeee"].ToString();
                    b.url_foto_usuario = datoRegreso.Rows[0]["foto_perfil"].ToString();
                  

                    
                   

                    
                    DataTable CreandoUser = controlador.crearUsuario(b);

                    b.ToString();

                }

              //  DataTable dt = controlador.consultarGrupos(a);
                a.tipo = datoRegreso.Rows[0]["tipo"].ToString();
                //grupo.id_grupo = dt.Rows[0]["id_grupo"].ToString();
                //grupo.nombreGrupo= dt.Rows[0]["nom_grupo"].ToString();
                Session["nom"] = a.nombre;
                Session["contra"] = a.contrasena;
                Session["tipo"] = a.tipo;

                //Response.Redirect("principal.aspx");






            }
            else
            {
                

                ScriptManager.RegisterStartupScript(this, this.GetType(), "hwa", "modalError();", true);
              
            }


        }
    }
}