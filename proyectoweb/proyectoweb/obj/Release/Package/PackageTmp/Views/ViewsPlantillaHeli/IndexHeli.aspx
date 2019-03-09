<%@ Page Title="" Language="C#" MasterPageFile="~/Views/ViewsPlantillaHeli/plantlillaHeli.Master" AutoEventWireup="true" CodeBehind="IndexHeli.aspx.cs" Inherits="proyectoweb.Views.ViewsPlantillaHeli.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div id="main">
				<div class="section">
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-12 p-0">
								<div id="rev_slider_2" class="rev_slider fullscreenbanner" style="display:none;" data-version="5.4.1">
									<ul>
                                        <asp:Repeater ID="Repeater2" runat="server">
                                            <ItemTemplate>
										<!-- SLIDE  -->
										<li data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300" data-rotate="0" data-saveperformance="off" data-title="Slide">

											<!-- MAIN IMAGE -->
                                            <asp:Image ImageUrl='<%#Eval("url_imagene") %>' runat="server" alt="" title="" width="1920" height="1000" data-bgposition="center center" data-kenburns="on" data-duration="10000" data-ease="Linear.easeNone" data-scalestart="100" data-scaleend="120" data-rotatestart="0" data-rotateend="0" data-blurstart="0" data-blurend="0" data-offsetstart="0 0" data-offsetend="0 0" data-bgparallax="off" class="rev-slider " />
										
                                        
											<!-- LAYER NR. 10 -->
											<div class="tp-caption Heli-Text-1 text-center tp-resizeme" data-x="['center','center','center','center']" data-hoffset="['1','1','650','650']" 
												 data-y="['middle','middle','top','top']" data-voffset="['17','43','404','404']" data-fontsize="['25','18','18','18']"
												 data-lineheight="['35','30','30','30']" data-fontweight="['300','400','400','400']" data-width="none" data-height="none"
												 data-whitespace="nowrap" data-visibility="['on','on','off','off']" data-type="text" data-responsive_offset="on"
												 data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","speed":1200,"to":"o:1;","delay":1210,"ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
												 data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
												 data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]">
                                                <p>
                                                <asp:Label id="desc_preNoticia" runat="server" Text='<%#Eval("descrip_soperte") %>' />
                                                    </p>
											</div>

											<!-- LAYER NR. 11 -->
											<div class="tp-caption heli-button-white rev-btn" data-x="['center','center','center','center']" data-hoffset="['-4','0','0','0']" 
												 data-y="['middle','middle','middle','middle']" data-voffset="['108','135','54','20']" data-width="none" data-height="none"
												 data-whitespace="nowrap" data-type="button"
												 data-actions='[{"event":"click","action":"simplelink","target":"_blank","url":"#","delay":""}]'
												 data-responsive_offset="on" data-responsive="off"
												 data-frames='[{"from":"y:50px;opacity:0;","speed":570,"to":"o:1;","delay":2070,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"auto:auto;","ease":"nothing"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(34,34,34,1);"}]' data-textAlign="['left','left','left','left']"
												 data-paddingtop="[15,15,15,15]" data-paddingright="[35,35,35,35]" data-paddingbottom="[15,15,15,15]" data-paddingleft="[35,35,35,35]">
                                                <asp:Button ID="LeerNoticia" Text="Leer Noticia"  runat="server" />
											</div>

											<!-- LAYER NR. 12 -->
											<div class="tp-caption Heli-Heading-02 tp-resizeme" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
												 data-y="['middle','middle','middle','middle']" data-voffset="['-91','-60','-60','-72']" data-fontsize="['100','100','100','60']"
												 data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="on"
												 data-frames='[{"from":"y:50px;opacity:0;","speed":510,"to":"o:1;","delay":1330,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"auto:auto;","ease":"nothing"}]'
												 data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
												 data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]">
                                                <asp:Label Text='<%#Eval("titulo_soporte") %>' runat="server" />
											</div>
										</li>
                                        </ItemTemplate>
                                        </asp:Repeater>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="section pt-12 pb-12">
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<div class="text-center">
                                    <asp:Label ID="Label_Somos"   runat="server" CssClass="section-title fz-16 fw-normal ls-16"/>
									
									<div class="heli-typed-words mt-4">

                                        <asp:Label ID="Label_Somos_Desc"  runat="server" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="section pt-10 pb-10">
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<div class="text-center">
									<h1 class="section-title-bold mb-0">PROYECTOS</h1>
									<h2 class="section-title fz-16 fw-normal ls-16 mb-8">Proyectos Recientes</h2>
								</div>
								<div class="service-carousel navi-carousel" data-auto-play="true" data-desktop="1" data-laptop="1" data-tablet="1" data-mobile="1">
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                    
                                            <div class="row">
                                                <div class="col-md-12 ml-auto mr-auto">
                                    <div class="service-item row" >
										<div class="col-md-6"  >
                                            <asp:Image runat="server"  Height="500" Width="400" id="imagenProyecto" ImageUrl='<%#Eval("url_image_proyec") %>' alt=""/>
										</div>
										<div class="col-md-6">
                                            <asp:Label ID="Nombre_Proyecto" Text='<%#Eval("nom_proyecto") %>' CssClass="title white"  runat="server"  Width="600"/>
											
											<div class="content">
                                                <asp:Label ID="Proyect_desc" Text='<%#Eval("proyecto_descrip") %>' runat="server" />
												
											</div>
										</div>
									</div>
                                                 </div>  
                                                </div>
                                            </ItemTemplate>
                                    </asp:Repeater>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="section section-bg-2 pt-10 pb-10">
					<div class="bg-overlay"></div>
					<div class="container">
						<div class="row">
							<div class="col-sm-6 col-lg-offset-0 col-lg-3 col-md-offset-0 col-md-3 col-sm-offset-0 col-xs-6">
								<div class="counter text-center white">
									<div class="counter-icon">
										<i class="pe-7s-portfolio"></i>
									</div>
									<div class="counter-content">
										<h5 class="counter-desc white">Proyectos</h5>
										<h2 class="counter-digit white" data-from="0" data-to="75" data-speed="5000">75</h2>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-offset-0 col-lg-3 col-md-offset-0 col-md-3 col-sm-offset-0 col-xs-6">
								<div class="counter text-center white">
									<div class="counter-icon">
										<i class="pe-7s-mouse"></i>
									</div>
									<div class="counter-content">
										<h5 class="counter-desc white">Noticias Publicadas</h5>
										<h2 class="counter-digit white" data-from="0" data-to="250" data-speed="5000">250</h2>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-offset-0 col-lg-3 col-md-offset-0 col-md-3 col-sm-offset-0 col-xs-6">
								<div class="counter no-border text-center white">
									<div class="counter-icon">
										<i class="pe-7s-users"></i>
									</div>
									<div class="counter-content">
										<h5 class="counter-desc white">Visitas</h5>
										<h2 class="counter-digit white" data-from="0" data-to="49" id="contador" runat="server" data-speed="5000"></h2>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
  
    <link href="../../Content/assetsPlantillaHeli/css/miEstiloPlantilla.css" rel="stylesheet" />
</asp:Content>
