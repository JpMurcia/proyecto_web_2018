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
    public partial class FormularioDePagina1 : System.Web.UI.Page
    {
        Grupo_inve_semillero grupo = new Grupo_inve_semillero();
        Grupo_inve_semillero semillero = new Grupo_inve_semillero();
        grupo_investigacion grupoVG = new grupo_investigacion();
        modelUsuario user = new modelUsuario();
        usuario user1 = new usuario();

        FormularioDepaginaController controlador = new FormularioDepaginaController();

        protected void Page_Load(object sender, EventArgs e)
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

        protected void Unnamed_Click(object sender, EventArgs e)
        {

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



            nombreGrupo.Text = grupo.nombreGrupo;
            Objetivo.Text = grupo.objetivo;
            sigSiglas.Text = grupo.siglas;
            Mision.Text = grupo.mision;
            Vision.Text = grupo.vision;
            Justificacion.Text = grupo.justificacion;
            QuienSomos.Text = grupo.quienesSomos;
            programa.Text = grupo.ProgramaGrupo;
            imagenDeGrupo.Src = "../imagenes/grupos/" + grupo.urlLogo;



        }

        //protected void RepiterItemCommand(object sender, RepeaterCommandEventArgs e)
        //{
        //    Repeater r = e.Item.FindControl("InnerRepeater") as Repeater;
        //    if (e.CommandName.Equals("botoModal"))
        //    {

        //        user.grupo = Request.QueryString["grupo"];

        //        // object algo = Session["proyemiembro"].ToString(); 
        //        user.id = "24";
        //        user.id = e.CommandArgument.ToString();


        //        // object algo = Request.QueryString["iden"].ToString();


        //         DataTable dt6 = controlador.consultarProyectoDeMiembroController(user);
        //      //  RepeaterMiembro.DataSource = dt6;
        //        //RepeaterMiembro.DataBind();
        //    }
        //}


        //protected void RepiterItem(object sender, RepeaterItemEventArgs e)
        //{
        //    Repeater r = e.Item.FindControl("InnerRepeater") as Repeater;
        //    if (r != null)
        //    {

        //        user.grupo = Request.QueryString["grupo"];
        //        //object algo = e.Item.ID;

        //        //object halgo = sender.GetType().;


        //        //algo.
        //        // object algo = Session["proyemiembro"].ToString(); 
        //        user.id = "24";
        //        //user.id = e.CommandArgument.ToString();

        //        // object algo = Request.QueryString["iden"].ToString();


        //        DataTable dt6 = controlador.consultarProyectoDeMiembroController(user);
        //        r.DataSource = dt6;
        //        r.DataBind();
        //    }
        //}

        protected void Modal_Command1(object sender, CommandEventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "$('#modal-datos').modal('show');", true);

            user1.fk_grupo = Session["id_grupo"].ToString(); ;

            nom_usaurioMostrar.Text = user.nombre;
            // user.id = "24";
            user1.idUsuario = e.CommandArgument.ToString();

            // object algo = Request.QueryString["iden"].ToString();


            DataTable dt6 = controlador.consultarProyectoDeMiembroController(user1);
            InnerRepeater.DataSource = dt6;
            InnerRepeater.DataBind();
        }
    }
}