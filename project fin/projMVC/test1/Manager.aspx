<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Manager.aspx.vb" Inherits="test1.manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSourceRegist" runat="server" ConnectionString="<%$ ConnectionStrings:Projecto finalConnectionString %>" SelectCommand="SELECT * FROM [Utilizador]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" Height="240px" Width="385px" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="nUtilizador" DataSourceID="SqlDataSourceRegist">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="nUtilizador" HeaderText="nUtilizador" InsertVisible="False" ReadOnly="True" SortExpression="nUtilizador" />
                <asp:BoundField DataField="CorreioEletronico" HeaderText="CorreioEletronico" SortExpression="CorreioEletronico" />
                <asp:BoundField DataField="PalavraChave" HeaderText="PalavraChave" SortExpression="PalavraChave" />
                <asp:BoundField DataField="NomeUtilizador" HeaderText="NomeUtilizador" SortExpression="NomeUtilizador" />
                <asp:BoundField DataField="PerguntaSecreta" HeaderText="PerguntaSecreta" SortExpression="PerguntaSecreta" />
                <asp:BoundField DataField="RespostaPerguntaSecreta" HeaderText="RespostaPerguntaSecreta" SortExpression="RespostaPerguntaSecreta" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                <asp:BoundField DataField="Fotografia" HeaderText="Fotografia" SortExpression="Fotografia" />
                <asp:BoundField DataField="Aplido" HeaderText="Aplido" SortExpression="Aplido" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
