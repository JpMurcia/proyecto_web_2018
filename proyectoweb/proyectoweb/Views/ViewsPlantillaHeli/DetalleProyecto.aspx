<%@ Page Title="" Language="C#" MasterPageFile="~/Views/ViewsPlantillaHeli/plantlillaHeli.Master" AutoEventWireup="true" CodeBehind="DetalleProyecto.aspx.cs" Inherits="proyectoweb.Views.ViewsPlantillaHeli.DetalleProyecto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
				<div class="section bg-dark pt-9 pb-6 mb-4">
					<div class="container">
						<div class="row">
							<div class="col-lg-5">
								<div class="breadcrumb">
									<ul class="bread_crumb">
										<li><a href="index.html">Home</a></li>
										<li>DetalleS deL proyecto</li>
									</ul>
								</div>
								<h2 class="fz-32 mb-3 white">DETALLES DEL PROYECTO</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="section mb-2">
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<img class="mb-4" alt="" src="images/project/project_detail.jpg" />
                                <asp:Image ID="ImagenProyecto"  runat="server" />
							</div>
						</div>
					</div>
				</div>
				<div class="section bg-gray pt-8 pb-8">
					<div class="container">
						<div class="row">
							<div class="col-sm-8">
								<h2 class="fz-24 mb-2">
                                    <asp:Label ID="NombreProyecto" runat="server" /></h2>
								<p id="desc_proyecto">
                                    <asp:Label id="DescripcionProyecto" runat="server" /></p>
									</div>
							<div class="col-sm-4">
								<div class="mb-5 d-block d-md-block d-lg-none"></div>
								<%--<div class="portfolio-info">
									<ul>
										<li><span>Date:</span> October 20, 2015</li>
										<li><span>Category:</span> <a href="#">Branding</a>, <a href="#">Print</a></li>
										<li>
											<div class="share">
												<span>Share: </span>
												<a class="social" target="_blank" href="#"><i class="fa fa-facebook"></i></a>
												<a class="social" target="_blank" href="#"><i class="fa fa-twitter"></i></a>
												<a class="social" target="_blank" href="#"><i class="fa fa-google-plus"></i></a>
											</div>
										</li>
										<li><a href="#" class="btn btn-rounded btn-dark"><span>VISIT WEBSITE</span></a></li>
									</ul>
								</div>--%>
							</div>
						</div>
					</div>
				</div>



</asp:Content>
