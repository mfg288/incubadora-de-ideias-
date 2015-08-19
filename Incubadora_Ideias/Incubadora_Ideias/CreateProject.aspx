<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateProject.aspx.cs" Inherits="Incubadora_Ideias.CreateProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="form-horizontal">
        <h1>Criar Ideia</h1>


        <div class="form-group">
            <label class="control-label col-sm-2" for="email">Nome</label>
            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                <input class="form-control" id="inpName" placeholder="Nome" runat="server">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Tipo Ideia</label>
            <div class="">
                <div class="btn-group col-xs-4 col-sm-4 col-md-4 col-lg-4" data-toggle="buttons">
                    <label class="btn btn-primary active">
                        <input type="radio" name="options" id="rbPublica" checked runat="server">
                        Publica
                    </label>
                    <label class="btn btn-primary">
                        <input type="radio" name="options" id="rbPrivada" runat="server">
                        Privada       
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="inpTags">Tags</label>
            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                <input id="inpTags" class="form-control" runat="server" clientidmode="Static">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="asdasd">Descrição</label>
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">

                <textarea class="form-control" rows="10" id="taDesc" runat="server"></textarea>
            </div>
        </div>









        <div class="form-group">
            <label class="control-label col-sm-2" for="inpTags">Convidar</label>
            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                <input id="inpConvt" class="form-control" runat="server" clientidmode="Static">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="asdasd">Capa</label>
            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                <input id="inpCover" type="file" runat="server" clientidmode="Static">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="asdasd">Galeria</label>
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                <input id="inpImage" type="file" multiple runat="server" clientidmode="Static">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="asdasd">Anexos</label>
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                <input id="inpAttach" type="file" multiple runat="server" clientidmode="Static">
            </div>
        </div>







        <div class="form-group">


            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button ID="btnCreate" runat="server" CssClass="btn btn-default" Text="Criar" OnClick="create_Idea" />
                <input type="button" runat="server" class="btn btn-default" text="absbsas" onclick="" />

            </div>
        </div>
    </div>


</asp:Content>
