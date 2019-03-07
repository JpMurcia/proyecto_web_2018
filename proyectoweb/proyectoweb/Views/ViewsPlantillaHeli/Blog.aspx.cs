using proyectoweb.Controllers;
using proyectoweb.Models.ModelosViewGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using proyectoweb.Controllers;
using proyectoweb.Models.ModelosViewGroup;
using System.Data;

namespace proyectoweb.Views.ViewsPlantillaHeli
{
    public partial class Blog : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            llenar();
        }
        BlogControllers controlador = new BlogControllers();

       proyecto proyec = new proyecto();
        grupo_investigacion grupoVG = new grupo_investigacion();
        soporta noticia = new soporta();
        public void llenar() {
           
            //  proyec.fk_grupo = Session["id_grupo"].ToString();
            grupoVG.idGrupoInvestigacion="111";
            noticia.id_grupo = Session["IdGrupo_pag"].ToString(); 
            //DataTable dt = controlador.consultarProyectoActController(grupoVG);
            //DataTable dt2 = controlador.consultarProyectoInacController(grupoVG);

            DataTable dt2 = controlador.consulNoticias(noticia);
            string hola = "hola";
            //Fecha.Text = dt2.Rows[0]["Fecha_publica"].ToString();
            //nom_proye_relac.Text = dt2.Rows[0]["nom_proyecto"].ToString();
            //img_noticia.Src = dt2.Rows[0]["url_imagene"].ToString();
            //nom_noticia.Text = dt2.Rows[0]["titulo_soporte"].ToString();
            //pre_Noticia.Text = dt2.Rows[0]["descrip_soperte"].ToString();

            RepeaterNoticia.DataSource = dt2;
            RepeaterNoticia.DataBind();


            RepeaterNoticiaCostado.DataSource = dt2;
            RepeaterNoticiaCostado.DataBind();






        }
    }
}