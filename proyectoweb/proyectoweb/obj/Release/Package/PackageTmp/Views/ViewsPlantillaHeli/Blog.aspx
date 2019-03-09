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

                      <asp:Repeater ID="RepeaterNoticia" runat="server">
                      <ItemTemplate>


                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <div class="blog-item style-1 mb-3">
                                    <div class="blog-item-wrapper">
                                        <div class="media-wrapper">
                                            <div class="media">
                                                <img id="img_noticia" runat="server" src='<%#Eval("url_imagene")%>' style="height:350px; width:400px;"/>
                                            </div>
                                          
                                        </div>
                                        <div class="content">
                                            <div class="cate">
                                               <asp:Label ID="Fecha" Text="" runat="server" /><a href="#">Blog</a>
                                            </div>
                                            <h3  id="Titulo_proyec" runat="server"  ><a href="DetalleNoticia.aspx?IdNoticia=<%#Eval("id_soporte") %>">
                                                <asp:Label ID="nom_noticia" Text='<%#Eval("titulo_soporte")%>' runat="server" /></a></h3>
                                          <h6>
                                              Proyecto relacionado:
                                             <asp:Label ID="nom_proye_relac" Text='<%#Eval("nom_proyecto")%>' runat="server" />
                                          </h6>
                                          
                                             <asp:Label  Text="Detalles:" runat="server" /> <br />
                                            <asp:Label ID="pre_Noticia" Text='<%#Eval("descrip_soperte")%>'  runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </ItemTemplate>
                  </asp:Repeater>


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


                                    <asp:Repeater ID="RepeaterNoticiaCostado" runat="server">
                                        <ItemTemplate>

                                            <li>
                                                <a href="#"><%#Eval("titulo_soporte") %>

                                                </a>
                                                          <br />
                                                <span class="post-date">
                                                    <%#Eval("Fecha_publica") %>
                                                    </span>
                                            </li>
                                                    
                                        </ItemTemplate>
                                    </asp:Repeater>

                                  <%--  February 26, 2018--%>
                                    
                                </ul>
                            </div>
                           
                         <%--   <div class="widget widget-tag-cloud">
                                <h3 class="widget-title">Tags</h3>
                                <div class="tagcloud">
                                    <a href="#">Inspiration</a>
                                    <a href="#">News</a>
                                </div>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
