<%@ Page Title="" Language="C#" MasterPageFile="~/Views/ViewsPlantillaHeli/plantlillaHeli.Master" AutoEventWireup="true" CodeBehind="QuienesSomos.aspx.cs" Inherits="proyectoweb.Views.ViewsPlantillaHeli.QuienesSomos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="main">
				<div class="section section-cover pt-10 pb-10" style="background-image:<%#Eval("id_grupo_invest")%> ">

					<div class="bg-overlay"></div>
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<div class="text-center">
                                    <asp:Label ID="QuienesSomos_Titulo"  runat="server" CssClass="fz-70 white"/>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div runat="server" id="quienesSomosDiv" visible="true" class="section pt-10 pb-10">
						<div class="container">
							<div class="row">
								<div class="col-sm-12">
									<div class="text-center">
                                        <asp:Label ID="QuienesSomos_desc_Titulo" Text="<b>¿Quiènes  Somos?</b>" runat="server" CssClass="section-title dark pt-3 mb-2" />
										<div class="mb-2"></div>
										<p>
                                            <asp:Label runat="server" ID="QuienesSomos_desc" />
                                           </p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div runat="server" id="misionDiv" class="bg-gray-3 p-5 mb-5">
										<h3 class="fz-20 fw-normal white">MISIÒN</h3>
										<p >
                                            <asp:Label runat="server" ID="mision" />
                                           </p></div>
					<div runat="server" id="visionDiv" class="section">
						<div class="container-fluid">
							<div class="row">
								<div class="col-sm-12 p-0">
									<div class="bg-dark p-5 mb-5">
										<h3 class="fz-20 fw-normal white">Vision</h3>
										<p id="Vision" class="white">
                                            <asp:Label ID="vision" runat="server" />
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div runat="server" id="justificacionDiv" class="section bg-gray pt-10 pb-10">
						<div class="container">
							<div class="row">
										<div class="bg-light p-5 mb-5">
												<h3 class="fz-20 fw-normal">Justificaciòn</h3>
												<p id="justificacion">
                                                    <asp:Label ID="just" runat="server" />

												</p></div>
								
								
							</div>
						</div>
					</div>
					<div runat="server" id="objetivoDiv" visible="true" class="section section-bg-12 section-fixed">
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
                                            <asp:Label ID="objetivo" runat="server" />

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
			</div>
</asp:Content>
