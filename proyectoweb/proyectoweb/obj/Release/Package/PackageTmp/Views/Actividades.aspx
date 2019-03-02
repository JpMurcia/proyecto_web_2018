<%@ Page Title="" Language="C#" MasterPageFile="~/Views/administracion.Master" AutoEventWireup="true" CodeBehind="Actividades.aspx.cs" Inherits="proyectoweb.Views.Actividades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Content/Carousel/carousel.css" rel="stylesheet" />


    <div class="content">
        <div class="container-fluid">
            <div class="header text-center">
                <h3 class="title">Actividades</h3>

            </div>
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-10 ml-auto mr-auto">
                            <form runat="server">
                                <div class="card card-calendar">
                                    <div class="card-body ">
                                        <a href="#" id="btnInit" class="btn btn-secondary">Initialise database!</a>
                                        <div id="fullCalendar"></div>
                                    </div>
                                    <Button id="btAleatorio">dasdsa</Button>


                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script src="../Content/assetsAdministracion/js/plugins/fullcalendar.min.js"></script>


</asp:Content>


