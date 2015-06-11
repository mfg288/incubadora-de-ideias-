<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Project.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>

              
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Pais </asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="DDCoutry" runat="server" ClientIDMode="AutoID" >
                        <asp:ListItem>Secect Country</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>Portugal</asp:ListItem>
                        <asp:ListItem>German</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DDCoutry" ErrorMessage="Select a coutry" ForeColor="Red" InitialValue="Secect Country"></asp:RequiredFieldValidator>
            </div>
        </div>
               
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-10">
                                   
                <asp:RadioButtonList ID="RBEmpresa" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="True" Height="16px" RepeatDirection="Horizontal" Width="240px">
                        <asp:ListItem>Empresa</asp:ListItem>
                        <asp:ListItem>Pessoal</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RBEmpresa" ErrorMessage="Select option" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
                
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Pergunta</asp:Label>
            <div class="col-md-10">
                                    
                <asp:DropDownList ID="DDPergunta" runat="server" >
                        <asp:ListItem>Pergunta</asp:ListItem>
                        <asp:ListItem>Cor perferida</asp:ListItem>
                        <asp:ListItem>Animal perfrido</asp:ListItem>
                        <asp:ListItem>Qual foi o primeiro Emprego</asp:ListItem>
                    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RFVPergunta" runat="server" ControlToValidate="DDPergunta" ErrorMessage="Quest required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
               
         <div class="form-group">
             <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Resposta</asp:Label>
                      <div class="col-md-10">
                 <asp:TextBox ID="TBReposta" runat="server" ClientIDMode="AutoID"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RFVResposta" runat="server" ControlToValidate="TBReposta" ErrorMessage="Quest required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
               
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Anexos</asp:Label>
            <div class="col-md-10">
                 <input type="file" id="exampleInputFile" >

            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>
