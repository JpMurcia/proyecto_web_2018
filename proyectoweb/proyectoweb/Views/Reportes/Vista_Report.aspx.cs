﻿using proyectoweb.Controllers;
using proyectoweb.Models.conexion;
using proyectoweb.Models.ModelosViewGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoweb.Views.Reportes
{
    public partial class Vista_Report : System.Web.UI.Page
    {
          
        grupo_investigacion grupovg = new grupo_investigacion();
        NoticiaController control = new NoticiaController();
        soporta noticia = new soporta();

        protected void Page_Load(object sender, EventArgs e)
        {
           
             Conexion conect = new Conexion();

            noticia.id_grupo = "111";

            DataTable dt1 = control.consulNoticias(noticia);
            Reportes.reportNoticia objR = new Reportes.reportNoticia();

            objR.SetDataSource(dt1);
            CrystalReportViewer1.ReportSource = objR;
            CrystalReportViewer1.Width = 800;
            CrystalReportViewer1.Height = 800;




        }

        

    }
}