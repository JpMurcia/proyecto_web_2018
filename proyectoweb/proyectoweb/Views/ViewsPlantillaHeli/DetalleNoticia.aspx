<%@ Page Title="" Language="C#" MasterPageFile="~/Views/ViewsPlantillaHeli/plantlillaHeli.Master" AutoEventWireup="true" CodeBehind="DetalleNoticia.aspx.cs" Inherits="proyectoweb.Views.ViewsPlantillaHeli.DetalleNoticia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="main">
        <div class="section section-cover section-bg-54 pt-9 pb-6">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        <div class="breadcrumb">
                            <ul class="bread_crumb">
                                <li><a href="index.html">Home</a></li>
                                <li>Blog Detail</li>
                            </ul>
                        </div>
                        <h2 class="fz-32 mb-3 white"><b>NUESTRO</b> BLOG</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="section mt-8">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <div class="blog-item style-3 mb-0">
                            <div class="post-thumb">
                                <div class="dates">
                                    <div>
                                        <span class="date">
                                            <asp:Label ID="fecha" runat="server" /></span>
                                    </div>
                                </div>
                                <asp:Image ID="ImagenNoticia" runat="server" />
                            </div>
                            <div class="entry-header">
                                <h2 class="entry-title"><a >
                                    <asp:Label Id="NombreNoticia" runat="server" /></a></h2>
                            </div>
                            <div class="entry-content">
                                
                                <br />
                                <br />
                                <p>
                                    <asp:Label ID="DescNoticia" runat="server" /></p>
                                <br />
                                <br />
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
