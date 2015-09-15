<%@ Page Title="Forgot password" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Forgot.aspx.cs" Inherits="Incubadora_Ideias.Account.ForgotPassword" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>

    <div class="row">
        <div class="col-md-8">
            <asp:PlaceHolder id="loginForm" runat="server">
                <div class="form-horizontal">
                    <h4>Forgot your password?</h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <button type="button" class="btn btn-primary" id="bt_obtemperg" onclick="ObtemPerguntaSecreta()">Recuperar</button>
                        </div>
                    </div>
                    
                    
                    <%--Parte do formulário que tem a resposta à pergunta secreta--%>
                    
                    
                    <div class="form-group">
                        <asp:Label ID="LabelPergSecreta" runat="server" AssociatedControlID="PergSecreta" CssClass="col-md-2 control-label">Pergunta Secreta</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="PergSecreta" CssClass="form-control" />
                        </div>
                    </div>

<%--                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button ID="ButtonObtemPergSubmit" runat="server" OnClientClick="ObtemPerguntaSecreta()" Text="Recuperar" CssClass="btn btn-default" />
                        </div>
                    </div>--%>
                    
                    <div class="form-group">
                        <asp:Label ID="LabelRespostaSecreta" runat="server" AssociatedControlID="RespSecreta" CssClass="col-md-2 control-label">Resposta Secreta</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="RespSecreta" CssClass="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button ID="ButtonValidaRespSubmit" runat="server" OnClientClick="ValidaRespostaSecreta()" Text="Validar" CssClass="btn btn-default" />
                        </div>
                    </div>

                    <label id="msgErroPerguntaSecreta" style="display: none"></label>
                    
                    
                    

                </div>
            </asp:PlaceHolder>
            <asp:PlaceHolder runat="server" ID="DisplayEmail" Visible="false">
                <p class="text-info">
                    Please check your email to reset your password.
                </p>
            </asp:PlaceHolder>
        </div>
    </div>
</asp:Content>
