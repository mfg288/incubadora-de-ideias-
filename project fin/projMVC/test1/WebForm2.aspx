<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm2.aspx.vb" Inherits="test1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .control-group {
            text-align: left;
        }
        .auto-style1 {
            width: 322px;
        }
        
*,
*:before,
*:after {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}

  * {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    box-shadow: none !important;
  }
  
label {
  display: inline-block;
  margin-bottom: 5px;
  font-weight: bold;
}

        #Reset1 {
            width: 71px;
        }

        .auto-style3 {
            width: 322px;
            text-align: right;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style4 {
            width: 392px;
        }
        .auto-style5 {
            width: 322px;
            font-weight: bold;
            font-size: medium;
        }

    </style>
</head>
<body>
    <form  runat="server">
    <div>

<div class="control-group">
    <table style="width: 100%;">
        <tr>
            <td class="auto-style3">
                <h3>Titulo</h3>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <h3>Descrição</h3>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server" Height="150px" Width="374px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <h3>Tipo de Ideia</h3>
            </td>
            <td class="auto-style4">
 
                    <asp:RadioButtonList ID="RBEmpresa" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="True" Height="16px" RepeatDirection="Horizontal" Width="240px">
                        <asp:ListItem>Publica</asp:ListItem>
                        <asp:ListItem>Privada</asp:ListItem>
                    </asp:RadioButtonList>
 
                </td>
            <td>&nbsp;</td>
        </tr>     
           <tr>
            <td class="auto-style3">
                <h3>Categoria</h3>
               </td>
            <td class="auto-style4">
                    <asp:DropDownList ID="DDCoutry" runat="server" ClientIDMode="AutoID" Width="250px">
                        <asp:ListItem>Categoria</asp:ListItem>
                        <asp:ListItem>Redes</asp:ListItem>
                        <asp:ListItem>Base de Dados</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            <td>&nbsp;</td>
        </tr>    
            <tr>
            <td class="auto-style3">
                <h3>Categoria</h3>
                </td>
            <td class="auto-style4">
                    <asp:DropDownList ID="DDCoutry0" runat="server" ClientIDMode="AutoID" Width="250px">
                        <asp:ListItem>Subcategoria</asp:ListItem>
                        <asp:ListItem>Java </asp:ListItem>
                        <asp:ListItem>C#</asp:ListItem>
                        <asp:ListItem>C++</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            <td>&nbsp;</td>
        </tr>       
         <tr>
            <td class="auto-style3">
                <h3>Telefone</h3>
             </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
             </td>
            <td>&nbsp;</td>
        </tr>
              <tr>
            <td class="auto-style3">
                <h3>E-Mail</h3>
                  </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
                  </td>
            <td>&nbsp;</td>
        </tr>
                      <tr>
            <td class="auto-style3">
                <h3>Imagens</h3>
                          </td>
            <td class="auto-style4">
 
    <input type="file" id="exampleInputFile" width="300px"></td>
            <td>&nbsp;</td>
        </tr>
                      <tr>
            <td class="auto-style3">
                <h3>Anexos</h3>
                          </td>
            <td class="auto-style4">
 
    <input type="file" id="exampleInputFile0" width="300px"></td>
            <td>&nbsp;</td>
        </tr>
                      <tr>
            <td class="auto-style3">
                <h3>Convidar</h3>
                          </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox5" runat="server" Width="250px"></asp:TextBox>
                          </td>
            <td>&nbsp;</td>
        </tr>
                      <tr>
            <td class="auto-style5">
                <h3></h3>
                          </td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
                      <tr>
            <td class="auto-style5">
                <h3></h3>
                          </td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" Text="Criar Idea" Width="83px" /> &nbsp;
                    <input id="Reset1" type="reset" value="reset" /></td>
            <td>&nbsp;</td>
        </tr>
                      <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
                      <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
                      <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    </div>
    </form>
</body>
</html>
