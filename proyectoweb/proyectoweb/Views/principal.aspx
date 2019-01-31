﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/administracion.Master" AutoEventWireup="true" CodeBehind="principal.aspx.cs" Inherits="proyectoweb.Views.principal" %>

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

                            <div class="col-md-4 ml-auto mr-auto">
                                <div class="card card-profile">
                                    <div class="card-avatar">
                                        <a href="#pablo">
                                            <img src="../Content/assetsAdministracion/img/giecom.png" />
                                        </a>
                                    </div>
                                    <div class="card-body ">
                                        <h4 class="card-title">Grupo De Investigaciòn N</h4>
                                        <p class="card-description">
                                            Grupo de investigaciòn dedicado a muchas cosas,entre esas muchas cosas màs y màs y mas   
                                        </p>
                                        <asp:Button runat="server" ID="verPicardie" CssClass="btn btn-primary" OnClick="verPicardie_Click" Text="Crear Pagina" />

                                    </div>
                                </div>
                            </div>



                            <div class="cards" id="moorphinCards">
                                <h3 align="center ">PLANTILLAS </h3>
                                <div class="col-md-12 ml-auto mr-auto">

                                    <div class="row">
                                        <div class="rotating-card-container manual-flip col-md-6  " style="margin-bottom: 30px;">
                                            <div class="card card-rotate">
                                                <div class="row">
                                                    <div class="col-md-2"></div>
                                                    <div class="col-md-8">
                                                        <div class="row">
                                                            <div class="front front-background col-md-12" style="background-image: url(../Content/assetsAdministracion/img/flags/plantilla-responsiva-1-200x200.jpg); width: 385.756px;">

                                                                <div class="card-body">
                                                                    <a href="#pablo">
                                                                        <h3 class="card-title">PLANTILLA NÙMERO 1</h3>
                                                                    </a>
                                                                    <div class="stats text-center">
                                                                        <button class="btn btn-info">
                                                                            <i class="material-icons">pageview</i>Preevizualizar<div class="ripple-container"></div>
                                                                        </button>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div class="form-check form-check-radio col-md-3 content-center form-check-inline ml-auto mr-auto" ">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">Selecionar
                                                                     <span class="circle">
                                                                         <span class="check"></span>
                                                                     </span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-2"></div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="rotating-card-container manual-flip col-md-6 " style="margin-bottom: 30px;">
                                            <div class="card card-rotate">
                                                <div class="row">
                                                    <div class="col-md-2"></div>
                                                    <div class="col-md-8">
                                                    <div class="row">
                                                        
                                                <div class="front front-background  col-md-12" style="background-image: url(../Content/assetsAdministracion/img/flags/post-planes-de-mkt-informes-y-ebooks.png); width: 385.756px;">

                                                    <div class="card-body">
                                                        <a href="#pablo">
                                                            <h3 class="card-title">PLANTILLA NÙMERO 2</h3>
                                                        </a>
                                                        <div class="stats text-center">
                                                            <button class="btn btn-info">
                                                                <i class="material-icons">pageview</i>Preevizualizar<div class="ripple-container"></div>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                         <div class="form-check form-check-radio form-check-inline col-md-3 ml-auto mr-auto">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option1">
                                                        Seleccionar 
                                                     <span class="circle">
                                                         <span class="check"></span>
                                                     </span>
                                                    </label>
                                                </div>
                                                     
                                                    </div>
                                                        </div>
                                                     </div>
                                                
                                            <div class="col-md-2"></div>
                                                </div>
                                            </div>

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
