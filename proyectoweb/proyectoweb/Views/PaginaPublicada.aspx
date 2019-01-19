<%@ Page Title="" Language="C#" MasterPageFile="~/Views/administracion.Master" AutoEventWireup="true" CodeBehind="PaginaPublicada.aspx.cs" Inherits="proyectoweb.Views.NoticiaPublicada" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="content">
    <div class="container-fluid">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header card-header-rose card-header-icon">
          <div class="card-icon">
            <i class="material-icons">assignment</i>
          </div>
          <h4 class="card-title">Paginas Publicadas</h4>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table">
              <thead>
                <tr>
                  <th class="text-center">#</th>
                  <th>Nombre</th>
                  <th>Programa</th>
                  <th>Fecha de publicaciòn</th>
                  <th class="text-right">Visitas</th>
                  <th class="text-right">Acciòn</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="text-center">1</td>
                  <td>Grupo de Investigacion #1</td>
                  <td>Quimica</td>
                  <td>15/10/2018</td>
                  <td class="text-right">200</td>
                  <td class="td-actions text-right">
                    <button type="button" rel="tooltip" class="btn btn-success">
                      <i class="material-icons">edit</i>
                    </button>
                    <button type="button" rel="tooltip" class="btn btn-danger">
                      <i class="material-icons">close</i>
                    </button>
                  </td>
                </tr>
                  
                <tr>
                  <td class="text-center">2</td>
                  <td>Grupo de Investigacion #2</td>
                  <td>Ingenieria de Sistemas</td>
                  <td>15/10/2018</td>
                  <td class="text-right">200</td>
                  <td class="td-actions text-right">
                    <button type="button" rel="tooltip" class="btn btn-success" >
                     <a href="FormularioDePagina1.aspx" target="_blank"> <i class="material-icons"> edit</i></a>
                    </button>
                    <button type="button" rel="tooltip" class="btn btn-danger">
                      <i class="material-icons">close</i>
                    </button>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  
   
  </div>
        </div>
    </div>
</asp:Content>
