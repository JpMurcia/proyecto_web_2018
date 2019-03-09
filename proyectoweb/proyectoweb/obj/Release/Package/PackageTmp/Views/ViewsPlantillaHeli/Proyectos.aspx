<%@ Page Title="" Language="C#" MasterPageFile="~/Views/ViewsPlantillaHeli/plantlillaHeli.Master" AutoEventWireup="true" CodeBehind="Proyectos.aspx.cs" Inherits="proyectoweb.Views.ViewsPlantillaHeli.Proyectos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="main">
				<div class="section bg-gray pt-9 pb-6 mb-4">
					<div class="container">
						<div class="row">
							<div class="col-sm-5">
								<div class="breadcrumb">
									<ul class="bread_crumb">
										<li><a href="index.html">Principal</a></li>
										<li>Proyectos</li>
									</ul>
								</div>
								<h2 class="fz-32 mb-3"><b>Nuestros</b>proyectos</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="section mb-5">
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-12">
								<div class="tm-grid-wrapper" data-type="masonry" data-xs-columns="1" data-sm-columns="2" data-lg-columns="3" data-gutter="10">
									<div class="tm-grid has-animation">
										<div class="grid-sizer"></div>
										 <asp:Repeater ID="Repeater3" runat="server">
                                        <ItemTemplate>
                                        <div class="portfolio-item grid-item masonry-item">
											<div class="media">
                                                <asp:Image runat="server"   id="imagenProyecto" ImageUrl='<%#Eval("url_image_proyec") %>' alt=""/>
												<div class="overlay-wrapper">
													<div class="overlay"></div>
                                                   <div class="popup">
														<div class="popup-inner">
															<a  href="DetalleProyecto.aspx?IdProyecto=<%#Eval("id_produc") %>">
																<i class="pe-7s-search"></i>
														</div>
													</div>
                                                    </div>
											</div>
											<div class="content">
												<h3  ><a   href="DetalleProyecto.aspx?IdProyecto=<%#Eval("id_produc") %>"><asp:Label ID="Nombre_Proyecto"  Text='<%#Eval("nom_proyecto") %>' runat="server"/>
											</a></h3>
                                                <h3><a href="DetalleProyecto.aspx?IdProyecto=<%#Eval("id_produc") %>">Visitar
											</a></h3>
											</div>
										</div>
										
										</ItemTemplate>
                                    </asp:Repeater>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
</asp:Content>
