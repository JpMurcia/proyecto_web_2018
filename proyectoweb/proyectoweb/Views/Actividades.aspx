<%@ Page Title="" Language="C#" MasterPageFile="~/Views/administracion.Master" AutoEventWireup="true" CodeBehind="Actividades.aspx.cs" Inherits="proyectoweb.Views.Actividades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Content/Carousel/carousel.css" rel="stylesheet" />


    <div class="content">
<div class="container-fluid">
  <div class="header text-center">
    <h3 class="title">Actividades</h3>
   
  </div>
  <div class="row">
    <div class="col-md-10 ml-auto mr-auto">
      <div class="card card-calendar">
        <div class="card-body ">
            
      <div class="container">
<div class="page-header">
  <h3>Carousel multiple item for Boostrap</h3>
</div>

<div class="row">
<div class="col-xs-12">
  <div class="carousel slide" id="myCarousel" data-ride="carousel">
    <div class="carousel-inner">
      <div class="item active">
        <div class="row">
          <div class="col-xs-3">
            <a href="#"><img src="http://placehold.it/300x200/E8117F/ffffff?text=1" class="img-responsive"></a>
          </div>
            <div class="col-xs-3">
            <a href="#"><img src="http://placehold.it/300x200/31B0D5/ffffff?text=2" class="img-responsive"></a>
          </div>
          <div class="col-xs-3">
            <a href="#"><img src="http://placehold.it/300x200/94EF23/ffffff?text=3" class="img-responsive"></a>
          </div>
          <div class="col-xs-3">
            <a href="#"><img src="http://placehold.it/300x200/FFA602/ffffff?text=4" class="img-responsive"></a>
          </div>
        </div>
      </div>
      <div class="item">
        <div class="row">
          <div class="col-xs-3">
            <a href="#"><img src="http://placehold.it/300x200/E8117F/ffffff?text=5" class="img-responsive" ></a>
          </div>
          <div class="col-xs-3">
            <a href="#"><img src="http://placehold.it/300x200/31B0D5/ffffff?text=6" class="img-responsive" ></a>
          </div>
          <div class="col-xs-3">
            <a href="#"><img src="http://placehold.it/300x200/94EF23/ffffff?text=7" class="img-responsive" ></a>
          </div>
          <div class="col-xs-3">
            <a href="#"><img src="http://placehold.it/300x200/FFA602/ffffff?text=8" class="img-responsive" ></a>
          </div>
        </div>
      </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <button type="button" class="btn btn-primary btn-round btn-xs">
        <span aria-hidden="true" class="glyphicon glyphicon-menu-left"></span>
      </button>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <button type="button" class="btn btn-primary btn-round btn-xs">
        <span aria-hidden="true" class="glyphicon glyphicon-menu-right"></span>
      </button>
    </a>
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


    <script src="../Content/assetsAdministracion/js/Calendar.js"></script>


</asp:Content>
