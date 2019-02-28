﻿using proyectoweb.Controllers;
using proyectoweb.Models.ModelosViewGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoweb.Views
{
    public partial class Noticias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Request.Files["FileUpload"]!= null)
                {
                    HttpPostedFile MyFile = Request.Files["FileUpload"];

                    try
                    {

                    }
                    catch (Exception BlueScreen)
                    {
                        
                    }

                }

                if (Session["actu_noticia"] != null)
                {
                    Actualizar_Noticia();
                }
                else
                {
                    llenar_noticias();
                    Escribir();
                }

            }
            //if (Session["actu_noticia"]=null
            //{
            //llenar_noticias_neva()
            //Titulo.Text=
            //}

            //}
           


        }
        // proyecto produc = new proyecto();
        grupo_investigacion grupovg = new grupo_investigacion();
        soporta notici = new soporta();
        NoticiaController controlador = new NoticiaController();
        string filename;

        private void ResetFormControlValues(Control parent)
        {
            foreach (Control c in parent.Controls)
            {
                if (c.Controls.Count > 0)
                {
                    ResetFormControlValues(c);
                }
                else
                {
                    switch (c.GetType().ToString())
                    {
                        case "System.Web.UI.WebControls.TextBox":
                            ((TextBox)c).Text = "";
                            break;
                        case "System.Web.UI.WebControls.CheckBox":
                            ((CheckBox)c).Checked = false;
                            break;
                        case "System.Web.UI.WebControls.RadioButton":
                            ((RadioButton)c).Checked = false;
                            break;

                    }
                }
            }
        }

        public void llenar_noticias() {
            NoticiaController controlador = new NoticiaController();
            grupovg.idGrupoInvestigacion = Session["id_grupo"].ToString();
            DataTable dt = controlador.consultarProductos(grupovg);

            DDL_Proyectos.DataValueField = "id_produc";
            DDL_Proyectos.DataTextField = "nom_proyecto";
            DDL_Proyectos.DataSource = dt;
            DDL_Proyectos.DataBind();
        }

        public void Escribir()
        {
            NoticiaController controlador = new NoticiaController();
            grupovg.idGrupoInvestigacion = Session["id_grupo"].ToString();
            DataTable dt = controlador.consultarProductos(grupovg);
        }


        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (FileUpload.HasFile)
            {
                try
                {
                    filename = Path.GetFileName(FileUpload.FileName);

                    FileUpload.SaveAs(Server.MapPath("~/Soporte/") + filename);
                    
                }
                catch (Exception ex)
                {
                  }
            }
        }

        protected void enviar(object sender, EventArgs e)
        {
        }


        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            if (Session["actu_noticia"] != null)
            {
                DataTable dt2 = controlador.updateNoticias(notici);
                if (FileUpload.HasFile)
                {
                    ViewState["Ruta"] = "~/Content/Soporte/" + System.IO.Path.GetFileName(FileUpload.FileName);
                    FileUpload.SaveAs(Server.MapPath(ViewState["Ruta"].ToString()));
                    notici.urlImage = ViewState["Ruta"].ToString();
                }
                notici.titulo = Titulo.Text;
                notici.descrip = Descripcion.Text;
                notici.fk_proyec = DDL_Proyectos.SelectedValue;

            }
            else
            {
                if (FileUpload.HasFile)
                {
                    ViewState["Ruta"] = "~/Content/Soporte/" + System.IO.Path.GetFileName(FileUpload.FileName);
                    FileUpload.SaveAs(Server.MapPath(ViewState["Ruta"].ToString()));
                    notici.urlImage = ViewState["Ruta"].ToString();
                }
                notici.titulo = Titulo.Text;
                notici.descrip = Descripcion.Text;
                notici.fk_proyec = DDL_Proyectos.SelectedValue;
                DataTable dt = controlador.crearNoticias(notici);
                Titulo.Text = null;
                Descripcion.Text = null;
            }
           



        }

        public void Actualizar_Noticia()
        {
            notici.idSoporte = Session["actu_noticia"].ToString();
            DataTable dt1 = controlador.consulNoticiaDatos(notici);
            Titulo.Text = dt1.Rows[0]["titulo_soporte"].ToString();
            Descripcion.Text = dt1.Rows[0]["descrip_soperte"].ToString();
            DDL_Proyectos.SelectedValue = dt1.Rows[0]["id_produc"].ToString();
            imagenNoticia.Src= dt1.Rows[0]["url_imagene"].ToString();

        }
    }
}