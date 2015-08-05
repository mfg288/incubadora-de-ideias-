<%@ Page Title="Projectos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="Incubadora_Ideias.Project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

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
            <p class="pull-left visible-xs">
                <button type="button" class="btn btn-primary btn-sm" data-toggle="offcanvas"><span class="glyphicon glyphicon-menu-hamburger"></span></button>
            </p>
            <div class="text-right">
                <div class="btn-group">
                    <a href="#" id="grid" class="btn btn-default btn-sm active"><span class="glyphicon glyphicon-th"></span></a>
                    <a href="#" id="list" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-th-list"></span></a>
                </div>
            </div>
            <br />

            <div id="products" class="row list-group">

                <div class="item  col-xs-4 col-lg-3 grid-group-item">
                    <div class="thumbnail">
                        <img class="group list-group-image" width="120" src="Content/Images/User.png" alt="" />
                        <h4 class="group inner list-group-item-heading">Product title</h4>
                        <p class="group inner list-group-item-text">
                            Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.

                        </p>

                    </div>
                </div>
                <div class="item  col-xs-4 col-lg-3 grid-group-item">
                    <div class="thumbnail">
                        <img class="group list-group-image" width="120" src="Content/Images/User.png" alt="" />
                        <h4 class="group inner list-group-item-heading">Product title</h4>
                        <p class="group inner list-group-item-text">
                            Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                        </p>

                    </div>
                </div>
                <div class="item  col-xs-4 col-lg-3 grid-group-item">
                    <div class="thumbnail">
                        <img class="group list-group-image" width="120" src="Content/Images/User.png" alt="" />
                        <h4 class="group inner list-group-item-heading">Product title</h4>
                        <p class="group inner list-group-item-text">
                            Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                        </p>

                    </div>
                </div>
                <div class="item  col-xs-4 col-lg-3 grid-group-item">
                    <div class="thumbnail">
                        <img class="group list-group-image" width="120" src="Content/Images/User.png" alt="" />
                        <h4 class="group inner list-group-item-heading">Product title</h4>
                        <p class="group inner list-group-item-text">
                            Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                        </p>

                    </div>
                </div>




















            </div>

        </div>
    </div>

</asp:Content>
