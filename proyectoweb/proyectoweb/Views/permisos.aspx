<%@ Page Title="" Language="C#" MasterPageFile="~/Views/administracion.Master" AutoEventWireup="true" CodeBehind="permisos.aspx.cs" Inherits="proyectoweb.Views.permisos1" %>
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
                            <h4 class="card-title">Miembros</h4>
                        </div>
                        <div class="card-body">
                            <div class="alert alert-info alert-with-icon" data-notify="container">
                                <i class="material-icons" data-notify="icon">notifications</i>
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <i class="material-icons">close</i>
                                </button>
                                <span data-notify="icon" class="now-ui-icons ui-1_bell-53"></span>
                                <span data-notify="message">
                                    <pre>
                                  <h3>Usuario Administrador</h3> tiene acceso a:
                                  -Publicar,editar y eliminar paginas.
                                  -Asignar y quitar permisos de rol de administrador  a estudiantes.
                                  -Publicar,editar y eliminar noticias.
                                  -Publicar,editar y eliminar actividades.
                                    </pre>
                                </span>
                            </div>

                            <div class="alert alert-info alert-with-icon" data-notify="container">
                                <i class="material-icons" data-notify="icon">notifications</i>
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <i class="material-icons">close</i>
                                </button>
                                <span data-notify="icon" class="now-ui-icons ui-1_bell-53"></span>
                                <span data-notify="message">
                                    <pre>           
           <h3>Usuario Estudiante</h3> tiene acceso a:
          -Consultar actividades y eventos, y realizar la entrega de los y las mismas.
            </pre>
                                </span>
                            </div>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            
                                            <th>   Nombre</th>
                                            <th class="text-center">Programa</th>
                                            <th class="text-center">     Rol</th>
                                          <th class="text-right">Correo</th>
                                           
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <%-- <tr>

                                            <td class="text-center">1</td>
                                            <td>Estudiante Cualquiera #1</td>
                                            <td>Ingenieria de Sitemas</td>

                                            <td class="text-right">
                                                <div class="form-check form-check-inline">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option2">
                                                        <span class="form-check-sign">
                                                            <span class="check"></span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="td-actions text-right">
                                                <div class="form-check form-check-inline">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option3">
                                                        <span class="form-check-sign">
                                                            <span class="check"></span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="text-center">2</td>
                                            <td>Estudiante Cualquiera #2</td>
                                            <td>Ingenieria de Sistemas</td>

                                            <td class="text-right">
                                                <div class="form-check form-check-inline">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
                                                        <span class="form-check-sign">
                                                            <span class="check"></span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td class="td-actions text-right">
                                                <div class="form-check form-check-inline">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                                        <span class="form-check-sign">
                                                            <span class="check"></span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </td>
                                           
                                           </tr>
                                           --%>

                                             <asp:Repeater ID="RepeaterMiembro" runat="server">
                                                        <%-- 
                                                      <asp:Repeater ID="Repeater2" OnItemDataBound="RepiterItem" runat="server">--%>
                                                        <%-- <asp:Repeater ID="RepeaterMiembro" OnItemCommand="RepiterItemCommand" runat="server">--%>
                                                        <ItemTemplate>
                                                            <tr>

                                                                <td><%#Eval("nom_usuario") %> </td>


                                                               


                                                               

                                                                    <%--      <asp:LinkButton  CssClass="btn btn-primary"  ID="LinkButton1"  runat="server" CommandArgument='<%# Eval("id_usuario") %>' CommandName='botoModal'  data-toggle="modal" data-target="#<%#Eval("id_usuario")%> ">
                                                                       <i class="material-icons">edit</i>Editar
                                                                    </asp:LinkButton>--%>

                                                                    <%-- modal --%>




                                                               

                                                               
                                                                <td class="td-actions text-center ">
                                                                    <%#Eval("Programa") %>
                                                                </td>

                                                                 <td class="td-actions text-center ">
                                                                            Miembro
                                                                </td>

                                                                 <td class="td-actions text-right ">
                                                                    <%#Eval("email_usuario") %>
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                                    </asp:Repeater>



                                        
                                    </tbody>
                                </table>
                            </div>
                          <%--  <button type="button" class="btn  btn-success">Actualizar</button>--%>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsContent" runat="server">
</asp:Content>
