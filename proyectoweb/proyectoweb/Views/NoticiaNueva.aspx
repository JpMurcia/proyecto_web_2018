<%@ Page Title="" Language="C#" MasterPageFile="~/Views/administracion.Master" AutoEventWireup="true" CodeBehind="NoticiaNueva.aspx.cs" Inherits="proyectoweb.Views.Noticias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">
        <div class="container-fluid">
            <div class="header text-center">
                <h3 class="title">Nueva Noticia</h3>

            </div>
            <div class="row">
                <div class="col-md-10 ml-auto mr-auto">
                    <div class="card card-contact">
                        <form id="contact-form" method="post">
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
                                            <div>
                                                <span class="btn btn-raised btn-round btn-default btn-file">
                                                    <span class="fileinput-new">Seleccione la imagen de portada</span>
                                                    <span class="fileinput-exists">Change</span>
                                                    <input type="file" name="..." />
                                                </span>
                                                <a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i>Remove</a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">

                                        <div class="form-group label-floating is-empty">
                                            <label class="bmd-label-floating">Nombre de la Noticia</label>
                                            <input type="text" name="name" class="form-control">
                                            <span class="material-input"></span>

                                            <div class="dropdown show">
                                                <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                    Seleccione el proyecto al que pertenece la publicación
                                                </a>

                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                                    <a class="dropdown-item" href="#">Proyecto 1</a>
                                                    <a class="dropdown-item" href="#">Proyecto 2</a>
                                                    <a class="dropdown-item" href="#">Proyecto 3</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group label-floating is-empty">
                                    <label for="exampleMessage1" class="bmd-label-floating">Escriba aqui su noticia</label>
                                    <textarea name="message" class="form-control" id="exampleMessage1" rows="6"></textarea>
                                    <span class="material-input"></span>
                                </div>


                            </div>
                            <div class="card-footer justify-content-between">

                                <button type="submit" class="btn btn-primary pull-right">Publicar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
