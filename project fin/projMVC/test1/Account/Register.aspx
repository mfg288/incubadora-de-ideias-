<%@ Page Title="Register" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Register.aspx.vb" Inherits="test1.Register" %>

<%@ Import Namespace="test1" %>
<%@ Import Namespace="Microsoft.AspNet.Identity" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>

    <div class="form-horizontal">
        <h4>Create a new account.</h4>
        <hr />
        <table style="width: 100%;">
            <tr>
                <td class="text-right" style="width: 280px; font-weight: bold; font-size: medium;">
                    <h3 style="font-size: medium"><strong>&nbsp;User name&nbsp;</strong></h3>
                </td>
                <td style="width: 287px">
                    <asp:TextBox ID="TbName" runat="server" ClientIDMode="AutoID" ValidateRequestMode="Enabled" Width="250px" placeholder="Ivo"></asp:TextBox>
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TbName" ErrorMessage="Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="text-right" style="width: 280px; font-weight: bold; font-size: medium;">
                    <h3 style="font-size: medium">&nbsp;E-mail&nbsp;</h3>
                 </td>
                <td style="width: 287px">
                    <asp:TextBox ID="TbEmail" runat="server" ClientIDMode="AutoID" ValidateRequestMode="Enabled" Width="250px" placeholder="ivo.test@example.com"></asp:TextBox>
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TbEmail" ErrorMessage="E-mail is required" ForeColor="Red"></asp:RequiredFieldValidator>

                    <br />

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ControlToValidate="TbEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 </td>
            </tr>
            <tr>
                <td class="text-right" style="width: 280px; font-weight: bold; height: 24px; font-size: medium;">
                    <h3 style="font-size: medium">Password</h3>
                </td>
                <td style="width: 287px; height: 24px">
                    <asp:TextBox ID="TBPsw" runat="server" ClientIDMode="AutoID" Width="250px" TextMode="Password"></asp:TextBox>
                </td>
                <td style="height: 24px" class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TBPsw" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="text-right" style="width: 280px; font-weight: bold; font-size: medium;">
                    <h3 style="font-size: medium">Confirm Password</h3>
                </td>
                <td style="width: 287px">
                    <asp:TextBox ID="TBCpsw" runat="server" ClientIDMode="AutoID" Width="250px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TBCpsw" ErrorMessage="Confirm password is required." ForeColor="Red"></asp:RequiredFieldValidator>

                    <br />

                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TBPsw" ControlToValidate="TBCpsw" ErrorMessage="Password must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
                        <tr>
                <td class="text-right" style="width: 280px; font-weight: bold; font-size: medium;">
                    <h3 style="font-size: medium"><strong>Countr</strong><b>y</b></h3>
                            </td>
                <td style="width: 287px">
                    <asp:DropDownList ID="DDCoutry" runat="server" ClientIDMode="AutoID" Width="250px">
                        <asp:ListItem>Secect Country</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>Portugal</asp:ListItem>
                        <asp:ListItem>German</asp:ListItem>
                    </asp:DropDownList>
                            </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DDCoutry" ErrorMessage="Select a coutry" ForeColor="Red" InitialValue="Secect Country"></asp:RequiredFieldValidator>
                            <br />
                            </td>
            </tr>
                        <tr>
                <td class="text-right" style="width: 280px; font-weight: bold; height: 22px; font-size: medium;">
                    <h3></h3>
                            </td>
                <td style="width: 287px; height: 22px;">
                    
                    </td>
                <td class="text-left" style="height: 22px">

                    <br />

                </td>
            </tr>
                        <tr>
                <td class="text-right" style="width: 280px; font-weight: bold; height: 24px; font-size: medium;">
                    <h3></h3>
                            </td>
                <td style="width: 287px; height: 24px;">
 
                    <asp:RadioButtonList ID="RBEmpresa" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="True" Height="16px" RepeatDirection="Horizontal" Width="240px">
                        <asp:ListItem>Empresa</asp:ListItem>
                        <asp:ListItem>Pessoal</asp:ListItem>
                    </asp:RadioButtonList>
 
                </td>
                <td class="text-left" style="height: 24px">


                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RBEmpresa" ErrorMessage="Select option" ForeColor="Red"></asp:RequiredFieldValidator>


                </td>
            </tr>
                        </tr>

                        <tr>
                <td class="text-right" style="width: 280px; font-weight: bold; height: 24px; font-size: medium;">
                    <h3 style="font-size: medium">Pergunta</h3>
                            </td>
                <td style="width: 287px; height: 24px;">
 
                    <asp:DropDownList ID="DDPergunta" runat="server" Width="250px">
                        <asp:ListItem>Pergunta</asp:ListItem>
                        <asp:ListItem>Cor perferida</asp:ListItem>
                        <asp:ListItem>Animal perfrido</asp:ListItem>
                        <asp:ListItem>Qual foi o primeiro Emprego</asp:ListItem>
                    </asp:DropDownList>
 
                </td>
                <td class="text-left" style="height: 24px">


                    <asp:RequiredFieldValidator ID="RFVPergunta" runat="server" ControlToValidate="DDPergunta" ErrorMessage="Quest required" ForeColor="Red"></asp:RequiredFieldValidator>


                </td>
            </tr>
                                    <tr>
                <td class="text-right" style="width: 280px; font-weight: bold; font-size: medium;">
                    <h3 style="font-size: medium">Resposta</h3>
                                        </td>
                <td style="width: 287px">
 
                    <asp:TextBox ID="TBReposta" runat="server" ClientIDMode="AutoID" Width="250px"></asp:TextBox>
 
                </td>
                <td class="text-left">


                    <asp:RequiredFieldValidator ID="RFVResposta" runat="server" ControlToValidate="TBReposta" ErrorMessage="Quest required" ForeColor="Red"></asp:RequiredFieldValidator>


                </td>
            </tr>
                        </tr>
                        <tr>
                <td class="text-right" style="width: 280px; font-weight: bold; font-size: medium;">
                    <h3 style="font-size: medium">File input</h3>
                            </td>
                <td style="width: 287px">
 
    <input type="file" id="exampleInputFile" width="250px"></td>
                <td class="text-left">


                    &nbsp;</td>
            </tr>
                        </tr>
                        <tr>
                <td class="text-right" style="width: 280px; font-weight: bold"></td>
                <td style="width: 287px">
 
                    <asp:Button ID="Button1" runat="server" Text="Submit" Width="106px" />  &nbsp;
                    <input id="Reset1" type="reset" value="reset" width="106px" /></td>
                <td class="text-left">


                </td>
            </tr>
        </table>


    </div>
</asp:Content>
