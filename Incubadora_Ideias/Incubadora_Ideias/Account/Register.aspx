<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Incubadora_Ideias.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>



    <div class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-sm-2" for="email">Email:</label>
            <div class="col-sm-2">
                <input type="email" class="form-control" id="email" placeholder="Enter email">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Password:</label>
            <div class="col-sm-2">
                <input type="password" class="form-control" id="pwd" placeholder="Enter password">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="sel1">Select list (select one):</label>
            <div class="col-sm-2">
                <asp:DropDownList class="form-control" ID="sel1" runat="server">
                    <asp:ListItem>asdasd</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>


    </div>

















    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <hr />
        <%--        <asp:ValidationSummary runat="server" CssClass="text-danger" />--%>

        <!--Email-->
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-xs-12 col-sm-6 col-md-8 ">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." Display="Dynamic" />
            </div>
        </div>

        <!--Password-->
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-xs-12 col-sm-6 col-md-8 ">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." Display="Dynamic" />
            </div>
        </div>

        <!--ConfirmPassword-->
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-xs-12 col-sm-6 col-md-8 ">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>

        <br />

        <!--Pessoal/privado-->
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">   <strong>Tipo Utilizador</strong></asp:Label>
            <div class="col-xs-12 col-sm-6 col-md-8 ">
                <div class="btn-group" id="rb_tipe" data-toggle="buttons" runat="server">
                    <label class="btn btn-primary active">
                        <asp:RadioButton ID="rb_pessoal" runat="server" Checked="true" />
                        Pessoal
                    </label>
                    <label class="btn btn-primary">
                        <asp:RadioButton ID="rb_empresa" runat="server" />
                        Empresa
                    </label>

                </div>
            </div>
        </div>
        <br />

        <!--IdPais-->
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ddl_pais" CssClass="col-md-2 control-label">Pais</asp:Label>
            <div class="col-xs-12 col-sm-6 col-md-8 ">
                <asp:DropDownList ID="ddl_pais" runat="server" CssClass="form-control" DataSourceID="My_Database" DataTextField="Pais" DataValueField="Id" AppendDataBoundItems="True">
                    <asp:ListItem Value="0" Selected="True" Text="--Select--"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfv_pais" runat="server" Display="Dynamic" ControlToValidate="ddl_pais" ErrorMessage="Value Required!" InitialValue="0"></asp:RequiredFieldValidator>
                <asp:SqlDataSource runat="server" ID="My_Database" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT * FROM [Pais] ORDER BY [Pais]"></asp:SqlDataSource>
            </div>
        </div>

        <!--PhoneNumber-->
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="tb_phone" CssClass="col-md-2 control-label">Número Telefone</asp:Label>
            <div class="col-xs-12 col-sm-6 col-md-8 ">
                <asp:TextBox runat="server" ID="tb_phone" type="tel" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="tb_phone"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Número de telefone é necessário."></asp:RequiredFieldValidator>
            </div>
        </div>
        <br />

        <!--PerguntaSecreta-->
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ddl_secret" CssClass="col-md-2 control-label">Pergunta Secreta</asp:Label>
            <div class="col-xs-12 col-sm-6 col-md-8 ">
                <asp:DropDownList ID="ddl_secret" runat="server" CssClass="form-control" AppendDataBoundItems="True" DataSourceID="secret_sql" DataTextField="secret" DataValueField="Id">
                    <asp:ListItem Value="0" Selected="True" Text="--Select--"></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource runat="server" ID="secret_sql" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT * FROM [Perguntas] ORDER BY [secret]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddl_secret" ErrorMessage="Value Required!" InitialValue="0"></asp:RequiredFieldValidator>
            </div>
        </div>

        <!--RespostaPerguntaSecreta-->
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="tb_scrt_resp" CssClass="col-md-2 control-label">Resposta Secreta</asp:Label>
            <div class="col-xs-12 col-sm-6 col-md-8 ">
                <asp:TextBox runat="server" ID="tb_scrt_resp" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="tb_scrt_resp"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
            </div>
        </div>

        <!--Foto-->
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label"><strong>Fotografia</strong></asp:Label>
            <div class="col-xs-12 col-sm-6 col-md-8 ">
                <img id="blah" src="/Content/Images/User.png" alt="your image" height="200" style="border-radius: 10px; border: 1px solid #bbbbbb; padding: 10px; margin-bottom: 10px;" />
                <div class="input-group">
                    <span class="input-group-btn">
                        <span class="btn btn-primary btn-file">Browse&hellip;
                            <input type="file" onchange="readURL(this);" id="inp_avatar" runat="server" accept="image/png,image/jpeg,image/jpg">
                        </span>
                    </span>
                    <input type="text" class="form-control" value="user.png" readonly>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-xs-12 col-sm-6 col-md-8 ">
                <asp:Button runat="server" Text="Register" CssClass="btn btn-default" OnClick="CreateUser_Click" />
            </div>
        </div>
    </div>
</asp:Content>
