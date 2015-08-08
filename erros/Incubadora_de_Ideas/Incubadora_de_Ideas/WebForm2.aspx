<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Incubadora_de_Ideas.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family:Arial">
    Name:
        <asp:TextBox ID="txtStudenName" runat="server"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" Text="Sibmit" />
        <br />
        <asp:GridView ID="gvStudents" runat="server"></asp:GridView>

    </div>
    </form>
</body>
</html>
