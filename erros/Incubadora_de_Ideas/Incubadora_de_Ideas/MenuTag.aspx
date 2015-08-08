<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenuTag.aspx.cs" Inherits="Incubadora_de_Ideas.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server<ul class="list-group">

  <li class="list-group-item">
    <span class="badge">14</span>
    Cras justo odio
  </li>
</ul>

    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1"></asp:ListView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT e.IdTag, e.Nome, count(*) as num FROM dbo.Tag e,DBO.TagIdeia i where e.IdTag =i.IdTag group by e.IdTag, e.Nome
 order by num;"></asp:SqlDataSource>
</asp:Content>
