<%@ Page Title="Projectos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="Incubadora_Ideias.Project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">

        <div class="row row-offcanvas row-offcanvas-left">
            <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
                <div class="list-group">
                    <p>
                        <input type="text" class="form-control" placeholder="Procurar" id="inp_search" />
                    </p>
                    <div class="tags-sidebar">
                        <div class="list-group tag-list" id="badgeMenu" runat="server">
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-xs-12 col-sm-9">
            </div>
        </div>
    </div>

</asp:Content>
