using proyectoweb.Controllers;
using proyectoweb.Models.Modelo_viewGroup;
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
    public partial class FormularioDePagina1 : System.Web.UI.Page
    {
        Grupo_inve_semillero grupo = new Grupo_inve_semillero();
        //Grupo_inve_semillero semillero = new Grupo_inve_semillero();
        grupo_investigacion grupoVG = new grupo_investigacion();
        grupo_investigacion semillero = new grupo_investigacion();
        modelUsuario user = new modelUsuario();
        usuario user1 = new usuario();
        Models.ModelosViewGroup.proyecto proyec = new Models.ModelosViewGroup.proyecto();
        enlace enlace1 = new enlace();
        FormularioDepaginaController controlador = new FormularioDepaginaController();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (string.IsNullOrEmpty(Session["tipo"] as string))
                {

                    //Some Stuff to initialize the variable
                    Response.Redirect("Error404.aspx");

                }
                else
                {
                    if ((Session["tipo"].Equals("1")) || (Session["tipo"].Equals("5")))
                    {

                        llenarDatos();
                    }
                    else
                    {
                        Response.Redirect("Error404.aspx");
                    }

                }
            }
            

        }
        DataTable hola = new DataTable();

        DataTable hola3 = new DataTable();
        protected void Unnamed_Click(object sender, EventArgs e)
        {
            grupoVG.idGrupoInvestigacion = Session["id_grupo"].ToString();






            grupoVG.siglas = sigSiglas.Text;
            grupoVG.mision = Mision.Text;
            grupoVG.vision = Vision.Text;
            grupoVG.justificacion = Justificacion.Text;
            grupoVG.correo =CorreoGrupo.Text;
            grupoVG.telefono = TelefonoGrupo.Text;
            grupoVG.direccion = DireccionGrupo.Text;
       
                   
          
            
          //  imagenDeGrupo.Src = "../imagenes/grupos/" + grupo.urlLogo;
            // grupoVG.correo
         
            hola = controlador.update_grupo(grupoVG);

            for (int i = 0; i < Repeater1.Items.Count; i++)
            {
               
                HiddenField hf1 = (HiddenField)Repeater1.Items[i].FindControl("Semillero_id");//identificador 
                                                                                              // HiddenField hf2 = (HiddenField)Repeater1.Items[i].FindControl("tipo");

                TextBox sig = (TextBox)Repeater1.Items[i].FindControl("siglaSemillero");

                TextBox obj = (TextBox)Repeater1.Items[i].FindControl("ObjetivoSemillero");

                TextBox mis = (TextBox)Repeater1.Items[i].FindControl("MisionSemiller");

                TextBox vis = (TextBox)Repeater1.Items[i].FindControl("VisionSemillero");


                TextBox jus = (TextBox)Repeater1.Items[i].FindControl("JustificacionSemillero");

                TextBox qui = (TextBox)Repeater1.Items[i].FindControl("QuinesSomosSemillero");

                // CheckBox chk = (CheckBox)InnerRepeater.Items[i].FindControl("Semillero_id");



                semillero.idGrupoInvestigacion = hf1.Value.ToString();

                semillero.siglas = sig.Text;

                semillero.objetivo = obj.Text;

                semillero.mision = mis.Text;

                semillero.vision = vis.Text;

                semillero.justificacion = jus.Text;

                semillero.quienesSomos = qui.Text;

                
               
                // enlace1.estado = chk.Checked.ToString();
                // enlace1.id_user = ViewState["id_user"].ToString();




                 hola3 = controlador.update_grupo(semillero);

            }

            string hola23 = "1";

            Response.Redirect("principal.aspx");

        }






        public void llenarDatos()
        {
            //  grupo.nombreGrupo = Request.QueryString["grupo"];

            grupo.nombreGrupo = Session["grupo"].ToString();
            grupoVG.grupo_nombre = Session["grupo"].ToString();
            grupoVG.idGrupoInvestigacion = Session["id_grupo"].ToString();

            Console.Write("epa hijuemadre");




            DataTable dt = controlador.consultarGrupoController(grupo);

            //semillero.nombreGrupo = Request.QueryString["grupo"];


            DataTable dt2 = controlador.consultarsemilleroControllerVG(grupoVG);

            DataTable dt3 = controlador.consultarmiembroController(grupo);

            DataTable dt4 = controlador.consultarProyectoActController(grupoVG);

            DataTable dt5 = controlador.consultarProyectoInacController(grupoVG);

            // 


            // Repeater1.Items



            Repeater1.DataSource = dt2;
            Repeater1.DataBind();

            RepeaterMiembro.DataSource = dt3;
            RepeaterMiembro.DataBind();

            RepeaterInacti.DataSource = dt5;
            RepeaterInacti.DataBind();

            RepeaterActivo.DataSource = dt4;
            RepeaterActivo.DataBind();

            //List<string> lista = new List<string>();

            //foreach (RepeaterItem Item in RepeaterInacti.Items)
            //{
            //    DropDownList ddlist = (DropDownList)Item.FindControl("DropDownList1");
            //    lista.Add(ddlist.SelectedItem.ToString());
            //}

            

            grupo.justificacion = dt.Rows[0]["justif_grupo"].ToString();
            grupo.mision = dt.Rows[0]["mision_grupo"].ToString();
            grupo.objetivo = dt.Rows[0]["objetivo_grupo"].ToString();
            grupo.ProgramaGrupo = dt.Rows[0]["programa_grupo"].ToString();
            grupo.quienesSomos = dt.Rows[0]["quien_somos_grupo"].ToString();
            grupo.siglas = dt.Rows[0]["sigla_signif_grupo"].ToString();
            grupo.urlLogo = dt.Rows[0]["url_logo_grupo"].ToString();
            grupo.vision = dt.Rows[0]["vision_grupo"].ToString();

            if (dt.Rows[0]["objetivo_grupo"].Equals(null))
            {

                object hola = Objetivo.SupportsDisabledAttribute;
                sigSiglas.Attributes.Add("disabled=", "disabled");
            }
            else
            {

               // \"collapse\"
                Objetivo.Text = grupo.objetivo;
                object hola = Objetivo.SupportsDisabledAttribute;
                object hola2 = Objetivo.HasAttributes.ToString();
                //Objetivo.Disposed = 1;

            }
           
            nombreGrupo.Text = grupo.nombreGrupo;
          
            sigSiglas.Text = grupo.siglas;
            Mision.Text = grupo.mision;
            Vision.Text = grupo.vision;
            Justificacion.Text = grupo.justificacion;
            QuienSomos.Text = grupo.quienesSomos;
            programa.Text = grupo.ProgramaGrupo;
            imagenDeGrupo.Src = "../imagenes/grupos/" + grupo.urlLogo;



        }

        protected void Button_Miembro(object sender, EventArgs e)
        {
        
            for (int i = 0; i < InnerRepeater.Items.Count; i++)
            {
                // InnerRepeater.Items[i].FindControl("estado") identificador
                // string id = ()InnerRepeater.Items[i].FindControl("estado");
                HiddenField hf1 = (HiddenField)InnerRepeater.Items[i].FindControl("ide");//identificador 
                HiddenField hf2 = (HiddenField)InnerRepeater.Items[i].FindControl("tipo");
               
                CheckBox chk = (CheckBox)InnerRepeater.Items[i].FindControl("estado");

                enlace1.tipo = hf2.Value.ToString();
                
                enlace1.identificador = hf1.Value.ToString();
                enlace1.estado = chk.Checked.ToString();
                enlace1.id_user =  ViewState["id_user"].ToString() ;

                DataTable hola = controlador.update_enlace(enlace1);


               
            }
            string hola1 = "dd";
        }


        protected void Modal_Command1(object sender, CommandEventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "$('#modal-datos').modal('show');", true);

            user1.fk_grupo = Session["id_grupo"].ToString(); ;
            ViewState["id_user"] = e.CommandArgument.ToString();
            nom_usaurioMostrar.Text = user.nombre;
            // user.id = "24";
            user1.idUsuario = e.CommandArgument.ToString();
            DataTable dato_user_miemrbo = controlador.consul_data_user(user1);
            enlace1.id_user = user1.idUsuario.ToString();
            // object algo = Request.QueryString["iden"].ToString();
            
            nombre_miembro.Text = dato_user_miemrbo.Rows[0]["nom_usuario"].ToString();
            imagen_perfil.Src = "../imagenes/imagen_perfil/" + dato_user_miemrbo.Rows[0]["url_foto_usuario"].ToString();
            DataTable dt6 = controlador.consultarProyectoDeMiembroController(user1);
          

            InnerRepeater.DataSource = dt6;
            InnerRepeater.DataBind();

            
        }
    }
}