<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="testpage.aspx.cs" Inherits="Incubadora_Ideias.testpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container">
    <%--<h2>Dynamic Tabs</h2>--%>
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#home">Editar utilizador</a></li>
        <li><a data-toggle="tab" href="#menu1">Editar Ideias</a></li>
        <li><a data-toggle="tab" href="#menu2">Erros</a></li>
        <li><a data-toggle="tab" href="#menu3">Tags</a></li>
    </ul>

    <div class="tab-content">
        <div id="home" class="tab-pane fade in active">
            <h3>Utilizador</h3>

            <div id="menu2" class="tab-pane fade">
                <h3>inserir</h3>
                <div class="input-group">
                    <div class="input-group-btn">




                        <input type="text" class="form-control" aria-label="...">
                        <button class="btn btn-default" type="button">Go!</button>
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
                        <ul class="dropdown-menu dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                    </div>
                    <!-- /btn-group -->
                </div>

                <asp:GridView ID="GVerros" runat="server" CssClass="table" DataSourceID="SqlDErros" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao"></asp:BoundField>
                        <asp:BoundField DataField="Url" HeaderText="Url" SortExpression="Url"></asp:BoundField>
                        <asp:TemplateField HeaderText="Titulo" SortExpression="Titulo">
                            <EditItemTemplate>
                                <asp:TextBox runat="server" Text='<%# Bind("Titulo") %>' ID="TextBox1"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("Titulo") %>' ID="Label1"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="Anexo" HeaderText="Anexo" SortExpression="Anexo"></asp:BoundField>
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDErros" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT Erros.Descricao, Erros.Url, Erros.Titulo, ErrosAnexo.Anexo, AspNetUsers.Email FROM Erros INNER JOIN ErrosAnexo ON Erros.Id = ErrosAnexo.IdErro INNER JOIN AspNetUsers ON Erros.IdUser = AspNetUsers.Id"></asp:SqlDataSource>

            </div>
        </div>
    </div>
</div>


</asp:Content>
