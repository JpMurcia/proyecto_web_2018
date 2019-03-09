using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using proyectoweb.Controllers;
using proyectoweb.Models.Modelo_viewGroup;
using proyectoweb.Models.ModeloSigepi;
using proyectoweb.Models.ModelosViewGroup;
using System.Data;


namespace proyectoweb.Views.ViewsPlantillaHeli
{
    public partial class Index : System.Web.UI.Page
    {
        grupo mod_grupo = new grupo();
        grupo_investigacion mod_gi = new grupo_investigacion();
        DataTable DT_Grupo;
        soporta noticia = new soporta();
        NoticiaController nt = new NoticiaController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                llenarInfo();
                llenarNoticias();
                
                llenarProyectos();
                
            }

        }

        public void llenarInfo()
        {
            //mod_gi.idGrupoInvestigacion = Session["IdGrupo_pag"].ToString();
            //mod_gi.idGrupoInvestigacion = Request.QueryString["IdGrupo"].ToString();
            
            try
            {
                if (Session["IdGrupo_pag"].ToString().Equals(""))
                {
                    Session["IdGrupo_pag"] = mod_gi.idGrupoInvestigacion.ToString();
                }
            }
            catch (Exception)
            {
                Session["IdGrupo_pag"] = Request.QueryString["IdGrupo"].ToString();
                // expected output: ReferenceError: nonExistentFunction is not defined
                // Note - error messages will vary depending on browser
            }
          //  Session["IdGrupo_pag"] = Request.QueryString["IdGrupo"].ToString();
            // Session["IdGrupo_pag"] = Request.QueryString["IdGrupo"].ToString();
            mod_gi.idGrupoInvestigacion= Session["IdGrupo_pag"].ToString();

            //mod_gi.idGrupoInvestigacion ="111";
            DT_Grupo = mod_grupo.consultarGrupo(mod_gi);
            Label_Somos.Text = DT_Grupo.Rows[0]["nom_grupo"].ToString();
            Label_Somos_Desc.Text = DT_Grupo.Rows[0]["quien_somos_grupo"].ToString();


        }

        public void llenarProyectos()
        {
            // mod_gi.idGrupoInvestigacion = Session["IdGrupo_pag"].ToString();
            mod_gi.idGrupoInvestigacion = Session["IdGrupo_pag"].ToString();
            //mod_gi.idGrupoInvestigacion = "111";
            DT_Grupo = mod_grupo.consultarProyectosAct(mod_gi);
            Repeater1.DataSource = DT_Grupo;
            Repeater1.DataBind();

        }

        public void llenarNoticias(){
            noticia.id_grupo = Session["IdGrupo_pag"].ToString();
            //noticia.id_grupo = Session["IdGrupo_pag"].ToString();
            //noticia.id_grupo = "111";
            DT_Grupo = nt.consulNoticias(noticia);
            Repeater2.DataSource = DT_Grupo;
            Repeater2.DataBind();

        }
    }
}