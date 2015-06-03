<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="Incubadora_Ideas.Projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <%--  <div class="row">
        <div class="col-sm-3">
            <div class="sidebar-nav">
                <div class="navbar navbar-default" role="navigation">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <span class="visible-xs navbar-brand">Sidebar menu</span>
                    </div>
                    <div class="navbar-collapse collapse sidebar-navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Menu Item 1</a></li>
                            <li><a href="#">Menu Item 2</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li class="divider"></li>
                                    <li class="dropdown-header">Nav header</li>
                                    <li><a href="#">Separated link</a></li>
                                    <li><a href="#">One more separated link</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Menu Item 4</a></li>
                            <li><a href="#">Reviews <span class="badge">1,118</span></a></li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </div>
        </div>
        <div class="col-sm-9">
            Main content goes here
        </div>
    </div>
    <br />
    <nav>
    <ul class="nav">
      <li><a href="#">Link 1</a></li>
    <li><a href="#" id="btn-1" data-toggle="collapse" data-target="#submenu1" aria-expanded="false">Link 2 (toggle)</a>
      <ul class="nav collapse" id="submenu1" role="menu" aria-labelledby="btn-1">
        <li><a href="#">Link 2.1</a></li>
        <li><a href="#">Link 2.2</a></li>
        <li><a href="#">Link 2.3</a></li>
      </ul>
    </li>
    <li><a href="#">Link 3</a></li>
    <li><a href="#">Link 4</a></li>
  </ul>
</nav>--%>
    <input id="input-2b" type="number" class="rating" min="0" max="10" step="1" data-size="md"
        data-symbol="&#xe124;" data-default-caption="{rating} hearts" data-star-captions="{}">
    <hr>
    <label>Font Awesome Stars</label>
    <input id="input-2c" class="rating" min="0" max="5" step="0.5" data-size="sm"
        data-symbol="&#xf005;" data-glyphicon="false" data-rating-class="rating-fa">
    <label>Font Awesome Beer</label>
    <input id="input-2d" class="rating" min="0" max="5" step="0.5" data-size="sm"
        data-symbol="&#xf0fc;" data-glyphicon="false" data-rating-class="rating-fa" data-default-caption="{rating} drinks" data-star-captions="{}">
    <hr>
    <input id="input-21a" value="0" type="number" class="rating" data-symbol="*" min="0" max="5" step="0.5" data-size="xl">
    <hr>
    <input id="input-21b" value="4" type="number" class="rating" min="0" max="5" step="0.2" data-size="lg">
    <hr>
    <input id="input-21c" value="0" type="number" class="rating" min="0" max="8" step="0.5" data-size="xl" data-stars="8">
    <hr>
    <input id="input-21d" value="2" type="number" class="rating" min="0" max="5" step="0.5" data-size="sm">
    <hr>
    <input id="input-21e" value="0" type="number" class="rating" min="0" max="5" step="0.5" data-size="xs">
    <hr>
    <input id="input-21f" value="0" type="number" min="0" max="5" step="0.1" data-size="md">
    <hr>
    <input id="input-2ba" type="number" class="rating" min="0" max="5" step="0.5" data-stars="5"
        data-symbol="&#xe005;" data-default-caption="{rating} hearts" data-star-captions="{}">
    <hr>
    <input id="input-22" value="0" type="number" class="rating" min="0" max="5" step="0.5" data-rtl="1" data-container-class='text-right' data-glyphicon="0">
    <div class="clearfix"></div>
    <hr>
    <input class="rb-rating">
    <hr>
    <input id="rating-input" type="number" />
    <button id="btn-rating-input" type="button" class="btn btn-primary">Toggle Disable</button>
    <hr>
    <input id="kartik" class="rating" data-stars="5" data-step="0.1" />
    <div class="form-group" style="margin-top: 10px">
        <button type="submit" class="btn btn-primary">Submit</button>
        <button type="reset" class="btn btn-default">Reset</button>
        <button type="button" class="btn btn-danger">Destroy</button>
        <button type="button" class="btn btn-success">Create</button>
    </div>



    <form class="form-horizontal">
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <label>
                        <input type="checkbox">
                        Remember me
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Sign in</button>
            </div>
        </div>
    </form>
</asp:Content>
