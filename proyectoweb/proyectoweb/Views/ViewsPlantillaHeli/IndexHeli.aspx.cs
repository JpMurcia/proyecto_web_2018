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

        Grupo_inve_semillero grupo = new Grupo_inve_semillero();
        //Grupo_inve_semillero semillero = new Grupo_inve_semillero();
        grupo_investigacion grupoVG = new grupo_investigacion();
        grupo_investigacion semillero = new grupo_investigacion();
        modelUsuario user = new modelUsuario();
        usuario user1 = new usuario();
        Models.ModelosViewGroup.proyecto proyec = new Models.ModelosViewGroup.proyecto();
        FormularioDepaginaController controlador = new FormularioDepaginaController();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


            }

        }

        public void llenarDatos()
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }
        protected void LeerNoticia_Click(object sender, EventArgs e)
        {

        }
    }
}