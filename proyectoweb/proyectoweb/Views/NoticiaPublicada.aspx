<%@ Page Title="" Language="C#" MasterPageFile="~/Views/administracion.Master" AutoEventWireup="true" CodeBehind="NoticiaPublicada.aspx.cs" Inherits="proyectoweb.Views.NoticiaPublicada" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
<div class="content">
    <div class="container-fluid">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header card-header-rose card-header-icon">
          <div class="card-icon">
            <i class="material-icons">assignment</i>
          </div>
          <h4 class="card-title">Noticias Publicadas</h4>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table">
              <thead>
                <tr>
                  <th class="text-center">#</th>
                  <th>Nombre</th>
                  <th>Proyecto vinculado</th>
                  <th>Fecha de publicaciòn</th>
                  <th class="text-right">Acciòn</th>
                </tr>
              </thead>
              <tbody>

                  <asp:Repeater ID="RepeaterNoticia" runat="server">
                      <ItemTemplate>
                <tr>
                  <td class="text-center">1</td>
                  <td><%#Eval("titulo_soporte") %></td>
                  <td><%#Eval("nom_proyecto") %></td>
                  <td><%#Eval("Fecha_publica") %></td>
                  <td class="td-actions text-right">
                      <asp:LinkButton ID="EditarNoticia" runat="server" OnCommand="EditarNoticia_Command" CssClass="btn btn-success" CommandArgument='<% #Eval("id_soporte") %>' >
                          <i class="material-icons">edit</i>
                      </asp:LinkButton>
                  <asp:LinkButton ID="EliminarNoticia" runat="server" OnClick="EliminarNoticia_Click" CssClass="btn btn-danger" >
                          <i class="material-icons">close</i>
                      </asp:LinkButton>
                  </td>
                </tr>
                          </ItemTemplate>
                  </asp:Repeater>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  
   
  </div>
        </div>
    </div>
        </form>
</asp:Content>
