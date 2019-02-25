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

           <%--                         <div class="col-md-6">



                                        <div class="dropdown bootstrap-select">
                                            <select class="selectpicker" data-size="7" data-style="btn btn-primary btn-round" title="Single Select" tabindex="-98">
                                                <option class="bs-title-option" value=""></option>
                                                <option disabled="" selected="">Single Option</option>
                                                <option value="2">Foobar</option>
                                                <option value="3">Is great</option>
                                                <option value="4">Is bum</option>
                                                <option value="5">Is wow</option>
                                                <option value="6">boom</option>
                                            </select>
                                            <button type="button" class="dropdown-toggle btn btn-primary btn-round" data-toggle="dropdown" role="button" title="Is great" aria-expanded="false">
                                                <div class="filter-option">
                                                    <div class="filter-option-inner">
                                                        <div class="filter-option-inner-inner">Is great</div>
                                                    </div>
                                                </div>
                                                <div class="ripple-container"></div>
                                            </button>
                                            <div class="dropdown-menu" role="combobox" x-placement="bottom-start" style="overflow: hidden; position: absolute; top: 46px; left: 1px; will-change: top, left;">
                                                <div class="inner show" role="listbox" aria-expanded="false" tabindex="-1" style="overflow-y: auto;">
                                                    <ul class="dropdown-menu inner show">
                                                        <li class="disabled"><a role="option" class="dropdown-item disabled" aria-disabled="true" tabindex="-1" aria-selected="false"><span class=" bs-ok-default check-mark"></span><span class="text">Single Option</span></a></li>
                                                        <li class=""><a role="option" class="dropdown-item" aria-disabled="false" tabindex="0" aria-selected="false"><span class=" bs-ok-default check-mark"></span><span class="text">Foobar</span><div class="ripple-container">
                                                            <div class="ripple-decorator ripple-on ripple-out" style="left: 60.5919px; top: 36.7126px; background-color: rgb(51, 51, 51); transform: scale(26.25);"></div>
                                                        </div>
                                                        </a></li>
                                                        <li class="selected active"><a role="option" class="dropdown-item selected active" aria-disabled="false" tabindex="0" aria-selected="true"><span class=" bs-ok-default check-mark"></span><span class="text">Is great</span><div class="ripple-container">
                                                            <div class="ripple-decorator ripple-on ripple-out" style="left: 85.8793px; top: 36.6437px; background-color: rgb(51, 51, 51); transform: scale(26.25);"></div>
                                                            <div class="ripple-decorator ripple-on ripple-out" style="left: 85.8793px; top: 36.6437px; background-color: rgb(51, 51, 51); transform: scale(26.25);"></div>
                                                        </div>
                                                        </a></li>
                                                        <li><a role="option" class="dropdown-item" aria-disabled="false" tabindex="0" aria-selected="false"><span class=" bs-ok-default check-mark"></span><span class="text">Is bum</span></a></li>
                                                        <li class=""><a role="option" class="dropdown-item" aria-disabled="false" tabindex="0" aria-selected="false"><span class=" bs-ok-default check-mark"></span><span class="text">Is wow</span><div class="ripple-container">
                                                            <div class="ripple-decorator ripple-on ripple-out" style="left: 98px; top: 36px; background-color: rgb(255, 255, 255); transform: scale(26.25);"></div>
                                                        </div>
                                                        </a></li>
                                                        <li class=""><a role="option" class="dropdown-item" aria-disabled="false" tabindex="0" aria-selected="false"><span class=" bs-ok-default check-mark"></span><span class="text">boom</span><div class="ripple-container">
                                                            <div class="ripple-decorator ripple-on ripple-out" style="left: 111.167px; top: 22.6437px; background-color: rgb(51, 51, 51); transform: scale(26.25);"></div>
                                                        </div>
                                                        </a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>




                                    </div>--%>


                                    <div class="col-md-6">

                                        <div class="form-group label-floating is-empty">
                                            <label class="bmd-label-floating">Nombre de la Noticia</label>
                                            <input type="text" name="name" class="form-control">
                                            <span class="material-input"></span>


                                            <div class="dropdown show">
                                                <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Seleccione el proyecto al que pertenece la publicación
                                                </a>

                                                <div class="dropdown-menu"    aria-labelledby="dropdownMenuLink">
                                                <asp:Repeater ID="RepeaterRoducto" runat="server">
                                                    <ItemTemplate>
                                                        
                                                            <a class="dropdown-item" href="p<%#Eval("id_produc")%>"><%#Eval("nom_producto")%></a>

                                                      
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                                      </div>

                                                <%--      <asp:Repeater ID="RepeaterMiembro" runat="server">
                                                        <ItemTemplate>

                                                            <a class="dropdown-item" href="g<%#Eval("id_grupo_invest")%>"><%#Eval("nom_grupo")%></a>

                                                        </ItemTemplate>
                                                    </asp:Repeater>

                                                    <a class="dropdown-item" href="#">Proyecto 1</a>
                                                    <a class="dropdown-item" href="#">Proyecto 2</a>
                                                    <a class="dropdown-item" href="#">Proyecto 3</a>

                                                --%>
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
