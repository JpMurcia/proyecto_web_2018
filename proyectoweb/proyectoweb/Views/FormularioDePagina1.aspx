﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioDePagina1.aspx.cs" Inherits="proyectoweb.Views.FormularioDePagina1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registro de Paginas </title>
    <link href="../Content/assetsLogin/css/css8393.css" rel="stylesheet" />
    <link href="../Content/assetsLogin/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../Content/assetsLogin/css/material-kit.minf066.css" rel="stylesheet" />
    <link href="../Content/assetsLogin/css/owl.carousel.css" rel="stylesheet" />
    <link href="../Content/assetsLogin/css/owl.carousel.min.css" rel="stylesheet" />
    <link href="../Content/assetsLogin/css/owl.theme.default.min.css" rel="stylesheet" />
    <script src="../Content/assetsLogin/js/swwetAlert/sweetalert2.min.js"></script>
    <link href="../Content/assetsLogin/js/swwetAlert/sweetalert2.min.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">



        <div class="image-container set-full-height" style="background-image: url('/Content/assetsLogin/img/heliconias.jpg')">
            <a href="FormularioDePagina1.aspx"></a>
            <!--   Big container   -->
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="wizard-container">

                            <div class="card wizard-card" data-color="red" id="wizard">


                                <!--        You can switch " data-color="blue" "  with one of the next bright colors: "green", "orange", "red", "purple"             -->
                                <div class="wizard-header">

                                    <h5>Diligencie el formulario para crear su pagina web.</h5>
                                </div>
                                <div class="wizard-navigation">
                                    <ul>
                                        <li><a href="#details" data-toggle="tab">Informción de grupo</a></li>
                                        <li><a href="#Semilleros" data-toggle="tab">Semilleros</a></li>
                                        <li><a href="#captain" data-toggle="tab">Miembros</a></li>
                                        <li><a href="#description" data-toggle="tab">Proyectos</a></li>
                                    </ul>
                                </div>
                                <div class="tab-content">
                                    <div class="tab-pane" id="details">
                                        <div class="card card-plain">
                                            <div class="card-header" role="tab" id="headingTwo">
                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Documentación de SIGEPI
                                                   
                                                    <i class="material-icons">keyboard_arrow_down</i>
                                                </a>
                                            </div>
                                            <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
                                                <div class="card-body" runat="server">
                                                    <asp:TextBox disabled="disabled" ID="nombreGrupo" class="form-control" TextMode="multiline" type="text" placeholder="Nombre de grupo" runat="server"></asp:TextBox>
                                                    <div class="form-group">
                                                        <label for="exampleFormControlTextarea1">Objetivos</label>
                                                        <asp:TextBox disabled="disabled" Columns="50" Rows="5" ID="Objetivo" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleFormControlTextarea1">Significado</label>
                                                        <asp:TextBox disabled="disabled" ID="sigSiglas" class="form-control" TextMode="multiline" type="text" placeholder="Significado de Siglas" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleFormControlTextarea1">Misión</label>
                                                        <asp:TextBox disabled="disabled" Columns="50" Rows="5" ID="Mision" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleFormControlTextarea1">Visión</label>
                                                        <asp:TextBox disabled="disabled" Columns="50" Rows="5" ID="Vision" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleFormControlTextarea1">Justificación</label>
                                                        <asp:TextBox disabled="disabled" Columns="50" Rows="5" ID="Justificacion" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleFormControlTextarea1">¿Quienes Somos?</label>
                                                        <asp:TextBox disabled="disabled" Columns="50" Rows="5" ID="QuienSomos" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleFormControlTextarea1">Programa</label>
                                                        <asp:TextBox disabled="disabled" Columns="50" Rows="5" ID="programa" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="col-sm-2 ">
                                                        <h4>Imagen de Grupo</h4>
                                                        <img runat="server" id="imagenDeGrupo" src="/Content/assets/img/faces/avatar.jpg" alt="Raised Image" class="img-raised rounded img-fluid" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">
                                                        <i class="material-icons">mail</i>
                                                    </span>
                                                </div>
                                                <asp:TextBox ID="CorreoGrupo" class="form-control" TextMode="multiline" type="text" placeholder="Correo electronico" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">
                                                        <i class="material-icons">phone_iphone</i>
                                                    </span>
                                                </div>
                                                <asp:TextBox ID="TelefonoGrupo" class="form-control" TextMode="multiline" type="text" placeholder="Telefono" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">
                                                        <i class="material-icons">place</i>
                                                    </span>
                                                </div>
                                                <asp:TextBox ID="DireccionGrupo" class="form-control" TextMode="multiline" type="text" placeholder="Direccion" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">
                                                        <i class="material-icons">fiber_manual_record</i>
                                                        <h6>Color por defecto</h6>
                                                    </span>
                                                </div>
                                                <asp:TextBox ID="Color" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">
                                                        <i class="material-icons">fiber_manual_record</i>
                                                        <h6>Titulos</h6>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="Semilleros">

                                        <div class="card card-plain">

                                            <asp:Repeater ID="Repeater1" runat="server">
                                                <ItemTemplate>

                                                    <div class="card-header" role="tab" id="headingFour">
                                                        <a data-toggle="collapse" data-parent="#accordion" href="#s<%#Eval("id_grupo_invest")%> " aria-expanded="false" aria-controls="collapseFour"><%#Eval("nom_grupo")%>

                                                            <i class="material-icons">keyboard_arrow_down</i>
                                                        </a>
                                                    </div>

                                                    <div id="s<%#Eval("id_grupo_invest")%> " class="collapse" role="tabpanel" aria-labelledby="headingFour">

                                                        <div class="card-body">

                                                            <div class="card card-plain">
                                                                <div class="card-header" role="tab" id="headingFive">
                                                                    <a data-toggle="collapse" data-parent="#accordion" href="#g<%#Eval("id_grupo_invest")%> " aria-expanded="false" aria-controls="collapseFive">Información de SIGEPI

                                                                         <i class="material-icons">keyboard_arrow_down</i>
                                                                    </a>
                                                                </div>

                                                                <div id="g<%#Eval("id_grupo_invest")%> " class="collapse show" style: color role="tabpanel" aria-labelledby="headingFive">

                                                                    <div class="card-body">
                                                                        <asp:TextBox disabled="disabled" Text='<%#Eval("nom_grupo")%>' ID="NombreSemillero" class="form-control" TextMode="multiline" type="text" placeholder="Nombre de grupo" runat="server"></asp:TextBox>
                                                                        <asp:TextBox  Text='<%#Eval("siglas_signif_grupo") %>' ID="siglaSemillero" class="form-control" TextMode="multiline" type="text" placeholder="Significado de Siglas" runat="server"></asp:TextBox>
                                                                        <div class="form-group">
                                                                            <label for="exampleFormControlTextarea1">Objetivos</label>
                                                                            <asp:TextBox  Text='<%#Eval("objetivo_grupo") %>' Columns="50" Rows="5" ID="ObjetivoSemillero" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="exampleFormControlTextarea1">Misión</label>
                                                                            <asp:TextBox Text='<%#Eval("mision_grupo") %>' Columns="50" Rows="5" ID="MisionSemiller" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="exampleFormControlTextarea1">Visión</label>
                                                                            <asp:TextBox disabled="disabled" Text='<%#Eval("vision_grupo") %>' Columns="50" Rows="5" ID="VisionSemillero" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="exampleFormControlTextarea1">Justificación</label>
                                                                            <asp:TextBox  Text='<%#Eval("justif_grupo") %>' Columns="50" Rows="5" ID="JustificacionSemillero" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="exampleFormControlTextarea1">¿Quienes Somos?</label>
                                                                            <asp:TextBox  Text='<%#Eval("quien_somos_grupo") %>' Columns="50" Rows="5" ID="QuinesSomosSemillero" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                                        </div>
                                                                        <div class="col-sm-2 ">
                                                                            <h4>Imagen de Grupo</h4>

                                                                            <img runat="server" src='<%#Eval("url_logo_grupo") %>' alt="Raised Image" class="img-raised rounded img-fluid" />
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </div>




                                                        </div>

                                                    </div>

                                                    <br />
                                                    <br />
                                                    <br />

                                                </ItemTemplate>
                                            </asp:Repeater>

                                        </div>







                                    </div>


                                    <div class="tab-pane" id="captain">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">
                                                        <i class="material-icons">supervised_user_circle</i>
                                                    </span>
                                                    <h6 text_align="center">Miembros</h6>
                                                </div>
                                            </div>
                                           
                                        </div>
                                         <div class="form-group">
                                             <table class="table">
                                                <thead>
                                                    <tr>

                                                        <th>Nombre</th>
                                                        <th class="text-right">Propiedades</th>
                                                        <th class="text-right">Publico</th>
                                                    </tr>
                                                </thead>
                                              <tbody>

                                                      <asp:Repeater ID="RepeaterMiembro" runat="server">
                                                         <%-- 
                                                      <asp:Repeater ID="Repeater2" OnItemDataBound="RepiterItem" runat="server">--%>
                                                   <%-- <asp:Repeater ID="RepeaterMiembro" OnItemCommand="RepiterItemCommand" runat="server">--%>
                                                        <ItemTemplate>
                                                            <tr>

                                                                <td><%#Eval("nom_usuario") %> </td>


                                                                <td class="td-actions text-right ">

                                                                    
                                                                    <asp:LinkButton  CssClass="btn btn-primary"    runat="server" OnCommand="Modal_Command1"  CommandArgument='<%# Eval("id_usuario") %>'   >
                                                                       <i class="material-icons">edit</i>Editar
                                                                    </asp:LinkButton>
                                                                
                                                                 <%--      <asp:LinkButton  CssClass="btn btn-primary"  ID="LinkButton1"  runat="server" CommandArgument='<%# Eval("id_usuario") %>' CommandName='botoModal'  data-toggle="modal" data-target="#<%#Eval("id_usuario")%> ">
                                                                       <i class="material-icons">edit</i>Editar
                                                                    </asp:LinkButton>--%>

                                                                    <%-- modal --%>




                                                                </td>

                                                                <td class="td-actions text-right ">
                                                                    <div class="togglebutton">
                                                                        <label>
                                                                            <input type="checkbox" id="s<%#Eval("nom_usuario") %>" checked="" value="1">
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                                    </asp:Repeater>

                                               

                                                </tbody>


                                            </table>
                                         </div>
                                    </div>




                                    <div class="tab-pane" id="description">
                                        <div class="card card-plain">
                                            <div class="card-header" role="tab" id="headingOne">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">Proyectos Terminados

                                                    <i class="material-icons">keyboard_arrow_down</i>
                                                </a>
                                            </div>

                                            <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne">
                                                <div class="card-body">

                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">
                                                                <i class="material-icons">class</i>
                                                            </span>
                                                            <h6>Proyectos</h6>
                                                        </div>
                                                    </div>
                                                    <table class="table">
                                                        <thead>
                                                            <tr>

                                                                <th>Nombre</th>
                                                                <th class="text-right">Accion</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>


                                                            <asp:Repeater ID="RepeaterInacti" runat="server">
                                                                <ItemTemplate>

                                                                    <tr>


                                                                        <td><%#Eval("nom_proyecto") %></td>
                                                                        <td class="td-actions text-right ">
                                                                            <p>
                                                                                <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#p<%#Eval("id_produc") %>" aria-expanded="false" aria-controls="collapseExample2">
                                                                                    Editar
                                                                       
                                                                                </button>
                                                                            </p>
                                                                            <div class="collapse" id="p<%#Eval("id_produc") %>">
                                                                                <div class="card card-body">
                                                                                    <div class="form-group form-file-upload form-file-multiple">
                                                                                        <input type="file" multiple="" class="inputFileHidden" />
                                                                                        <div class="input-group">
                                                                                            <input type="text" class="form-control inputFileVisible" placeholder="Imagenes de proyecto" multiple />
                                                                                            <span class="input-group-btn">
                                                                                                <button type="button" class="btn btn-fab btn-round btn-info">
                                                                                                    <i class="material-icons">layers</i>
                                                                                                </button>
                                                                                            </span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <label for="exampleFormControlTextarea1">Descripción</label>
                                                                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </td>


                                                                    </tr>
                                                                </ItemTemplate>
                                                            </asp:Repeater>



                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="card card-plain">
                                            <div class="card-header" role="tab" id="headingThree">
                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Proyectos en curso
                                                   
                                                    <i class="material-icons">keyboard_arrow_down</i>
                                                </a>
                                            </div>
                                            <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree">
                                                <div class="card-body">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <span class="input-group-text">
                                                                    <i class="material-icons">class</i>
                                                                </span>
                                                                <h6>Proyectos</h6>
                                                            </div>
                                                        </div>
                                                        <table class="table">
                                                            <thead>
                                                                <tr>

                                                                    <th>Nombre</th>
                                                                    <th class="text-right">Accion</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>

                                                                <asp:Repeater ID="RepeaterActivo" runat="server">
                                                                    <ItemTemplate>

                                                                        <tr>
                                                                            <td><%#Eval("nom_proyecto") %> </td>
                                                                            <td class="td-actions text-right ">
                                                                                <p>
                                                                                    <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#p<%#Eval("id_produc") %>" aria-expanded="false" aria-controls="collapseExample">
                                                                                        Editar
                                                                           
                                                                                    </button>
                                                                                </p>
                                                                                <div class="collapse" id="p<%#Eval("id_produc") %>">
                                                                                    <div class="card card-body">
                                                                                        <div class="form-group form-file-upload form-file-multiple">
                                                                                            <input type="file" multiple="" class="inputFileHidden" />
                                                                                            <div class="input-group">
                                                                                                <input type="text" class="form-control inputFileVisible" placeholder="Imagenes de proyecto" />
                                                                                                <span class="input-group-btn">
                                                                                                    <button type="button" class="btn btn-fab btn-round btn-info">
                                                                                                        <i class="material-icons">layers</i>
                                                                                                    </button>
                                                                                                </span>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="form-group">
                                                                                            <label for="exampleFormControlTextarea1">Descripción</label>
                                                                                            <textarea class="form-control" id="exampleFormControlTextarea2" rows="3"></textarea>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </td>
                                                                        </tr>

                                                                    </ItemTemplate>
                                                                </asp:Repeater>


                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>


                                   




                            <div class="wizard-footer">
                                <div class="pull-right">
                                    <input type='button' class='btn btn-next btn-fill btn-danger btn-wd' name='next' value='Next' />
                                    <%--<input type='button' class='btn btn-finish btn-fill btn-danger btn-wd' name='finish' value='Finish' />--%>

                                    <asp:Button runat="server" OnClick="Unnamed_Click" class='btn btn-finish btn-fill btn-danger btn-wd' Text="Finish" />

                                </div>

                                <div class="pull-left">

                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                                        Salir</button>

                           

                                    <input type='button' class='btn btn-previous btn-fill btn-default btn-wd' name='previous' value='Previous' />


                                    <div class="card-body text-center">
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>


        <div class="modal fade" id="modal-datos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-signup" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title card-title">Miembro</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i class="material-icons">clear</i>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-5 ml-auto">
                                <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                                    <div class="fileinput-new thumbnail img-raised">

                                        <%-- Aqui se ubica la imagen del miembro--%>
                                        <img src="../Content/assetsLogin/img/faces/card-profile1-square.jpg" />
                                    </div>
                                    <div class="fileinput-preview fileinput-exists thumbnail img-raised"></div>

                                </div>

                                <div class="info info-horizontal">
                                    <div class="description">
                                        <h4 class="info-title"><%#Eval("nom_usuario") %></h4>
                                    </div>
                                </div>


                            </div>

                            <div class="col-md-5 mr-auto">



                               

                             

                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <asp:TextBox runat="server" disabled="disabled" type="text" ID="nom_usaurioMostrar" class="form-control" TextMode="multiline" placeholder="" >

                                                </asp:TextBox>
                                                <p ><%#Eval("nom_usuario") %></p>
                                                <th class="text-left">Proyecto</th>
                                                <th class="text-right">Publicar</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="InnerRepeater" runat="server">
                                                <ItemTemplate>
                                                    <tr>



                                                        <td class="text-left"><%#Eval("Trabajo")%></td>
                                                        <td class="td-actions text-right ">
                                                            <div class="togglebutton">
                                                                <label>

                                                                    <input type="checkbox" id="<%#Eval("identificador")%>" checked="">
                                                                </label>
                                                            </div>
                                                        </td>



                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                    </table>

                                
                            </div>
                        </div>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>

        <script src="/Content/assetsLogin/js/core/jquery.min.js" type="text/javascript"></script>
        <script src="/Content/assetsLogin/js/core/popper.min.js" type="text/javascript"></script>
        <script src="/Content/assetsLogin/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
        <script src="/Content/assetsLogin/js/plugins/moment.min.js"></script>
        <!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
        <script src="/Content/assetsLogin/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
        <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
        <script src="/Content/assetsLogin/js/plugins/nouislider.min.js" type="text/javascript"></script>
        <!--  Google Maps Plugin  -->
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2Yno10-YTnLjjn_Vtk0V8cdcY5lC4plU"></script>
        <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
        <script src="/Content/assetsLogin/js/plugins/bootstrap-tagsinput.js"></script>
        <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
        <script src="/Content/assetsLogin/js/plugins/bootstrap-selectpicker.js" type="text/javascript"></script>
        <!--	Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
        <script src="/Content/assetsLogin/js/plugins/jasny-bootstrap.min.js" type="text/javascript"></script>
        <!--	Plugin for Small Gallery in Product Page -->
        <script src="/Content/assetsLogin/js/plugins/jquery.flexisel.js" type="text/javascript"></script>
        <!-- Plugins for presentation and navigation  -->
        <script src="/Content/assetsLogin/demo/modernizr.js" type="text/javascript"></script>
        <script src="/Content/assetsLogin/demo/vertical-nav.js" type="text/javascript"></script>
        <!-- Place this tag in your head or just before your close body tag. -->
        <%-- <script async defer src="../../buttons.github.io/buttons.js"></script>--%>
        <!-- Js With initialisations For Demo Purpose, Don't Include it in Your Project -->
        <script src="/Content/assetsLogin/demo/demo.js" type="text/javascript"></script>
        <script src="/Content/assetsLogin/js/material-kit.minf066.js?v=2.1.0" type="text/javascript"></script>

        <script type="text/javascript">
            function cancelar() {
                swal("Datos inconsistentes", "Verifique sus datos", "error");
            }</script>


    </form>
</body>
</html>