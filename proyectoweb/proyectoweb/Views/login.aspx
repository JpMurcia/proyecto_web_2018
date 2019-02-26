<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="proyectoweb.Views.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Iniciar sesión</title>

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
    <form id="form1" runat="server">
        <asp:ScriptManager ID="repust" runat="server"></asp:ScriptManager>
        <script type="text/javascript">
            function modalError() {
                swal("Datos inconsistentes", "Verifique sus datos", "error");

            }</script>
        <div class="page-header header-filter" style="background-image: url('../Content/assetsLogin/img/bg7.jpg'); background-size: cover; background-position: top center;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 ml-auto mr-auto">
                        <div class="card card-login">

                            <div class="card-header card-header-primary text-center">
                                <h4 class="card-title">Iniciar Sesion</h4>

                            </div>
                            <p class="description text-center">Bienvenido</p>
                            <div class="card-body">


                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">mail</i>
                                        </span>
                                    </div>
                                    <asp:TextBox runat="server" type="text" class="form-control" placeholder="Usuario" ID="usuarioNombre"></asp:TextBox>
                                </div>

                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">lock_outline</i>
                                        </span>
                                    </div>
                                    <asp:TextBox runat="server" type="password" class="form-control" placeholder="Password..." ID="usuarioContrasena"></asp:TextBox>

                                </div>

                                <!-- If you want to add a checkbox to this form, uncomment this code

            <div class="checkbox">
              <label>
                <input type="checkbox" name="optionsCheckboxes" checked>
                Subscribe to newsletter
              </label>
            </div> -->
                            </div>
                            <div class="footer text-center">
                                <asp:Button runat="server" OnClick="Unnamed_Click" class="btn btn-primary btn-link btn-wd btn-lg" Text="Ingresar" />

                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </form>


    <script src="../Content/assetsLogin/js/material-kit.minf066.js"></script>
    <script src="../Content/assetsLogin/js/jquery.min.js"></script>
    <script src="../Content/assetsLogin/js/buttons.js"></script>
    <script src="../Content/assetsLogin/js/plugins/bootstrap-selectpicker.js"></script>
    <script src="../Content/assetsLogin/js/plugins/bootstrap-tagsinput.js"></script>
    <script src="../Content/assetsLogin/js/plugins/jasny-bootstrap.min.js"></script>
    <script src="../Content/assetsLogin/js/plugins/jquery.flexisel.js"></script>
    <script src="../Content/assetsLogin/js/plugins/moment.min.js"></script>
    <script src="../Content/assetsLogin/js/plugins/nouislider.min.js"></script>
    <script src="../Content/assetsLogin/js/plugins/bootstrap-datetimepicker.js"></script>
    <script src="../Content/assetsLogin/js/core/jquery.min.js"></script>
    <script src="../Content/assetsLogin/js/core/bootstrap-material-design.min.js"></script>
    <script src="../Content/assetsLogin/js/core/popper.min.js"></script>
</body>
</html>
