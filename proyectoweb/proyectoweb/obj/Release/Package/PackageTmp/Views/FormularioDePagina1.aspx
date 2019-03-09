<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioDePagina1.aspx.cs" Inherits="proyectoweb.Views.FormularioDePagina1" %>

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
                                                        <label for="exampleFormControlTextarea1">Significado</label>
                                                        <asp:TextBox ID="sigSiglas" disabled="disabled" class="form-control" TextMode="multiline" type="text" placeholder="Significado de Siglas" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleFormControlTextarea1">Objetivos</label>
                                                        <asp:TextBox Columns="50" Rows="5" ID="Objetivo" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
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
                                                        <asp:TextBox Columns="50" Rows="5" ID="Justificacion" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleFormControlTextarea1">¿Quienes Somos?</label>
                                                        <asp:TextBox Columns="50" Rows="5" ID="QuienSomos" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
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
                                        <%--      <div class="form-group">
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
                                        </div>--%>
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

                                                    <asp:HiddenField ID="Semillero_id" Value='<%#Eval("id_grupo_invest")%>' runat="server" />
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

                                                                        <asp:TextBox Text='<%#Eval("siglas_signif_grupo") %>' ID="siglaSemillero" class="form-control" TextMode="multiline" type="text" placeholder="Significado de Siglas" runat="server"></asp:TextBox>
                                                                        <div class="form-group">
                                                                            <label for="exampleFormControlTextarea1">Objetivos</label>
                                                                            <asp:TextBox Text='<%#Eval("objetivo_grupo") %>' Columns="50" Rows="5" ID="ObjetivoSemillero" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="exampleFormControlTextarea1">Misión</label>
                                                                            <asp:TextBox Text='<%#Eval("mision_grupo") %>' Columns="50" Rows="5" ID="MisionSemiller" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="exampleFormControlTextarea1">Visión</label>
                                                                            <asp:TextBox Text='<%#Eval("vision_grupo") %>' Columns="50" Rows="5" ID="VisionSemillero" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="exampleFormControlTextarea1">Justificación</label>
                                                                            <asp:TextBox Text='<%#Eval("justif_grupo") %>' Columns="50" Rows="5" ID="JustificacionSemillero" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="exampleFormControlTextarea1">¿Quienes Somos?</label>
                                                                            <asp:TextBox Text='<%#Eval("quien_somos_grupo") %>' Columns="50" Rows="5" ID="QuinesSomosSemillero" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                                        </div>
                                                                        <div class="col-sm-2 ">
                                                                            <h4>Imagen de Grupo</h4>

                                                                            <asp:Image runat="server" ID="imagenSemillero" ImageUrl='<%#Eval("url_logo_grupo") %>' alt="Raised Image" class="img-raised rounded img-fluid" />
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
                                                        <%--<th class="text-right">Publico</th>--%>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    <asp:Repeater ID="RepeaterMiembro" runat="server">
                                                        <ItemTemplate>
                                                        <%-- 
                                                      <asp:Repeater ID="Repeater2" OnItemDataBound="RepiterItem" runat="server">--%>
                                                        <%-- <asp:Repeater ID="RepeaterMiembro" OnItemCommand="RepiterItemCommand" runat="server">--%>
                                                     
                                                            <tr>

                                                                <td><%#Eval("nom_usuario") %> </td>


                                                                <td class="td-actions text-right ">


                                                                    <asp:LinkButton CssClass="btn btn-primary" runat="server" OnCommand="Modal_Command1" CommandArgument='<%# Eval("id_usuario") %>'>
                                                                       <i class="material-icons">edit</i>Editar
                                                                    </asp:LinkButton>

                                                                    <%--      <asp:LinkButton  CssClass="btn btn-primary"  ID="LinkButton1"  runat="server" CommandArgument='<%# Eval("id_usuario") %>' CommandName='botoModal'  data-toggle="modal" data-target="#<%#Eval("id_usuario")%> ">
                                                                       <i class="material-icons">edit</i>Editar
                                                                    </asp:LinkButton>--%>

                                                                    <%-- modal --%>




                                                                </td>

                                                               <%-- <td class="td-actions text-right ">
                                                                    <div class="togglebutton">
                                                                        <label>
                                                                            <input type="checkbox" id="s<%#Eval("nom_usuario") %>" checked="" value="1">
                                                                        </label>
                                                                    </div>
                                                                </td>--%>
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
                                                                           <asp:LinkButton CssClass="btn btn-primary" runat="server" OnCommand="Unnamed_Command" CommandArgument='<%# Eval("id_produc") %>'>
                                                                       <i class="material-icons">edit</i>Editar
                                                                    </asp:LinkButton>
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
                                                                           <td><%#Eval("nom_proyecto") %></td>
                                                                        <td class="td-actions text-right ">
                                                                           <asp:LinkButton CssClass="btn btn-primary" runat="server" OnCommand="Unnamed_Command" CommandArgument='<%# Eval("id_produc") %>'>
                                                                       <i class="material-icons">edit</i>Editar
                                                                    </asp:LinkButton>
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
                                        <img  height="300"  id="imagen_perfil" runat="server" src="../Content/assetsLogin/img/faces/card-profile1-square.jpg" />
                                    </div>
                                    <div class="fileinput-preview fileinput-exists thumbnail img-raised"></div>
                                </div>
                                <div class="info info-horizontal">
                                    <div class="description">
                                <%--        <asp:TextBox runat="server"  ID="nombre_miembro"></asp:TextBox>--%>
                                        <h3 class="info-title"><asp:Label  ID="nom_miebro" runat="server" /> </h3>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5 mr-auto">
                                <h5 class="info-text">Programa:   <asp:Label  ID="programa_miembro" runat="server" /> </h5>
                                <table class="table">
                                    <thead>

                                        
                                        <tr>
                                            
                                           
                                            <asp:TextBox runat="server" disabled="disabled" type="text" ID="nom_usaurioMostrar" class="form-control" TextMode="multiline" placeholder="">
                                            </asp:TextBox>
                                            <p id="hola"></p>

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

                                                                <asp:HiddenField ID="id_usuario" Value='<%#Eval("identificador")%>' runat="server" />
                                                                <asp:HiddenField ID="ide" Value='<%#Eval("identificador")%>' runat="server" />
                                                                <asp:HiddenField ID="tipo" Value='<%#Eval("cargo")%>' runat="server" />
                                                                <asp:CheckBox runat="server" ID="estado" Checked='<%# Boolean.Parse(Eval("estado").ToString()) %>' />


                                                            </label>
                                                        </div>
                                                    </td>

                                                    <%-- Checked='<%# Eval("estado").ToString() == "True" 
                                                                               <input type="checkbox"  id="<%#Eval("identificador")%>" value="<%#Eval("estado")%>" checked="">
                                                                   <%#Eval("identificador")%>
                                                                   Boolean.Parse(Eval("estado").ToString()) %>'  --%>
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
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        <asp:Button type="button" CssClass="btn btn-primary" OnClick="Button_Miembro" runat="server" ID="guardar" Text="Guardar Cambios" />
                    </div>
                </div>
            </div>
        </div>


        <div class="modal fade" id="modal_proyecto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <asp:Label ID="nom_proyecto" class="modal-title" runat="server" Text=""></asp:Label>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="card card-body">
                          <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                                            <div class="fileinput-new thumbnail img-raised">
                                                <img id="imagenNoticia" runat="server" src="http://style.anu.edu.au/_anu/4/images/placeholders/person_8x10.png" alt="...">
                                            </div>
                                            <div class="fileinput-preview fileinput-exists thumbnail img-raised"></div>
                                            <div class="col-md-12">
                                                <div>
                                                    <span class="btn btn-raised btn-round btn-default btn-file">
                                                        <asp:FileUpload ID="ImagenProyecto" runat="server" CssClass="fileinput-new" OnClick="UploadButton_Click" Text="imagen" /> Seleccionar imagen
                                                    </span>
                                                    <a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i>Remove</a>
                                                </div>  
                                            </div>
                                        </div>
                            <div class="form-group">
                                <label for="exampleFormControlTextarea1">Descripción</label>
                                <asp:TextBox ID="id_descripcion" runat="server"  class="form-control" Columns="5"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                         <asp:Button type="button" CssClass="btn btn-primary" OnClick="Guardar_proyec_Click" runat="server" ID="Button1" Text="Guardar Cambios" />
       <%--                 <asp:LinkButton runat="server" type="button" CssClass="btn btn-primary" ID="Guardar_proyec" OnClick="Guardar_proyec_Click" >Save changes</asp:LinkButton>--%>
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
