<%@ Page Title="" Language="C#" MasterPageFile="~/Views/administracion.Master" AutoEventWireup="true" CodeBehind="Actividades.aspx.cs" Inherits="proyectoweb.Views.Actividades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">
<div class="container-fluid">
  <div class="header text-center">
    <h3 class="title">Actividades</h3>
   
  </div>
  <div class="row">
    <div class="col-md-10 ml-auto mr-auto">
      <div class="card card-calendar">
        <div class="card-body ">
            
          <div id="fullCalendar"></div>

        </div>
      </div>
    </div>
  </div>
</div>
        </div>


    <script src="../Content/assetsAdministracion/js/Calendar.js"></script>


</asp:Content>
