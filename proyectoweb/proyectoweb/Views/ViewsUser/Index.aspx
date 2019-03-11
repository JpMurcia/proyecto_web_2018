<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="proyectoweb.Views.ViewsUser.Index" %>

<!DOCTYPE html>


<html lang="es" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>ViewGroup

    </title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link href="../../Content/assetsLogin/css/css8393.css" rel="stylesheet" />
    <link href="../../Content/assetsLogin/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../../Content/assetsLogin/css/material-kit.minf066.css" rel="stylesheet" />
    <link href="../../Content/assetsLogin/css/owl.theme.default.min.css" rel="stylesheet" />
    <link href="../../Content/assetsLogin/demo/demo.css" rel="stylesheet" />
    <link href="../../Content/assetsLogin/demo/docs.min.css" rel="stylesheet" />
    <link href="../../Content/assetsLogin/demo/vertical-nav.css" rel="stylesheet" />
    <link href="../../Content/assetsLogin/fonts/css8393.css" rel="stylesheet" />
    <link href="../../Content/assetsLogin/css/MisEstilos.css" rel="stylesheet" />


    <script>(function (w, d, s, l, i) {
            w[l] = w[l] || []; w[l].push({
                'gtm.start':
                    new Date().getTime(), event: 'gtm.js'
            }); var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
                    '../../www.googletagmanager.com/gtm5445.html?id=' + i + dl; f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-NKDMSK6');</script>
    <!-- End Google Tag Manager -->


</head>

<body class="index-page sidebar-collapse">

    <!-- Extra details for Live View on GitHub Pages -->
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->



    <nav class="navbar navbar-color-on-scroll navbar-transparent    fixed-top  navbar-expand-lg " color-on-scroll="100" id="sectionsNav">

        <div class="container">
            <div class="navbar-translate">

                <a class="navbar-brand" href="index.html">ViewGroup </a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon"></span>
                    <span class="navbar-toggler-icon"></span>
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
            <form class="form-inline col-md-4 ">
                <div class="form-group has-white bmd-form-group">
                    <input type="text" style="color: #000000" class="form-control " placeholder="Search" />
                </div>
                <button type="submit" class="btn btn-white btn-raised btn-fab btn-round">
                    <i class="material-icons">search</i>
                </button>
            </form>

            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ml-auto">
                    <li class="button-container nav-item iframe-extern">
                        <a href="../login.aspx" target="_blank">

                            <i class="material-icons">portrait</i> Iniciar Sesion
                        </a>
                    </li>
                </ul>
            </div>

        </div>

    </nav>

    <hr />
    <hr />

    <div class="page-header header-filter clear-filter" data-parallax="true" id="imagenFondo" runat="server" style="background-image: url('../../Content/assetsLogin/img/bg0.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-md-8 ml-auto mr-auto">
                    <div class="brand">
                        <h1>ViewGroup

                        </h1>

                        <h3 class="title">Software para la vizualizacion de grupos de investigación
                      de la Universidad de la Amazonia
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="main main-raised">



                <div class="section section-gray">
                    <h1>Paginas Publicadas</h1>
                    <div class="container">
                        <div class="row blog">
                            <div class="col-md-12">
                                <div id="blogCarousel" class="carousel slide" data-ride="carousel">

                                    <ol class="carousel-indicators">
                                        <li data-target="#blogCarousel" data-slide-to="0" class="active"></li>
                                        <!--    <li data-target="#blogCarousel" data-slide-to="1"></li> -->
                                    </ol>
                                    
       
                                    <!-- Carousel items -->

                                    <div class="carousel-inner">


                                        <div class="carousel-item active">
                                            <div class="row">


                                                <asp:Repeater ID="RepeaterPaginas" runat="server">
                                                    <ItemTemplate>

                                                        <div class="col-md-3">
                                                            <a href="#">
                                                                <div class="card card-profile" style="width: 300px; height: 400px">
                                                                    <div class="card-header card-avatar  ">
                                                                        <a href="../ViewsPlantillaHeli/IndexHeli.aspx">
                                                                            <img id="ImagenGrupo" src='<%#Eval("url_logo_grupo") %>' />
                                                                        </a>

                                                                    </div>
                                                                    <div class="card-body">
                                                                        <h4 class="card-title">
                                                                            <asp:Label runat="server" ID="nombre_grupo"></asp:Label>
                                                                           <%#Eval("nom_grupo") %></h4>
                                                                        <p>
                                                                            <asp:Label runat="server" ID="SiglasGrupo"></asp:Label>
                                                                            <%#Eval("siglas_signif_grupo") %>
                                                                        </p>
                                                                        <button type="button" class="btn btn-success mr-auto ">
                                                                            <a href="../ViewsPlantillaHeli/IndexHeli.aspx?IdGrupo=<%#Eval("id_grupo")%>">Visitar </a>
                                                                        </button>
                                                                    </div>

                                                                </div>

                                                                <%--      <img src="../../Content/assetsLogin/img/bg10.jpg" alt="Image" style="max-width: 100%;">--%>
                                                            </a>

                                                        </div>
                                                        <hr />
                                                    </ItemTemplate>
                                                </asp:Repeater>


                                            </div>
                                            <!--.row-->
                                        </div>



                                        <!--.item-->

                                        <!--.item-->

                                    </div>
                           <!--.carousel-inner-->
                                </div>
                                <!--.Carousel-->
                            </div>
                        </div>
                    </div>
                </div>

           


        <div class="contactus-1 section-image" style="background-image: url('./assets/img/examples/city.jpg')">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <h2 class="title">¿Que es ViewGroup? </h2>
                        <h5 class="description">ViewGroup es una plataforma para la gestiòn de grupos de investigaciòn en la universidad de la Amazonia, en esta plataforma
                  los coordinadores de cada grupo pueden crear y publicar la pagina web del mismo, publicar noticias, crear actividades y demas ingresando unos pequeños datos, de esta manera cualquier
                  persona puede buede visualizar la pagina web una vez este publicada en nuestra plataforma con solo presioar clic al boton visitar del card del grupo de investigacion.
                        </h5>
                        <div class="info info-horizontal">
                            <div class="icon icon-primary">
                                <i class="material-icons">code</i>
                            </div>
                            <div class="description">
                                <h4 class="info-title">Plataforma creada por:</h4>
                                <p>
                                    Juan Pablo Murcia 
                    <br>
                                    Brayane Esneider Alvarez Valencia
                    <br>
                                    2019
                                </p>
                            </div>
                        </div>
                        <div class="info info-horizontal">
                            <div class="icon icon-primary">
                                <i class="material-icons">import_contacts</i>
                            </div>
                            <div class="description">
                                <h4 class="info-title">Proyecto de curso</h4>
                                <p>
                                    Ingenieria de sistemas
                    <br>
                                    Programaciòn Web
                    <br>
                                    Heriberto Rojas
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5 ml-auto">
                        <div class="card card-contact">
                            <form id="contact-form" method="post">
                                <div class="card-header card-header-raised card-header-primary text-center">
                                    <h4 class="card-title">Contactenos</h4>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group label-floating is-empty bmd-form-group">
                                                <label class="bmd-label-floating">Nombres</label>
                                                <input type="text" name="name" class="form-control">
                                                <span class="material-input"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group label-floating is-empty bmd-form-group">
                                                <label class="bmd-label-floating">Apellidos</label>
                                                <input type="text" name="name" class="form-control">
                                                <span class="material-input"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group label-floating is-empty bmd-form-group">
                                        <label class="bmd-label-floating">Correo Electronico</label>
                                        <input type="email" name="email" class="form-control">
                                        <span class="material-input"></span>
                                    </div>
                                    <div class="form-group label-floating is-empty bmd-form-group">
                                        <label for="exampleMessage1" class="bmd-label-floating">Escriba su mensaje</label>
                                        <textarea name="message" class="form-control" id="exampleMessage1" rows="6"></textarea>
                                        <span class="material-input"></span>
                                    </div>
                                </div>
                                <div class="card-footer justify-content-between">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input class="form-check-input" type="checkbox" value="">
                                            I'm not a robot
                        <span class="form-check-sign">
                            <span class="check"></span>
                        </span>
                                        </label>
                                    </div>
                                    <button type="submit" class="btn btn-primary pull-right">Send Message</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>




    <footer class="footer" data-background-color="black">
        <div class="container">
            <div class="copyright float-right">
                &copy;
        <script>
            document.write(new Date().getFullYear())
        </script>
                , Hecho con amor  <i class="material-icons">favorite</i> Por
        <a href="https://www.creative-tim.com/" target="_blank">Yisus y JP</a> por una UDLA mejor.
            </div>
        </div>
    </footer>

    <script src="../../Content/assetsLogin/js/buttons.js"></script>
    <script src="../../Content/assetsLogin/js/jquery.min.js"></script>
    <script src="../../Content/assetsLogin/js/material-kit.minf066.js"></script>
    <script src="../../Content/assetsLogin/js/plugins/nouislider.min.js"></script>
    <script src="../../Content/assetsLogin/js/plugins/moment.min.js"></script>
    <script src="../../Content/assetsLogin/js/plugins/jquery.flexisel.js"></script>
    <script src="../../Content/assetsLogin/js/plugins/jasny-bootstrap.min.js"></script>
    <script src="../../Content/assetsLogin/js/plugins/bootstrap-tagsinput.js"></script>
    <script src="../../Content/assetsLogin/js/plugins/bootstrap-selectpicker.js"></script>
    <script src="../../Content/assetsLogin/js/plugins/bootstrap-datetimepicker.js"></script>
    <script src="../../Content/assetsLogin/js/core/popper.min.js"></script>
    <script src="../../Content/assetsLogin/js/core/jquery.min.js"></script>
    <script src="../../Content/assetsLogin/js/core/bootstrap-material-design.min.js"></script>
    <script src="../../Content/assetsLogin/demo/vertical-nav.js"></script>
    <script src="../../Content/assetsLogin/demo/modernizr.js"></script>
    <script src="../../Content/assetsLogin/demo/demo.js"></script>
    <script src="../../Content/assetsLogin/demo/demo.js"></script>
    <script src="../../Content/assetsLogin/demo/modernizr.js"></script>
    <script src="../../Content/assetsLogin/demo/vertical-nav.js"></script>

    <script>
        $(document).ready(function () {
            //init DateTimePickers
            materialKit.initFormExtendedDatetimepickers();

            // Sliders Init
            materialKit.initSliders();
        });


    </script>
    <script>


        $('#carouselExample').on('slide.bs.carousel', function (e) {


            var $e = $(e.relatedTarget);
            var idx = $e.index();
            var itemsPerSlide = 4;
            var totalItems = $('.carousel-item').length;

            if (idx >= totalItems - (itemsPerSlide - 1)) {
                var it = itemsPerSlide - (totalItems - idx);
                for (var i = 0; i < it; i++) {
                    // append slides to end
                    if (e.direction == "left") {
                        $('.carousel-item').eq(i).appendTo('.carousel-inner');
                    }
                    else {
                        $('.carousel-item').eq(0).appendTo('.carousel-inner');
                    }
                }
            }
        });


        $('#carouselExample').carousel({
            interval: 2000
        });


        $(document).ready(function () {
            /* show lightbox when clicking a thumbnail */
            $('a.thumb').click(function (event) {
                event.preventDefault();
                var content = $('.modal-body');
                content.empty();
                var title = $(this).attr("title");
                $('.modal-title').html(title);
                content.html($(this).html());
                $(".modal-profile").modal({ show: true });
            });

        });
    </script>
























</body>
</html>
