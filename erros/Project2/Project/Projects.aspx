<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="Project.Projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <br>
    <div class="btn-group" data-toggle="buttons">
        <label class="btn btn-primary active">
            <input type="radio" name="options" id="option1" autocomplete="off" checked>
            Pessoal       
        </label>

        <label class="btn btn-primary">
            <input type="radio" name="options" id="option3" autocomplete="off">
            Empreza       
        </label>
    </div>
</asp:Content>
