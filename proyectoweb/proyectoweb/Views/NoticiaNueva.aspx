﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/administracion.Master" AutoEventWireup="true" CodeBehind="NoticiaNueva.aspx.cs" Inherits="proyectoweb.Views.Noticias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <div class="content">
        <div class="container-fluid">
            <div class="header text-center">
                <h3 class="title">Nueva Noticia</h3>
            </div>
            <div class="row">
                <div class="col-md-10 ml-auto mr-auto">
                    <div class="card card-contact">
                            <div class="card-header card-header-raised card-header-primary text-center">
                                <h4 class="card-title">Escriba la noticia que desea publicar</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                                            <div class="fileinput-new thumbnail img-raised">
                                                <img src="http://style.anu.edu.au/_anu/4/images/placeholders/person_8x10.png" alt="...">
                                            </div>
                                            <div class="fileinput-preview fileinput-exists thumbnail img-raised"></div>
                                            <div class="col-md-12">
                                                <div>
                                                    <span class="btn btn-raised btn-round btn-default btn-file">
                                                        <asp:FileUpload ID="FileUpload" runat="server" CssClass="fileinput-new" OnClick="UploadButton_Click" Text="imagen" /> Seleccionar imagen
                                                    </span>
                                                    <a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i>Remove</a>
                                                </div>  
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group label-floating is-empty">
                                            <label class="bmd-label-floating">Nombre de la Noticia</label>
                                             <asp:TextBox runat="server" name="name" ID="Titulo" Columns="20" class="form-control" >
                                             </asp:TextBox>
                                            <span class="material-input"></span>
                                        </div>
                                             <asp:DropDownList runat="server" ID="DDL_Proyectos" CssClass="form-control selectpicker" ></asp:DropDownList>
                                    </div>
                                </div>
                                <asp:Label runat="server" Text="Escriba aqui su noticia:"></asp:Label>
                                <asp:TextBox runat="server" ID="Descripcion" Columns="20" class="form-control label-floating is-empty" >
                                </asp:TextBox>
                            </div>
                            <div class="">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"  CssClass="btn btn-primary pull-right cold-md-12">Publicar</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</form>
    <script src="../Content/assetsAdministracion/js/FileUpload.js"></script>
  <%--  <script runat="server">

  protected void UploadButton_Click1(object sender, EventArgs e)
  {
    // Specify the path on the server to
    // save the uploaded file to.
    String savePath = @"../Content/Soporte/";
 
    // Before attempting to perform operations
    // on the file, verify that the FileUpload 
    // control contains a file.
    if (FileUpload.HasFile)
    {
      // Get the name of the file to upload.
      String fileName = FileUpload.FileName;
      
      // Append the name of the file to upload to the path.
      savePath += fileName;
      

      // Call the SaveAs method to save the 
      // uploaded file to the specified path.
      // This example does not perform all
      // the necessary error checking.               
      // If a file with the same name
      // already exists in the specified path,  
      // the uploaded file overwrites it.
      FileUpload.SaveAs(savePath);
      
      // Notify the user of the name of the file
      // was saved under.
      UploadStatusLabel.Text = "Your file was saved as " + fileName;
    }
    else
    {      
      // Notify the user that a file was not uploaded.
      UploadStatusLabel.Text = "You did not specify a file to upload.";
    }

  }
</script>--%>


</asp:Content>
                                     