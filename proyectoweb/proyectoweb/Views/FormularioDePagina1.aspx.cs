using proyectoweb.Controllers;
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
        modelUsuario user = new modelUsuario();

        FormularioDepaginaController controlador = new FormularioDepaginaController();

        protected void Page_Load(object sender, EventArgs e)
        {
            llenarDatos();
        }

        protected void Unnamed_Click(object sender, EventArgs e) {

            Response.Redirect("principal.aspx");


        }


        protected void ventanitaclick(object sender, EventArgs e) {

           

           


        }
        


        public void llenarDatos()
        {
            grupo.nombreGrupo = Request.QueryString["grupo"];
            Console.Write("epa hijuemadre");

          


            DataTable dt = controlador.consultarGrupoController(grupo);

            semillero.nombreGrupo = Request.QueryString["grupo"];

            
            DataTable dt2 = controlador.consultarsemilleroController(grupo);

            DataTable dt3 = controlador.consultarmiembroController(grupo);

              DataTable dt4 = controlador.consultarProyectoActController(grupo);

            DataTable dt5 = controlador.consultarProyectoInacController(grupo);

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

            



        }

        protected void RepiterItem(object sender, RepeaterItemEventArgs e)
        {
            Repeater r = e.Item.FindControl("InnerRepeater") as Repeater;
            if (r != null)
            {
                user.grupo = Request.QueryString["grupo"];
                user.id = "11";
                sender.ToString();
                

                DataTable dt6 = controlador.consultarProyectoDeMiembroController(user);
                r.DataSource = dt6;
                r.DataBind();
            }
        }

    }
}