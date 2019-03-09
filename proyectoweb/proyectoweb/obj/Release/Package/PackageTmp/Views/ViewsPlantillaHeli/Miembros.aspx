<%@ Page Title="" Language="C#" MasterPageFile="~/Views/ViewsPlantillaHeli/plantlillaHeli.Master"
    AutoEventWireup="true" CodeBehind="Miembros.aspx.cs" Inherits="proyectoweb.Views.ViewsPlantillaHeli.Miembros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
        <div class="section section-bg-3 pt-10 pb-10">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="project-carousel">

                            <asp:Repeater ID="RepeaterMiembroPag" runat="server">
                                <ItemTemplate>

                                    <div class="item row">
                                        <div class="col-md-6">
                                            <img id="foto_perfil" runat="server" src='<%#Eval("foto")%>' width="430" />
                                        </div>
                                        <div class="col-md-6">
                                            <h2 class="title text-uppercase"><b><%#Eval("nom")%></b></h2>
                                            <div class="content">
                                                <h2 class="entry-title">
                                                    <a class="white text-uppercase" href="portfolio-detail.html"><%#Eval("email")%></a>
                                                </h2>
                                                <p class="terms">
                                                    <span>Programa:</span> <span><%#Eval("progra")%></span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                </ItemTemplate>
                            </asp:Repeater>

                            <%--    <div class="item row">
                                <div class="col-md-6">
                                    <img src="../../Content/assetsLogin/img/faces/card-profile1-square.jpg" />
                                </div>
                                <div class="col-md-6">
                                    <h2 class="title text-uppercase"><b>featured</b>works</h2>
                                    <div class="content">
                                        <h2 class="entry-title">
                                            <a class="white text-uppercase" href="portfolio-detail.html">Table Lamp</a>
                                        </h2>
                                        <p class="terms">
                                            <span>Branding</span>
                                        </p>
                                    </div>

                                </div>
                                <br />
                            </div>
                            <div class="item row">
                                <div class="col-md-6">
                                    <img src="../../Content/assetsLogin/img/faces/card-profile2-square.jpg" />
                                </div>
                                <div class="col-md-6">
                                    <h2 class="title text-uppercase"><b>featured</b>works</h2>
                                    <div class="content">
                                        <h2 class="entry-title">
                                            <a class="white text-uppercase" href="portfolio-detail.html">Vinyl cover</a>
                                        </h2>
                                        <p class="terms">
                                            <span>Print</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="item row">
                                <div class="col-md-6">
                                    <img src="../../Content/assetsLogin/img/faces/card-profile4-square.jpg" />
                                </div>
                                <div class="col-md-6">
                                    <h2 class="title text-uppercase"><b>featured</b>works</h2>
                                    <div class="content">
                                        <h2 class="entry-title">
                                            <a class="white text-uppercase" href="portfolio-detail.html">Paper bag</a>
                                        </h2>
                                        <p class="terms">
                                            <span>Branding</span><span>Print</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="item row">
                                <div class="col-md-6">
                                    <img src="../../Content/assetsLogin/img/faces/card-profile5-square.jpg" />
                                </div>
                                <div class="col-md-6">
                                    <h2 class="title text-uppercase"><b>featured</b>works</h2>
                                    <div class="content">
                                        <h2 class="entry-title">
                                            <a class="white text-uppercase" href="portfolio-detail.html">Photofolio</a>
                                        </h2>

                                        <p class="terms">
                                            <span>Branding</span><span>Print</span>
                                        </p>
                                    </div>
                                </div>
                            </div>--%>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
