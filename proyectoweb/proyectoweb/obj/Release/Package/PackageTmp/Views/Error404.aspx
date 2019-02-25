<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error404.aspx.cs" Inherits="proyectoweb.Views.Error404" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>404 HTML Tempate by Colorlib</title>

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Maven+Pro:400,900" rel="stylesheet">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/styleError404.css" />
    <link href="../Content/Newstyle/Error/styleError404.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->


</head>
<body>
    <form id="form1" runat="server">
        <div id="notfound">
            <div class="notfound">
                <div class="notfound-404">
                    <h1>401</h1>
                </div>
                <h2>Acceso denegado!</h2>
                <p>El usuario no tiene los permisos requeridos para acceder a esta pagina.</p>
               
                <a href="ViewsUser/Index.aspx">Volver a inicio</a>
            </div>
        </div>
    </form>


</body>
</html>
