<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EstadoIdeias.aspx.cs" Inherits="Incubadora_de_Ideas.Tag" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT [Id], [Estado] FROM [EstadoIdeia]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    <ul class="list-group"  DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="estado">
        <li class="list-group-item" 
            <span class="badge">14</span>
            Cras justo odio
        </li>
</ul>


    DataSourceID="My_Database" DataTextField="Pais" DataValueField="Id"


</asp:Content>
