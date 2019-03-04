<%@ Page Title="" Language="C#" MasterPageFile="~/Views/ViewsPlantillaHeli/plantlillaHeli.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="proyectoweb.Views.ViewsPlantillaHeli.Blog" %>

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
                                <li>Blog</li>
                            </ul>
                        </div>
                        <h2 class="fz-32 mb-3 white"><b>NUESTRO</b> BLOG</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="section bg-gray pt-10 pb-10">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <div class="blog-item style-1 mb-3">
                                    <div class="blog-item-wrapper">
                                        <div class="media-wrapper">
                                            <div class="media">
                                                <img src="../../Content/assetsLogin/img/test3.jpg" style="height:350px; width:400px;"/>
                                            </div>
                                            <div class="overlay-wrapper">
                                                <div class="overlay"></div>
                                                <div class="popup">
                                                    <a class="prettyphoto" data-rel="prettyPhoto[gallery]" href="images/blog/blog_2_large.jpg">
                                                        <i class="pe-7s-search"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="content">
                                            <div class="cate">
                                                February 26, 2016 / <a href="#">Blog</a>
                                            </div>
                                            <h3><a href="blog-detail.html">Responsive Design Process</a></h3>
                                            <asp:Label ID="pre_Noticia" Text="You cannot plan for and design a responsive, content-focused, mobile-first website the same way. If..." runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pagination text-center">
                            <a class="prev page-numbers" href="#">← Previous</a>
                            <a class="page-numbers" href="#">1</a>
                            <span class="page-numbers current">2</span>
                            <a class="page-numbers" href="#">3</a>
                            <a class="next page-numbers" href="#">Next →</a>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="sidebar">
                            <div class="widget widget-recent-entries">
                                <h3 class="widget-title">Noticias recientes</h3>
                                <ul>
                                    <li>
                                        <a href="#">Beautiful Typography</a>
                                        <span class="post-date">February 26, 2018</span>
                                    </li>
                                    <li>
                                        <a href="#">Responsive Design Process</a>
                                        <span class="post-date">February 26, 2018</span>
                                    </li>
                                    <li>
                                        <a href="#">A Little Journey</a>
                                        <span class="post-date">February 26, 2018</span>
                                    </li>
                                    <li>
                                        <a href="#">Powerful Workflow Tips</a>
                                        <span class="post-date">February 26, 2018</span>
                                    </li>
                                    <li>
                                        <a href="#">Evaluate Your Product</a>
                                        <span class="post-date">February 26, 2018</span>
                                    </li>
                                </ul>
                            </div>
                            <div class="widget widget-archive">
                                <h3 class="widget-title">Archivo</h3>
                                <ul>
                                    <li><a href="#">February 2018</a></li>
                                    <li><a href="#">September 2018</a></li>
                                </ul>
                            </div>
                            <div class="widget widget-tag-cloud">
                                <h3 class="widget-title">Tags</h3>
                                <div class="tagcloud">
                                    <a href="#">Inspiration</a>
                                    <a href="#">News</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
