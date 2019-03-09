<%@ Page Title="" Language="C#" MasterPageFile="~/Views/ViewsPlantillaHeli/plantlillaHeli.Master" AutoEventWireup="true" CodeBehind="Semillero.aspx.cs" Inherits="proyectoweb.Views.ViewsPlantillaHeli.Semillero" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="main">
				<div class="section">
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-12 p-0">
								<div id="rev_slider_7" class="rev_slider fullscreenbanner" style="display:none;" data-version="5.4.1">
                                    <ul>
                                        
                                   
										<!-- SLIDE  -->
										<li data-index="rs-21"  >
											
											<!-- MAIN IMAGE -->
											<img src="../../Content/assetsLogin/img/bg8.jpg" alt=""   ID="ImagenSemillero" runat="server"  title="" width="1920" height="1100" data-lazyload="images/slider/slider_24.jpg" data-bgposition="center center" data-kenburns="on" data-duration="10000" data-ease="Linear.easeNone" data-scalestart="100" data-scaleend="150" data-rotatestart="0" data-rotateend="0" data-blurstart="0" data-blurend="0" data-offsetstart="0 0" data-offsetend="0 0" data-bgparallax="10" class="rev-slidebg" />

										</li>
									 </ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="QuineSomosDiv" runat="server" class="section pt-10 pb-10">
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<div class="text-center">
                                    <asp:Label ID="QuienesSomos_desc_Titulo_Semillero" Text="<b>¿Quiènes  Somos?</b>" runat="server" CssClass="section-title dark pt-3 mb-2" />
										<div class="mb-2"></div>
                                    
									<p id="QuienesSomos_desc_Semillero"> <asp:Label runat="server" ID ="QuinesSemillero"></asp:Label> </p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="MisionDiv" runat="server" class="bg-gray-3 p-5 mb-5">
									<h3 class="fz-20 fw-normal white">MISIÒN</h3>
                                    
									<p id="Mision_Semillero" class="white">  <asp:Label ID="MisionSemillero" runat="server"></asp:Label></p>
								</div>
				<div id="VisionDiv" runat="server" class="section">
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-12 p-0">
								<div class="bg-dark p-5 mb-5">
									<h3 class="fz-20 fw-normal white">Vision</h3>

                                     
									<p id="Vision_Semillero" class="white">   <asp:Label ID="VisionSemillero" runat="server"></asp:Label>       </p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="JustificacionDiv" runat="server" class="section bg-gray pt-10 pb-10">
					<div class="container">
						<div class="row">
									<div class="bg-light p-5 mb-5">
											<h3 class="fz-20 fw-normal">Justificaciòn</h3>
                                         <asp:Label ID="JustificacionSemillero" runat="server"></asp:Label>
											<p d="justificacion_Semillero">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
										</div>
							
							
						</div>
					</div>
				</div>
				<div   id="objetivoDiv"   runat="server"  class="section section-bg-12 section-fixed">
					<div class="container">
						<div class="row">
							<div class="col-sm-6 pr-0 pl-0 pt-10 pb-10 bg-white">
									<h2 class="fz-18 fw-normal" >Objetivos</h2>
								<div class="feature-item style-2 mb-3">
										
									<div class="feature-icon">
										<div class="feature-icon-inner">
											<i class="pe-7s-monitor"></i>
										</div>
									</div>
									<div class="desc">
                                        <asp:Label ID="objetivo" Text="Responds elegantly to various screen sizes and has been tested to work across devices, from the largest of desktops to modern smartphone.
										t" runat="server" />
										</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


</asp:Content>
