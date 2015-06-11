<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Projectos.aspx.cs" Inherits="Incubadora_Ideas.Projectos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:aspnet-test2-20150526110433ConnectionString %>' SelectCommand="SELECT [Nome] FROM [Tag]"></asp:SqlDataSource>
    <ul class="list-group" id="tabs" runat="server">
        <li class="list-group-item">
            <span class="badge"></span>
            Cras justo odio
        </li>
    </ul>
    <asp:Literal id="litMarkup" runat="server" />
    <asp:Table ID="Table1" runat="server"></asp:Table>
    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
</asp:Content>
