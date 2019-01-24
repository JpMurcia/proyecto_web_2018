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
</head>
<body>
    <div class="image-container set-full-height" style="background-image: url('/Content/assetsLogin/img/heliconias.jpg')">
        <!--   Big container   -->
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="wizard-container">
                        <div class="card wizard-card" data-color="red" id="wizard">
                            <form runat="server">
                                <!--        You can switch " data-color="blue" "  with one of the next bright colors: "green", "orange", "red", "purple"             -->
                                <div class="wizard-header">
                                    <h3 class="wizard-title">Formulario de pagina
                                    </h3>
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
                                    </div>
                                    <div class="tab-pane" id="Semilleros">

                                        <div class="card card-plain">
                                            <asp:Repeater ID="Repeater1" runat="server">
                                                <ItemTemplate>
                                                    <div class="card-header" role="tab" id="headingFour">
                                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">Semillero #1

                                                    <i class="material-icons">keyboard_arrow_down</i>
                                                        </a>
                                                    </div>

                                                    <div id="collapseFour" class="collapse" role="tabpanel" aria-labelledby="headingFour">

                                                        <div class="card-body">

                                                            <div class="card card-plain">
                                                                <div class="card-header" role="tab" id="headingFive">
                                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">Información de SIGEPI

                                                                <i class="material-icons">keyboard_arrow_down</i>
                                                                    </a>
                                                                </div>

                                                                <div id="collapseStyle" class="collapse show" style: color role="tabpanel" aria-labelledby="headingFive">

                                                                    <div class="card-body">
                                                                        <asp:TextBox disabled="disabled" Text='<%#Eval("nom_grupo")%>' ID="NombreSemillero" class="form-control" TextMode="multiline" type="text" placeholder="Nombre de grupo" runat="server"></asp:TextBox>
                                                                        <asp:TextBox disabled="disabled" Text='<%#Eval("sigla_signif_grupo") %>' ID="siglaSemillero" class="form-control" TextMode="multiline" type="text" placeholder="Significado de Siglas" runat="server"></asp:TextBox>
                                                                        <div class="form-group">
                                                                            <label for="exampleFormControlTextarea1">Objetivos</label>
                                                                            <asp:TextBox disabled="disabled" Text='<%#Eval("objetivo_grupo") %>' Columns="50" Rows="5" ID="ObjetivoSemillero" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="exampleFormControlTextarea1">Misión</label>
                                                                            <asp:TextBox disabled="disabled" Text='<%#Eval("mision_grupo") %>' Columns="50" Rows="5" ID="MisionSemiller" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="exampleFormControlTextarea1">Visión</label>
                                                                            <asp:TextBox disabled="disabled" Text='<%#Eval("vision_grupo") %>' Columns="50" Rows="5" ID="VisionSemillero" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="exampleFormControlTextarea1">Justificación</label>
                                                                            <asp:TextBox disabled="disabled" Text='<%#Eval("justif_grupo") %>' Columns="50" Rows="5" ID="JustificacionSemillero" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="exampleFormControlTextarea1">¿Quienes Somos?</label>
                                                                            <asp:TextBox disabled="disabled" Text='<%#Eval("quien_somos_grupo") %>' Columns="50" Rows="5" ID="QuinesSomosSemillero" class="form-control" TextMode="multiline" type="text" placeholder="" runat="server"></asp:TextBox>
                                                                        </div>
                                                                        <div class="col-sm-2 ">
                                                                            <h4>Imagen de Grupo</h4>
                                                                            <img runat="server" text='<%#Eval("url_logo_grupo") %>' id="imagenDeSemillero" src="/Content/assets/img/faces/avatar.jpg" alt="Raised Image" class="img-raised rounded img-fluid">
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
                                                                    <input type="text" class="form-control" placeholder="Correo Electronico" />
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="input-group">
                                                                    <div class="input-group-prepend">
                                                                        <span class="input-group-text">
                                                                            <i class="material-icons">phone_iphone</i>
                                                                        </span>
                                                                    </div>
                                                                    <input type="text" class="form-control" placeholder="Telefono" />
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="input-group">
                                                                    <div class="input-group-prepend">
                                                                        <span class="input-group-text">
                                                                            <i class="material-icons">place</i>
                                                                        </span>
                                                                    </div>
                                                                    <input type="text" placeholder="Dirección" class="form-control" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    
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
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th class="text-center">#</th>
                                                            <th>Nombre</th>
                                                            <th class="text-right">Accion</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="text-center">1</td>
                                                            <td>Andrew Mike</td>
                                                            <td class="td-actions text-right ">
                                                                <button type="button" rel="tooltip" class="btn btn-danger">
                                                                    <i class="material-icons">close</i>
                                                                </button>
                                                            </td>
                                                        </tr>
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
                                                                    <th class="text-center">#</th>
                                                                    <th>Nombre</th>
                                                                    <th class="text-right">Accion</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td class="text-center">1</td>
                                                                    <td>Proyecto 1</td>
                                                                    <td class="td-actions text-right ">
                                                                        <p>
                                                                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample2" aria-expanded="false" aria-controls="collapseExample2">
                                                                                Editar
                                                                       
                                                                            </button>
                                                                        </p>
                                                                        <div class="collapse" id="collapseExample2">
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
                                                                        <th class="text-center">#</th>
                                                                        <th>Nombre</th>
                                                                        <th class="text-right">Accion</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="text-center">1</td>
                                                                        <td>Proyecto 1</td>
                                                                        <td class="td-actions text-right ">
                                                                            <p>
                                                                                <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                                                                                    Editar
                                                                           
                                                                                </button>
                                                                            </p>
                                                                            <div class="collapse" id="collapseExample">
                                                                                <div class="card card-body">
                                                                                    <div class="form-group form-file-upload form-file-multiple">
                                                                                        <input type="file" multiple="" class="inputFileHidden"/>
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
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </form>
                                    </div>

                                    <div class="wizard-footer">
                                        <div class="pull-right">
                                            <input type='button' class='btn btn-next btn-fill btn-danger btn-wd' name='next' value='Next' />
                                            <input type='button' class='btn btn-finish btn-fill btn-danger btn-wd' name='finish' value='Finish' />
                                        </div>
                                        <div class="pull-left">
                                            <input type='button' class='btn btn-previous btn-fill btn-default btn-wd' name='previous' value='Previous' />
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                              
                        </div>
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
</body>
</html>
