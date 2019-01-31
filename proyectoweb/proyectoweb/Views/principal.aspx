<%@ Page Title="" Language="C#" MasterPageFile="~/Views/administracion.Master" AutoEventWireup="true" CodeBehind="principal.aspx.cs" Inherits="proyectoweb.Views.principal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Aqui inicia el contenido de la vista mis paginas-->
    <form id="form3" runat="server">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card ">
                        <div class="card-header card-header-success card-header-icon">
                            <div class="card-icon">
                                <i class="material-icons">dvr</i>
                            </div>
                            <h2 class="card-title">Mis Paginas</h2>
                            <h3 class="card-title" align="Center">Grupos de investigación</h3>
                        </div>

                        <div class="card-body ">
                            <h1 align="Center">-</h1>
                            <div class="row">
                                <div class="col-md-4" >
                                    <div class="card" style="width:10rem;>
                                        <img class="card-img-top" src="../Content/assetsAdministracion/img/giecom.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        </div>
                                        <asp:Button runat="server" ID="verGiecom" CssClass="btn btn-primary" OnClick="verGiecom_Click" Text="Ver grupo" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card" style="width: 10rem;">
                                        <img class="card-img-top" src="../Content/assetsAdministracion/img/sara.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        </div>
                                        <asp:Button runat="server" ID="verSara" CssClass="btn btn-primary" OnClick="verSara_Click" Text="Ver grupo"/>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card" style="width: 10rem;">
                                        <img class="card-img-top" src="../Content/assetsAdministracion/img/picardie.png" alt="Card image cap">
                                        <div class="card-body">
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        </div>
                                        <asp:Button runat="server" ID="verPicardie" CssClass="btn btn-primary" OnClick="verPicardie_Click" Text="Ver grupo"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</asp:Content>
