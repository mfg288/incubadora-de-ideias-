
<!DOCTYPE html>
<!--
.______     ______     ______   .___________..______    __      ____    ____
|   _  \   /  __  \   /  __  \  |           ||   _  \  |  |     \   \  /   /
|  |_)  | |  |  |  | |  |  |  | `---|  |----`|  |_)  | |  |      \   \/   / 
|   _  <  |  |  |  | |  |  |  |     |  |     |   ___/  |  |       \_    _/  
|  |_)  | |  `--'  | |  `--'  |     |  |     |  |      |  `----.    |  |    
|______/   \______/   \______/      |__|     | _|      |_______|    |__|    
                                                                            
-->
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
        <meta charset="utf-8">
        <title>Bootstrap Menu - Bootply</title>
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Bootstrap Menu examples with CSS, Javascript and HTML. A Bootstrap Menu snippet for Bootstrap.">

        <meta name="og:site_name" content="Bootply" />
        <meta name="og:title" content="Bootstrap Playground - Bootstrap Menu - Bootply" />
        <meta name="og:description" content="Bootstrap Menu examples with CSS, Javascript and HTML. A Bootstrap Menu snippet for Bootstrap. A Bootstrap editor for example snippets with Bootstrap HTML, JavaScript and CSS." /> 
        <meta property="og:image" content="/assets/bp_logo.jpg"/>
        <meta name="google-site-verification" content="MIaHKEqspbaoI62kQsOLavc6RdqMZtpkmoYNrpqzhqs" />
        <script src="/codemirror/lib/codemirror.js"></script>
        <link rel="stylesheet" href="/codemirror/lib/codemirror.css">
        <script src="/codemirror/mode/css/css.js"></script>
        <script src="/codemirror/mode/javascript/javascript.js"></script>
        <script src="/codemirror/mode/xml/xml.js"></script>
        <script src="/codemirror/mode/htmlmixed/htmlmixed.js"></script>
        <link href="//code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" type="text/css" rel="stylesheet" media="all">
        <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" >
        <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet" >
        <!--[if lt IE 9]>
          <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <link rel="shortcut icon" href="/bootply_ico.jpg">
        <link rel="apple-touch-icon" href="/bootply_ico.jpg">
        
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
        <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
        <script src="/plugins/jquery.layout.js"></script>
        
        <link href="/plugins/jquery.layout.css" rel="stylesheet">
        <link rel="stylesheet" href="/plugins/bootstrap-select.min.css">
        <link rel="stylesheet" href="/css/bootply.css">
        <!--fb-->
        <div id="fb-root"></div>
        <script>(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=482723745132387";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
        <!--end-->
    </head>
    <body itemscope itemtype="http://schema.org/WebApplication">
        <h1 itemprop="name" style="display:none;">Bootply</h1>
        <meta itemprop="about" content="Bootstrap Editor, Snippets and Playground" />
        <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a href="http://bootply.com/" class="brand" title="Twitter Bootstrap editor, templates and snippets.">
                    Bootply
                </a>
                <div class="nav-collapse collapse">
                    <ul class="nav nav-pills hidden-phone hidden-tablet">
                    
                        <li class="divider">&nbsp;</li>
                        <!--<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>-->
                        <!--<li class="tw-btn hidden-phone hidden-tablet" style="display:none"><a href="https://twitter.com/Bootply" class="twitter-follow-button" data-show-count="false" data-lang="en">Follow @Bootply</a> &nbsp; &nbsp; </li>-->
                        <li class="fb-like hidden-phone hidden-tablet" data-href="http://bootply.com" data-send="false" data-layout="button_count" data-width="80" data-show-faces="false" data-font="arial"></li>
                    </ul>
                    <ul class="nav nav-pills pull-right">
                        <li><form class="input-append" method="GET" action="/search" style="margin-top:4px;margin-bottom:5px;"><input type="text" title="Enter keyword(s) to find" id="kw" name="kw" class="span2" maxlength="40"><button type="submit" class="btn"><i class="icon-search" title="Search"></i></button></form>&nbsp;&nbsp;</li>
                        <li class="dropdown " id="menuLogin">
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown" id="navLogin">Login</a>
                            <div class="dropdown-menu" style="padding:17px;">
                                <form id="formLogin" class="form"> 
                                    <label>Login</label> 
                                    <input name="_csrf" id="token" type="hidden" value="OAUQrnO6-wnLy9aK47D0OzXgZjfdO94CU1TI">
    							    <input name="username" id="username" type="text" placeholder="Username" pattern="^[a-z,A-Z,0-9,_]{6,15}$" data-valid-min="6" title="Enter your username" required="">
    							    <input name="password" id="password" type="password" placeholder="Password" title="Enter your password" required=""><br>
    							    <button type="button" id="btnLogin" class="btn">Login</button>
    							</form>
                                <form><a href="#" title="Fast and free sign up!" id="btnNewUser" data-toggle="collapse" data-target="#formRegister">New User? Sign-up..</a></form>
                                <form id="formRegister" class="form collapse">
                                    <input name="_csrf" id="token" type="hidden" value="OAUQrnO6-wnLy9aK47D0OzXgZjfdO94CU1TI">
                                    <input name="email" id="inputEmail" type="email" placeholder="Email" required="">
        						    <input name="username" id="inputUsername" type="text" placeholder="Username" pattern="^[a-z,A-Z,0-9,_]{6,15}$" data-valid-min="6" title="Choose a username" required=""><br>
    							    <input name="password" id="inputpassword" type="password" placeholder="Password" required=""> 
                                    <input name="verify" id="inputVerify" type="password" placeholder="Password (again)" required=""><br>                                  
    							    <button type="button" id="btnRegister" class="btn">Sign Up</button>
    							</form>
                                <a data-toggle="modal" role="button" href="#forgotPasswordModal">Forgot username or password?</a>
                                <a data-toggle="modal" role="button" href="#contactModal"><small>Need help? Contact us</small></a>
                            </div>
                        </li>
                        <li class="dropdown hide" id="menuUser">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="See your Bootply collection and profile">
                                <i class='icon-user icon-xxlarge'> </i> <span id="lblUsername"></span>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="/user">Dashboard</a></li>
                                <li><a href="/new">Create New Bootply</a></li>
                                
                                <li><a href="/logout">Logout</a></li>
                                <li class="divider"> </li>
                                <li><a href="/bootstrap-community">Community</a></li>
                                <li><a href="/about">About</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        </div>
        <div style="height:48px;" id="spacer">
        
        </div>
        <div id="wrap">
            <script type="text/javascript">var z = document.createElement("script"); z.type = "text/javascript"; z.async = true; z.src = "http://engine.carbonads.com/z/32644/azcarbon_2_1_0_VERT"; var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(z, s);</script>
<div class="container-fluid">
  
    <h2>Bootstrap menu snippets</h2>
    <div class="page-header">
        Working Bootstrap Examples with HTML, CSS, JavaScript and jQuery
    </div>

    <div class="alert alert-info">
    <button type="button" class="close" data-dismiss="alert">×</button>
    Have you heard about <a href="http://www.bootbundle.com/" target="ext"><strong>BootBundle</strong></a>? We're proud to be part of it.
    </div>

    <div class="row-fluid">
        <div class="span9">
	    <div class="pull-right">
    	    <span class="input-prepend input-append ">
                <btn class="btn" title="Click to remove last filter" id="btnClear">menu</btn><input type="text" class="input-mini" id="addTag" name="addTag" placeholder="+tag" /><button class="btn" type="button" id="btnFilter">Filter</button>
            </span>
        </div>
        <div id="listStuff" style="height:90%;">
        
            
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/Gpy6221IdW" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">last week by <a href="/users/pilu1987">pilu1987</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <a href="/OLAx2CxkqQ" title="Similiar ply"><small>Similiar to undefined</small></a> &nbsp;  
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/hwKq7WbJUs" title="menu">Nested scrolling touch accordion menu</a>
                        <br><small style="font-size:85%;">2 weeks ago  by <a href="/users/JAugustoGuimaraes">JAugustoGuimaraes</a></small>
                        <br>Bootstrap snippet / code Nested scrolling touch accordion menu..
                        <div><a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/nested"><span class="label">nested</span></a> <a href="/tagged/touch"><span class="label">touch</span></a> <a href="/tagged/scrolling"><span class="label">scrolling</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/snippet"><span class="label">snippet</span></a> <a href="/tagged/sidebar"><span class="label">sidebar</span></a> <a href="/tagged/vertical"><span class="label">vertical</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/LcSwSskuR1" title="Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus.">Bootstrap 3 Submenus</a>
                        <br><small style="font-size:85%;">2 weeks ago  by <a href="/users/JAugustoGuimaraes">JAugustoGuimaraes</a></small>
                        <br>Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/SxTsdyIk8w" title="menu">AngularJS Menu Tree Example</a>
                        <br><small style="font-size:85%;">2 weeks ago  by <a href="/users/paulrogers909">paulrogers909</a></small>
                        <br>Bootstrap snippet / code AngularJS Menu Tree Example..
                        <div><a href="/tagged/angularjs"><span class="label">angularjs</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/tree"><span class="label">tree</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/dropdown"><span class="label">dropdown</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/qbvitl8PMG" title="menu">Nested scrolling touch accordion menu</a>
                        <br><small style="font-size:85%;">2 weeks ago  by <a href="/users/JAugustoGuimaraes">JAugustoGuimaraes</a></small>
                        <br>Bootstrap snippet / code Nested scrolling touch accordion menu..
                        <div><a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/nested"><span class="label">nested</span></a> <a href="/tagged/touch"><span class="label">touch</span></a> <a href="/tagged/scrolling"><span class="label">scrolling</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/snippet"><span class="label">snippet</span></a> <a href="/tagged/sidebar"><span class="label">sidebar</span></a> <a href="/tagged/vertical"><span class="label">vertical</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/ZYkd24rGW4" title="How to create a scrolling dropdown menu in Bootstrap for large item lists.">Scrollable Dropdown Menu</a>
                        <br><small style="font-size:85%;">2 weeks ago  by <a href="/users/JAugustoGuimaraes">JAugustoGuimaraes</a></small>
                        <br>How to create a scrolling dropdown menu in Bootstrap for large item lists...
                        <div><a href="/tagged/scrollable"><span class="label">scrollable</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/scrollbar"><span class="label">scrollbar</span></a> <a href="/tagged/scroll"><span class="label">scroll</span></a> </div>
                        
                        <a href="/BlzF9vtXd6" title="Similiar ply"><small>Similiar to undefined</small></a> &nbsp;  
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/05nGoYmvjN" title="Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus.">Bootstrap 3 Submenus</a>
                        <br><small style="font-size:85%;">3 weeks ago  by <a href="/users/artotal">artotal</a></small>
                        <br>Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <a href="/7Q7zCaj7PP" title="Similiar ply"><small>Similiar to undefined</small></a> &nbsp;  
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/0ZWCUWF61p" title="menu">Nested scrolling touch accordion menu</a>
                        <br><small style="font-size:85%;">last month by <a href="/users/chipbaker">chipbaker</a></small>
                        <br>Bootstrap snippet / code Nested scrolling touch accordion menu..
                        <div><a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/nested"><span class="label">nested</span></a> <a href="/tagged/touch"><span class="label">touch</span></a> <a href="/tagged/scrolling"><span class="label">scrolling</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/snippet"><span class="label">snippet</span></a> <a href="/tagged/sidebar"><span class="label">sidebar</span></a> <a href="/tagged/vertical"><span class="label">vertical</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/snlN3msfcW" title="How to create a scrolling dropdown menu in Bootstrap for large item lists.">Scrollable Dropdown Menu</a>
                        <br><small style="font-size:85%;">last month by <a href="/users/MaxGucci">MaxGucci</a></small>
                        <br>How to create a scrolling dropdown menu in Bootstrap for large item lists...
                        <div><a href="/tagged/scrollable"><span class="label">scrollable</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/scrollbar"><span class="label">scrollbar</span></a> <a href="/tagged/scroll"><span class="label">scroll</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/ju37ncSYd3" title="Bootstrap tree with folder, sub folders..">FuelUX Tree with DataSource</a>
                        <br><small style="font-size:85%;">2 months ago  by <a href="/users/istatic">istatic</a></small>
                        <br>Bootstrap tree with folder, sub folders....
                        <div><a href="/tagged/datasource"><span class="label">datasource</span></a> <a href="/tagged/fuelux"><span class="label">fuelux</span></a> <a href="/tagged/tree"><span class="label">tree</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> </div>
                        
                        <a href="/RITzoC96Sk" title="Similiar ply"><small>Similiar to undefined</small></a> &nbsp;  
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/lBmWsx6Oeo" title="Multi-level tree view menu with Bootstrap. Expand and collapse sub sections.">Bootstrap 3 Side / Tree Menu</a>
                        <br><small style="font-size:85%;">2 months ago  by <a href="/users/istatic">istatic</a></small>
                        <br>Multi-level tree view menu with Bootstrap. Expand and collapse sub sections...
                        <div><a href="/tagged/tree"><span class="label">tree</span></a> <a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/sidebar"><span class="label">sidebar</span></a> <a href="/tagged/collapse"><span class="label">collapse</span></a> <a href="/tagged/sub"><span class="label">sub</span></a> <a href="/tagged/jquery"><span class="label">jquery</span></a> <a href="/tagged/toggle"><span class="label">toggle</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <a href="/6AdSTPjvlN" title="Similiar ply"><small>Similiar to undefined</small></a> &nbsp;  
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/BvIflkuW7L" title="How to create a scrolling dropdown menu in Bootstrap for large item lists.">Scrollable Dropdown Menu</a>
                        <br><small style="font-size:85%;">2 months ago  by <a href="/users/avikdas">avikdas</a></small>
                        <br>How to create a scrolling dropdown menu in Bootstrap for large item lists...
                        <div><a href="/tagged/scrollable"><span class="label">scrollable</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/scrollbar"><span class="label">scrollbar</span></a> <a href="/tagged/scroll"><span class="label">scroll</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/tbKaJr9Dsc" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">2 months ago  by <a href="/users/marwein">marwein</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/R0zDR7NMCM" title="A example of customizing the Bootstrap nav using CSS override.">Navbar inverse change link color</a>
                        <br><small style="font-size:85%;">2 months ago  by <a href="/users/admin">admin</a></small>
                        <br>A example of customizing the Bootstrap nav using CSS override...
                        <div><a href="/tagged/navbar"><span class="label">navbar</span></a> <a href="/tagged/color"><span class="label">color</span></a> <a href="/tagged/customize"><span class="label">customize</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/override"><span class="label">override</span></a> <a href="/tagged/link"><span class="label">link</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/p6SMnXU6rR" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">3 months ago  by <a href="/users/elazafran">elazafran</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <a href="/S1cVhKmglC" title="Similiar ply"><small>Similiar to undefined</small></a> &nbsp;  
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/6FC76YQ4Nh" title="Bootstrap3 Navbar Click Hover">navbar dropdown on hover (CSS)</a>
                        <br><small style="font-size:85%;">3 months ago  by <a href="/users/testazoid">testazoid</a></small>
                        <br>Bootstrap3 Navbar Click Hover..
                        <div><a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/navbar"><span class="label">navbar</span></a> <a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/collapse"><span class="label">collapse</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/hover"><span class="label">hover</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/mouseover"><span class="label">mouseover</span></a> <a href="/tagged/css"><span class="label">css</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/gsjkULaFZN" title="Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus.">Side Nav Submenus BS3</a>
                        <br><small style="font-size:85%;">3 months ago  by <a href="/users/janeksz">janeksz</a></small>
                        <br>Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <a href="/qIt6OT0x9r" title="Similiar ply"><small>Similiar to undefined</small></a> &nbsp;  
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/UoSppwev34" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">3 months ago  by <a href="/users/balajimrv">balajimrv</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <a href="/3lcvKxmNbZ" title="Similiar ply"><small>Similiar to undefined</small></a> &nbsp;  
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/7yarDjlW5H" title="menu">AngularJS Menu Tree Example</a>
                        <br><small style="font-size:85%;">3 months ago  by <a href="/users/harshnsweet">harshnsweet</a></small>
                        <br>Bootstrap snippet / code AngularJS Menu Tree Example..
                        <div><a href="/tagged/angularjs"><span class="label">angularjs</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/tree"><span class="label">tree</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/dropdown"><span class="label">dropdown</span></a> </div>
                        
                        <a href="/gUxusDYOLN" title="Similiar ply"><small>Similiar to undefined</small></a> &nbsp;  
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/xYUxSjkXZt" title="Multi-level tree view menu with Bootstrap. Expand and collapse sub sections.">Bootstrap 3 Side / Tree Menu</a>
                        <br><small style="font-size:85%;">3 months ago  by <a href="/users/jfenn">jfenn</a></small>
                        <br>Multi-level tree view menu with Bootstrap. Expand and collapse sub sections...
                        <div><a href="/tagged/tree"><span class="label">tree</span></a> <a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/sidebar"><span class="label">sidebar</span></a> <a href="/tagged/collapse"><span class="label">collapse</span></a> <a href="/tagged/sub"><span class="label">sub</span></a> <a href="/tagged/jquery"><span class="label">jquery</span></a> <a href="/tagged/toggle"><span class="label">toggle</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/x54HJRLvfe" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">4 months ago  by <a href="/users/kashifmobin">kashifmobin</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/KgHue2e21o" title="Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus.">Bootstrap 3 Submenus</a>
                        <br><small style="font-size:85%;">4 months ago  by <a href="/users/cndblessltd">cndblessltd</a></small>
                        <br>Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/TdifeqFHDY" title="menu">Menu Ghost Buttons</a>
                        <br><small style="font-size:85%;">4 months ago  by <a href="/users/Rustandi">Rustandi</a></small>
                        <br>Bootstrap snippet / code Menu Ghost Buttons..
                        <div><a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/buttons"><span class="label">buttons</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/zaVb0YM2o7" title="menu">AngularJS Menu Tree Example</a>
                        <br><small style="font-size:85%;">4 months ago  by <a href="/users/c4fun">c4fun</a></small>
                        <br>Bootstrap snippet / code AngularJS Menu Tree Example..
                        <div><a href="/tagged/angularjs"><span class="label">angularjs</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/tree"><span class="label">tree</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/dropdown"><span class="label">dropdown</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/2ANG1q4tfw" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">4 months ago  by <a href="/users/fredericaula">fredericaula</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/fsk3PGL4uc" title="Bootstrap tree with folder, sub folders..">FuelUX Tree with DataSource</a>
                        <br><small style="font-size:85%;">4 months ago  by <a href="/users/declanqian">declanqian</a></small>
                        <br>Bootstrap tree with folder, sub folders....
                        <div><a href="/tagged/datasource"><span class="label">datasource</span></a> <a href="/tagged/fuelux"><span class="label">fuelux</span></a> <a href="/tagged/tree"><span class="label">tree</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> </div>
                        
                        <a href="/C2SncOj358" title="Similiar ply"><small>Similiar to undefined</small></a> &nbsp;  
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                
            
                
                
            
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/KGhaa1DVrW" title="Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus.">Bootstrap 3 Submenus</a>
                        <br><small style="font-size:85%;">5 months ago  by <a href="/users/larchy">larchy</a></small>
                        <br>Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/qTu1FldGZl" title="A best practice example of customizing the Bootstrap nav using CSS override.">Bootstrap 3 Custom Navbar</a>
                        <br><small style="font-size:85%;">5 months ago  by <a href="/users/cskelly">cskelly</a></small>
                        <br>A best practice example of customizing the Bootstrap nav using CSS override...
                        <div><a href="/tagged/navbar"><span class="label">navbar</span></a> <a href="/tagged/color"><span class="label">color</span></a> <a href="/tagged/custom"><span class="label">custom</span></a> <a href="/tagged/customize"><span class="label">customize</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/override"><span class="label">override</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/FLJplTMgRq" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">5 months ago  by <a href="/users/etieqa">etieqa</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <a href="/hHRcQgBAwq" title="Similiar ply"><small>Similiar to undefined</small></a> &nbsp;  
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/QRM0V2zdOP" title="Accordion vertical menu with submenues based on list group">Vertical Sidebar - Accordion Menu with Submenus</a>
                        <br><small style="font-size:85%;">5 months ago  by <a href="/users/xrluce">xrluce</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/snippet"><span class="label">snippet</span></a> <a href="/tagged/sidebar"><span class="label">sidebar</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/FDmAhSp2zt" title="Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus.">Bootstrap 3 Submenus</a>
                        <br><small style="font-size:85%;">5 months ago  by <a href="/users/fahedalh">fahedalh</a></small>
                        <br>Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/ANXtBzTjkW" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">5 months ago  by <a href="/users/montedavis">montedavis</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <a href="/LcMeXgXHlH" title="Similiar ply"><small>Similiar to undefined</small></a> &nbsp;  
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/DglnYJTSKA" title="Accordion vertical menu with submenus based on list group">Nested accordion panel menu sidebar</a>
                        <br><small style="font-size:85%;">5 months ago  by <a href="/users/cskelly">cskelly</a></small>
                        <br>Accordion vertical menu with submenus based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/panels"><span class="label">panels</span></a> <a href="/tagged/nested"><span class="label">nested</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/zXrXYu7f8r" title="Accordion vertical menu with submenues based on list group">My Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">6 months ago  by <a href="/users/mdhar">mdhar</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/6CfnQkBwyu" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">6 months ago  by <a href="/users/aroman">aroman</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/RdFUZDBemt" title="menu">Nested scrolling touch accordion menu</a>
                        <br><small style="font-size:85%;">6 months ago  by <a href="/users/satya">satya</a></small>
                        <br>Bootstrap snippet / code Nested scrolling touch accordion menu..
                        <div><a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/nested"><span class="label">nested</span></a> <a href="/tagged/touch"><span class="label">touch</span></a> <a href="/tagged/scrolling"><span class="label">scrolling</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/snippet"><span class="label">snippet</span></a> <a href="/tagged/sidebar"><span class="label">sidebar</span></a> <a href="/tagged/vertical"><span class="label">vertical</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/9hBzdUTFsM" title="Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus.">Bootstrap 3 Submenus</a>
                        <br><small style="font-size:85%;">6 months ago  by <a href="/users/bizamajig">bizamajig</a></small>
                        <br>Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/qPwdZcIHA0" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">6 months ago  by <a href="/users/dgleba">dgleba</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/n9GFx7Lvit" title="Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus.">Bootstrap 3 Submenus</a>
                        <br><small style="font-size:85%;">7 months ago  by <a href="/users/smpdesignmedia">smpdesignmedia</a></small>
                        <br>Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/wlgHJx2XxC" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">7 months ago  by <a href="/users/smpdesignmedia">smpdesignmedia</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <a href="/5Zwkz2fQzb" title="Similiar ply"><small>Similiar to undefined</small></a> &nbsp;  
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/P9XMdCuU7b" title="An inline 2nd-level menu inside a Bootstrap Dropdown">Inline Dropdown Submenu</a>
                        <br><small style="font-size:85%;">7 months ago  by <a href="/users/marcreed">marcreed</a></small>
                        <br>An inline 2nd-level menu inside a Bootstrap Dropdown..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/inline"><span class="label">inline</span></a> <a href="/tagged/acordian"><span class="label">acordian</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/0nqz8YyOsw" title="Use Bootstrap collapse to toggle menus in the side bar. Also shows open or close icon.">Collapsible side navigation </a>
                        <br><small style="font-size:85%;">7 months ago  by <a href="/users/justjc">justjc</a></small>
                        <br>Use Bootstrap collapse to toggle menus in the side bar. Also shows open or close icon...
                        <div><a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/navbar"><span class="label">navbar</span></a> <a href="/tagged/collapse"><span class="label">collapse</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/toggle"><span class="label">toggle</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/YQMKqoqSBk" title="menu">AngularJS Menu Tree Example</a>
                        <br><small style="font-size:85%;">7 months ago  by <a href="/users/rightson">rightson</a></small>
                        <br>Bootstrap snippet / code AngularJS Menu Tree Example..
                        <div><a href="/tagged/angularjs"><span class="label">angularjs</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/tree"><span class="label">tree</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/dropdown"><span class="label">dropdown</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/Ru8VFUwRsW" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">7 months ago  by <a href="/users/justjc">justjc</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/ueNgfw1cbO" title="menu">Inline list desktop, collapse mobile (SO)</a>
                        <br><small style="font-size:85%;">7 months ago  by <a href="/users/cskelly">cskelly</a></small>
                        <br>Bootstrap snippet / code Inline list desktop, collapse mobile (SO)..
                        <div><a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/collapse"><span class="label">collapse</span></a> <a href="/tagged/responsive"><span class="label">responsive</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/d1lzHfat2w" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/siterussia">siterussia</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/X3nVSi7oDu" title="Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus.">Bootstrap 3 Submenus</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/siterussia">siterussia</a></small>
                        <br>Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/oVdp860rnA" title="Multi-level tree view menu with Bootstrap. Expand and collapse sub sections.">Menu</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/siterussia">siterussia</a></small>
                        <br>Multi-level tree view menu with Bootstrap. Expand and collapse sub sections...
                        <div><a href="/tagged/tree"><span class="label">tree</span></a> <a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/sidebar"><span class="label">sidebar</span></a> <a href="/tagged/collapse"><span class="label">collapse</span></a> <a href="/tagged/sub"><span class="label">sub</span></a> <a href="/tagged/jquery"><span class="label">jquery</span></a> <a href="/tagged/toggle"><span class="label">toggle</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/GZWYbgrQIi" title="A navigation menu tree auto expands or collapses to the branch in context">Context aware left navigation</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/marcreed">marcreed</a></small>
                        <br>A navigation menu tree auto expands or collapses to the branch in context..
                        <div><a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/tree"><span class="label">tree</span></a> <a href="/tagged/left"><span class="label">left</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/NQ1EcS11SL" title="A sitemap document tree is auto generated from bootstrap navbar">Sitemap Doc Tree from Bootstrap Navbar</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/marcreed">marcreed</a></small>
                        <br>A sitemap document tree is auto generated from bootstrap navbar..
                        <div><a href="/tagged/doctree"><span class="label">doctree</span></a> <a href="/tagged/tree"><span class="label">tree</span></a> <a href="/tagged/navbar"><span class="label">navbar</span></a> <a href="/tagged/site map"><span class="label">site map</span></a> <a href="/tagged/font awesome"><span class="label">font awesome</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/jquery"><span class="label">jquery</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/1kcRTEEoDu" title="Multi-level tree view menu with Bootstrap. Expand and collapse sub sections.">Bootstrap 3 Side / Tree Menu</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/leonardorocha">leonardorocha</a></small>
                        <br>Multi-level tree view menu with Bootstrap. Expand and collapse sub sections...
                        <div><a href="/tagged/tree"><span class="label">tree</span></a> <a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/sidebar"><span class="label">sidebar</span></a> <a href="/tagged/collapse"><span class="label">collapse</span></a> <a href="/tagged/sub"><span class="label">sub</span></a> <a href="/tagged/jquery"><span class="label">jquery</span></a> <a href="/tagged/toggle"><span class="label">toggle</span></a> <a href="/tagged/javascript"><span class="label">javascript</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/EAOxp0zEzX" title="Multi-level tree view menu with Bootstrap. Expand and collapse sub sections.">Bootstrap Tree Menu</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/novas_dk">novas_dk</a></small>
                        <br>Multi-level tree view menu with Bootstrap. Expand and collapse sub sections...
                        <div><a href="/tagged/tree"><span class="label">tree</span></a> <a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/sidebar"><span class="label">sidebar</span></a> <a href="/tagged/collapse"><span class="label">collapse</span></a> <a href="/tagged/sub"><span class="label">sub</span></a> <a href="/tagged/jquery"><span class="label">jquery</span></a> <a href="/tagged/toggle"><span class="label">toggle</span></a> <a href="/tagged/javascript"><span class="label">javascript</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/y11lZCw5AA" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/justjc">justjc</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/QdS119dye4" title="fieldset content collapses when clicking the legend
navbar drop downs are horizontal">Collapsing Fieldset sample</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/pppeater">pppeater</a></small>
                        <br>fieldset content collapses when clicking the legend
navbar drop downs are horizontal..
                        <div><a href="/tagged/fieldset"><span class="label">fieldset</span></a> <a href="/tagged/collapse"><span class="label">collapse</span></a> <a href="/tagged/horizontal"><span class="label">horizontal</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/9a8mBzOlNe" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar with submenus</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/wolu44">wolu44</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/C3uNJxDg4i" title="How to make a multiple col dropdown menu for icons">Dropdown with grid columns</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/jquery">jquery</a></small>
                        <br>How to make a multiple col dropdown menu for icons..
                        <div><a href="/tagged/columns"><span class="label">columns</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/icons"><span class="label">icons</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/Biaysk2Uph" title="Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus.">Bootstrap 3 Submenus</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/HolavaGuy">HolavaGuy</a></small>
                        <br>Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/BG5tQ8DOEk" title="How to make a big wide dropdown mega menu with Bootstrap. This example demonstrates a form, links, buttons and various options for a wide menu.">Big dropdown menu for Bootstrap</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/HolavaGuy">HolavaGuy</a></small>
                        <br>How to make a big wide dropdown mega menu with Bootstrap. This example demonstrates a form, links, buttons and various options for..
                        <div><a href="/tagged/navbar"><span class="label">navbar</span></a> <a href="/tagged/mega"><span class="label">mega</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/wide"><span class="label">wide</span></a> <a href="/tagged/form"><span class="label">form</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/9QdJhdZ6Xx" title="Multi-level tree view menu with Bootstrap. Expand and collapse sub sections.">Menu</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/HolavaGuy">HolavaGuy</a></small>
                        <br>Multi-level tree view menu with Bootstrap. Expand and collapse sub sections...
                        <div><a href="/tagged/tree"><span class="label">tree</span></a> <a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/sidebar"><span class="label">sidebar</span></a> <a href="/tagged/collapse"><span class="label">collapse</span></a> <a href="/tagged/sub"><span class="label">sub</span></a> <a href="/tagged/jquery"><span class="label">jquery</span></a> <a href="/tagged/toggle"><span class="label">toggle</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/oCehVAdC2d" title="How to make a big wide dropdown mega menu with Bootstrap. This example demonstrates a form, links, buttons and various options for a wide menu.">Big dropdown menu for Bootstrap</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/jamesh64">jamesh64</a></small>
                        <br>How to make a big wide dropdown mega menu with Bootstrap. This example demonstrates a form, links, buttons and various options for..
                        <div><a href="/tagged/navbar"><span class="label">navbar</span></a> <a href="/tagged/mega"><span class="label">mega</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/wide"><span class="label">wide</span></a> <a href="/tagged/form"><span class="label">form</span></a> </div>
                        
                        <a href="/TRPt1jTizj" title="Similiar ply"><small>Similiar to undefined</small></a> &nbsp;  
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                
            
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/mlp04uhMqT" title="Bootstrap tree with folder, sub folders..">FuelUX Tree with DataSource</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/karru">karru</a></small>
                        <br>Bootstrap tree with folder, sub folders....
                        <div><a href="/tagged/datasource"><span class="label">datasource</span></a> <a href="/tagged/fuelux"><span class="label">fuelux</span></a> <a href="/tagged/tree"><span class="label">tree</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/f7nJDzcNHa" title="A simple Document Tree using Bootstrap and Font Awesome">Bootstrap and Font Awesome Doc Tree</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/marcreed">marcreed</a></small>
                        <br>A simple Document Tree using Bootstrap and Font Awesome..
                        <div><a href="/tagged/Document"><span class="label">Document</span></a> <a href="/tagged/Tree"><span class="label">Tree</span></a> <a href="/tagged/doctree"><span class="label">doctree</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/collapse"><span class="label">collapse</span></a> <a href="/tagged/Font Awesome"><span class="label">Font Awesome</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/CTljRnN3xM" title="Responsive Horizontal navbar for Bootstrap with left / right arrows to scroll.">Responsive sliding menu with scroll Arrows</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/dalaamenBt">dalaamenBt</a></small>
                        <br>Responsive Horizontal navbar for Bootstrap with left / right arrows to scroll...
                        <div><a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/slider"><span class="label">slider</span></a> <a href="/tagged/content"><span class="label">content</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/left"><span class="label">left</span></a> <a href="/tagged/right"><span class="label">right</span></a> <a href="/tagged/scroll"><span class="label">scroll</span></a> <a href="/tagged/responsive"><span class="label">responsive</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/n7d22X9VsT" title="menu">Nested scrolling touch accordion menu</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/dirklatz">dirklatz</a></small>
                        <br>Bootstrap snippet / code Nested scrolling touch accordion menu..
                        <div><a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/nested"><span class="label">nested</span></a> <a href="/tagged/touch"><span class="label">touch</span></a> <a href="/tagged/scrolling"><span class="label">scrolling</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/snippet"><span class="label">snippet</span></a> <a href="/tagged/sidebar"><span class="label">sidebar</span></a> <a href="/tagged/vertical"><span class="label">vertical</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/28beBO0e2b" title="Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus.">Bootstrap 3 Submenus</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/dirklatz">dirklatz</a></small>
                        <br>Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/LI2prx3D01" title="Use Bootstrap collapse to toggle menus in the side bar. Also shows open or close icon.">Collapsible side navigation </a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/dirklatz">dirklatz</a></small>
                        <br>Use Bootstrap collapse to toggle menus in the side bar. Also shows open or close icon...
                        <div><a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/navbar"><span class="label">navbar</span></a> <a href="/tagged/collapse"><span class="label">collapse</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/toggle"><span class="label">toggle</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/kGQDrC4Vma" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/cskelly">cskelly</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/GIYmmJvGGp" title="Use Bootstrap collapse to toggle menus in the side bar. Also shows open or close icon.">Collapsible side navigation </a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/brygom">brygom</a></small>
                        <br>Use Bootstrap collapse to toggle menus in the side bar. Also shows open or close icon...
                        <div><a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/navbar"><span class="label">navbar</span></a> <a href="/tagged/collapse"><span class="label">collapse</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/toggle"><span class="label">toggle</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/nykJDHJ7Kf" title="Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus.">Bootstrap 3 Submenus</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/JohnnyClutch">JohnnyClutch</a></small>
                        <br>Submenus have been removed from Bootstrap 3, but with a few extra lines of CSS you can get dropdowns with multiple levels of menus..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/1Ymhk06o0l" title="menu">Vertical collapse menu</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/cskelly">cskelly</a></small>
                        <br>Bootstrap snippet / code Vertical collapse menu..
                        <div><a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/stacked"><span class="label">stacked</span></a> <a href="/tagged/vertical"><span class="label">vertical</span></a> <a href="/tagged/collapse"><span class="label">collapse</span></a> <a href="/tagged/sidebar"><span class="label">sidebar</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/zwcoG0xEfZ" title="menu">Nested scrolling touch accordion menu</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/cskelly">cskelly</a></small>
                        <br>Bootstrap snippet / code Nested scrolling touch accordion menu..
                        <div><a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/nested"><span class="label">nested</span></a> <a href="/tagged/touch"><span class="label">touch</span></a> <a href="/tagged/scrolling"><span class="label">scrolling</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/snippet"><span class="label">snippet</span></a> <a href="/tagged/sidebar"><span class="label">sidebar</span></a> <a href="/tagged/vertical"><span class="label">vertical</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/P5i6u2G7vV" title="Bootstrap tree with folder, sub folders..">FuelUX Tree with DataSource</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/Shane">Shane</a></small>
                        <br>Bootstrap tree with folder, sub folders....
                        <div><a href="/tagged/datasource"><span class="label">datasource</span></a> <a href="/tagged/fuelux"><span class="label">fuelux</span></a> <a href="/tagged/tree"><span class="label">tree</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/0THjK7HSPp" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/dirklatz">dirklatz</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/nLqvKyN46q" title="How to create a scrolling dropdown menu in Bootstrap for large item lists.">Scrollable Dropdown Menu</a>
                        <br><small style="font-size:85%;">8 months ago  by <a href="/users/dirklatz">dirklatz</a></small>
                        <br>How to create a scrolling dropdown menu in Bootstrap for large item lists...
                        <div><a href="/tagged/scrollable"><span class="label">scrollable</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/scrollbar"><span class="label">scrollbar</span></a> <a href="/tagged/scroll"><span class="label">scroll</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/g53fBbpDYE" title="How to make a big wide dropdown mega menu with Bootstrap. This example demonstrates a form, links, buttons and various options for a wide menu.">Big dropdown menu for Bootstrap</a>
                        <br><small style="font-size:85%;">9 months ago  by <a href="/users/rrmdp">rrmdp</a></small>
                        <br>How to make a big wide dropdown mega menu with Bootstrap. This example demonstrates a form, links, buttons and various options for..
                        <div><a href="/tagged/navbar"><span class="label">navbar</span></a> <a href="/tagged/mega"><span class="label">mega</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/wide"><span class="label">wide</span></a> <a href="/tagged/form"><span class="label">form</span></a> </div>
                        
                        <a href="/KkF6nQco7J" title="Similiar ply"><small>Similiar to undefined</small></a> &nbsp;  
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/MRKNvVn2xn" title="Use Bootstrap collapse to toggle menus in the side bar. Also shows open or close icon.">Collapsible side navigation </a>
                        <br><small style="font-size:85%;">9 months ago  by <a href="/users/bizamajig">bizamajig</a></small>
                        <br>Use Bootstrap collapse to toggle menus in the side bar. Also shows open or close icon...
                        <div><a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/navbar"><span class="label">navbar</span></a> <a href="/tagged/collapse"><span class="label">collapse</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/toggle"><span class="label">toggle</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/hkbVESeXf8" title="menu">Nested scrolling touch accordion menu</a>
                        <br><small style="font-size:85%;">9 months ago  by <a href="/users/bizamajig">bizamajig</a></small>
                        <br>Bootstrap snippet / code Nested scrolling touch accordion menu..
                        <div><a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/nested"><span class="label">nested</span></a> <a href="/tagged/touch"><span class="label">touch</span></a> <a href="/tagged/scrolling"><span class="label">scrolling</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/snippet"><span class="label">snippet</span></a> <a href="/tagged/sidebar"><span class="label">sidebar</span></a> <a href="/tagged/vertical"><span class="label">vertical</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/zrWJejiEQb" title="Accordion vertical menu with submenues based on list group">Accordion vertical menu sidebar</a>
                        <br><small style="font-size:85%;">9 months ago  by <a href="/users/bizamajig">bizamajig</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/zqD63TYX9X" title="Многоуровневое дерево меню &quot; вид &quot; с Bootstrap. Развернуть и свернуть подразделы.">Bootstrap 3 Side / Tree Menu</a>
                        <br><small style="font-size:85%;">9 months ago  by <a href="/users/BlacHole">BlacHole</a></small>
                        <br>Многоуровневое дерево меню &quot; вид &quot; с Bootstrap. Развернуть и свернуть подразделы...
                        <div><a href="/tagged/tree"><span class="label">tree</span></a> <a href="/tagged/nav"><span class="label">nav</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/sidebar"><span class="label">sidebar</span></a> <a href="/tagged/collapse"><span class="label">collapse</span></a> <a href="/tagged/sub"><span class="label">sub</span></a> <a href="/tagged/jquery"><span class="label">jquery</span></a> <a href="/tagged/toggle"><span class="label">toggle</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/fe4AfcEnKD" title="Accordion vertical menu with submenues based on list group">Vertical Sidebar - Accordion Menu with Submenus</a>
                        <br><small style="font-size:85%;">9 months ago  by <a href="/users/jquery">jquery</a></small>
                        <br>Accordion vertical menu with submenues based on list group..
                        <div><a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/submenu"><span class="label">submenu</span></a> <a href="/tagged/list-group"><span class="label">list-group</span></a> <a href="/tagged/accordion"><span class="label">accordion</span></a> <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a> <a href="/tagged/snippet"><span class="label">snippet</span></a> <a href="/tagged/sidebar"><span class="label">sidebar</span></a> </div>
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                <div class="row-fluid">
                    <div class="span12">
                        <a href="/dR8A1ndqTz" title="How to create a scrolling dropdown menu in Bootstrap for large item lists.">Scrollable Dropdown Menu</a>
                        <br><small style="font-size:85%;">9 months ago  by <a href="/users/ilikeit_114">ilikeit_114</a></small>
                        <br>How to create a scrolling dropdown menu in Bootstrap for large item lists...
                        <div><a href="/tagged/scrollable"><span class="label">scrollable</span></a> <a href="/tagged/menu"><span class="label">menu</span></a> <a href="/tagged/dropdown"><span class="label">dropdown</span></a> <a href="/tagged/scrollbar"><span class="label">scrollbar</span></a> <a href="/tagged/scroll"><span class="label">scroll</span></a> </div>
                        
                        <a href="/5g1KJn3gzU" title="Similiar ply"><small>Similiar to undefined</small></a> &nbsp;  
                        
                        <br> &nbsp;
                    </div>
                </div>
                
                
            
                
                
            
        
        </div>
        <ul class="pagination pager list-pager"></ul>
        <a href="/search?kw=menu" title="Twitter Bootstrap menu resources">Try a keyword search for 'menu'</a><br>
        <a href="/tags"><strong>all tags</strong></a>
        
        <hr>
        <h3>Related Tags</h3>
        
        
            <a href="/tagged/dropdown"><span class="label">dropdown</span></a>
        
            <a href="/tagged/menu"><span class="label">menu</span></a>
        
            <a href="/tagged/submenu"><span class="label">submenu</span></a>
        
            <a href="/tagged/list-group"><span class="label">list-group</span></a>
        
            <a href="/tagged/accordion"><span class="label">accordion</span></a>
        
            <a href="/tagged/bootstrap-3"><span class="label">bootstrap-3</span></a>
        
            <a href="/tagged/bootstrap 3"><span class="label">bootstrap 3</span></a>
        
            <a href="/tagged/nested"><span class="label">nested</span></a>
        
            <a href="/tagged/touch"><span class="label">touch</span></a>
        
            <a href="/tagged/scrolling"><span class="label">scrolling</span></a>
        
            <a href="/tagged/snippet"><span class="label">snippet</span></a>
        
            <a href="/tagged/sidebar"><span class="label">sidebar</span></a>
        
            <a href="/tagged/vertical"><span class="label">vertical</span></a>
        
            <a href="/tagged/angularjs"><span class="label">angularjs</span></a>
        
            <a href="/tagged/tree"><span class="label">tree</span></a>
        
            <a href="/tagged/nav"><span class="label">nav</span></a>
        
            <a href="/tagged/scrollable"><span class="label">scrollable</span></a>
        
            <a href="/tagged/scrollbar"><span class="label">scrollbar</span></a>
        
            <a href="/tagged/scroll"><span class="label">scroll</span></a>
        
            <a href="/tagged/datasource"><span class="label">datasource</span></a>
        
            <a href="/tagged/fuelux"><span class="label">fuelux</span></a>
        
            <a href="/tagged/collapse"><span class="label">collapse</span></a>
        
            <a href="/tagged/sub"><span class="label">sub</span></a>
        
            <a href="/tagged/jquery"><span class="label">jquery</span></a>
        
            <a href="/tagged/toggle"><span class="label">toggle</span></a>
        
            <a href="/tagged/navbar"><span class="label">navbar</span></a>
        
            <a href="/tagged/color"><span class="label">color</span></a>
        
            <a href="/tagged/customize"><span class="label">customize</span></a>
        
            <a href="/tagged/override"><span class="label">override</span></a>
        
            <a href="/tagged/link"><span class="label">link</span></a>
        
            <a href="/tagged/hover"><span class="label">hover</span></a>
        
            <a href="/tagged/mouseover"><span class="label">mouseover</span></a>
        
            <a href="/tagged/css"><span class="label">css</span></a>
        
            <a href="/tagged/buttons"><span class="label">buttons</span></a>
        
            <a href="/tagged/custom"><span class="label">custom</span></a>
        
            <a href="/tagged/panels"><span class="label">panels</span></a>
        
            <a href="/tagged/inline"><span class="label">inline</span></a>
        
            <a href="/tagged/acordian"><span class="label">acordian</span></a>
        
            <a href="/tagged/responsive"><span class="label">responsive</span></a>
        
            <a href="/tagged/left"><span class="label">left</span></a>
        
            <a href="/tagged/doctree"><span class="label">doctree</span></a>
        
            <a href="/tagged/site map"><span class="label">site map</span></a>
        
            <a href="/tagged/font awesome"><span class="label">font awesome</span></a>
        
            <a href="/tagged/javascript"><span class="label">javascript</span></a>
        
            <a href="/tagged/fieldset"><span class="label">fieldset</span></a>
        
            <a href="/tagged/horizontal"><span class="label">horizontal</span></a>
        
            <a href="/tagged/columns"><span class="label">columns</span></a>
        
            <a href="/tagged/icons"><span class="label">icons</span></a>
        
        <br>
        </div>
        <div class="span3">
        <div id="carbonads-container"><div class="carbonad"><div id="azcarbon"></div></div></div>
        <hr/>
        <h4>New on Bootply</h4>
        <ul id="newStuff" class="nav nav-tabs nav-stacked">
            
            
            
            <li><a href="/P8nJ8PA4wG">Bootstrap 3 Affix Sidebar..</a></li>
            
            
            
            <li><a href="/FpiCGPW7pj"> Carousel w/ Ajax Content..</a></li>
            
            
            
            <li><a href="/S5BqUHWR23"> affixed nav, fixed footer, cat..</a></li>
            
            
            
            <li><a href="/JxKf5luaa9">Fixed and Fluid with Collapsing..</a></li>
            
            
            
            <li><a href="/HK5E6s9NMF">Header with full width backgrou..</a></li>
            
            
            
            <li><a href="/nUjEduKrvG">Blue Template Fixed Sidebar + H..</a></li>
            
            
            
            <li><a href="/k8XGbc7Mk2">fbevis ansökan steg2..</a></li>
            
            
            
            <li><a href="/5cKmz6LkB8">fbevis ansökan start fel..</a></li>
            
            
            
            <li><a href="/mTDRIWp5GG">Bootstap 3 Thumbnail Caption Ho..</a></li>
            
            
            
            <li><a href="/FWonG3eZqI">fbevis ansökan start..</a></li>
            
            
            
            <li><a href="/2Q45Iu39HJ">clasichek..</a></li>
            
            
            
            <li><a href="/fXsJSVT7I8">Bootstrap calendar..</a></li>
            
            
            
            <li><a href="/rMcva1afiM">Underline navlinks on hover..</a></li>
            
            
            
            <li><a href="/BepxHntzIT">horizontal mobile navbar links..</a></li>
            
            
            
            <li><a href="/jRT4auKiMV">Simple Pricing Tables with Scal..</a></li>
            
            
            
            <li><a href="/ZcSNDY1cIO">Another fixed width left nav la..</a></li>
            
            
            
            <li><a href="/55SWZSxKAL">fixed width left nav with toggl..</a></li>
            
            
            
            <li><a href="/GKsHCpzWqt">Site..</a></li>
            
            
            
            <li><a href="/tjQtwShfHk">Dashboard with Off-canvas Sideb..</a></li>
            
            
            
            <li><a href="/JyU7fpFURL">Popup modal image - center vert..</a></li>
            
            
            
            <li><a href="/YJHHtaJc6n">Pečovatel..</a></li>
            
            
            
            <li><a href="/u77wouuIKE">Bootstrap 3 Toggle Switch..</a></li>
            
            
            
            <li><a href="/PCQfJoAoq5">Cost calculator - Калькулятор с..</a></li>
            
            
            
            <li><a href="/e10oIjU3Bw">Navbar - dropdown, submenu, sea..</a></li>
            
            
            
            <li><a href="/SroWm3xTvr">navbar multilevel dropdown with..</a></li>
            
            
            
            <li><a href="/ZCavC7KEq4">Bootstrap 3 Template / Theme - ..</a></li>
            
            
            
            <li><a href="/nzjOeY2nJr">HomePage..</a></li>
            
            
            
            <li><a href="/DW65WVewHO">SABERIA home..</a></li>
            
            
        </ul>
        <ul class="pagination pagination-mini pager" id="newStuffPager"></ul>
        </div>
    </div>
</div>
<script>
$(document).ready(function(){
    
    $('#listStuff').pageMe({pagerSelector:'.list-pager',perPage:10,showPrevNext:false,hidePageNumbers:false});
    $('#newStuff').pageMe({pagerSelector:'#newStuffPager',perPage:10,showPrevNext:true,hidePageNumbers:true});
    
    $('#btnFilter').click(function(){
        
        var addTag = $('#addTag').val().replace(/[^a-zA-Z\-]/g,"");
        window.location.href = "/like/menu+"+addTag;
        
    });
    
    $('#btnClear').click(function(){
        
        var tags = $(this).html().split("+");
        tags.pop();
        
        if (tags.length>=1) {
            window.location.href = "/like/"+tags.toString().replace(/,/g,"+");
        }
        
        return false;
        
    });
    
});
</script>
            <div id="push"></div>
        </div>
        <footer id="footer">
            <div class="row-fluid">
                <div class="span3">
                    <p> 
                        <a href="http://twitter.com/Bootply" rel="nofollow" title="Bootply on Twitter" target="ext">Twitter</a><br>
                        <a href="https://plus.google.com/+Bootply" rel="publisher">Google+</a><br>
                        <a href="http://facebook.com/Bootply" rel="nofollow" title="Bootply on Facebook" target="ext">Facebook</a><br>
                        <a href="https://github.com/iatek/bootply" title="Bootply on GitHub" target="ext">GitHub</a><br>
                    </p>
                </div>
                <div class="span3">
                    <p> 
                        <a data-toggle="modal" role="button" href="#contactModal">Contact</a><br>
                        <a href="/tags">Tags</a><br>
                        <a href="/bootstrap-community">Community</a><br>
                        <a href="/upgrade">Upgrade</a><br>
                    </p>
                </div>
                <div class="span3">
                    <p> 
                        <a href="https://bootstrapbay.com/?ref=skelly" target="_ext" rel="nofollow" title="Premium Bootstrap themes">Bootstrap Themes</a><br>
                        <a href="http://www.bootbundle.com" target="ext" rel="nofollow">BootBundle</a><br>
                        <a href="http://www.bootstrapzero.com" target="_ext" rel="nofollow" title="Free Bootstrap themes" target="ext">BootstrapZero</a><br>
                        <a href="http://www.codeply.com" rel="nofollow" title="Responsive design editor" target="_ext">Codeply</a></a><br>
                    </p>
                </div>
                <div class="span3">
                    <p>
                        <a href="/about#privacy">Privacy</a><br>
                        <a href="/about#terms">Terms</a><br><br>
                        <a href="http://www.shopify.com/?ref=bootply">Create a Store</a><br><br>
                        <span class="pull-right">Copyright 2013-2015 <a href="/" title="The Bootstrap Playground">Bootply</a></span>
                    </p>
                    
                </div>
            </div>
        </footer>
        
        <script src="/plugins/bootstrap-select.min.js"></script>
        <script src="/codemirror/jquery.codemirror.js"></script>
        <script src="/beautifier.js"></script>
        <script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
          ga('create', 'UA-40413119-1', 'bootply.com');
          ga('send', 'pageview');
        </script>
        <script>
        jQuery.fn.shake = function(intShakes, intDistance, intDuration, foreColor) {
            this.each(function() {
                if (foreColor && foreColor!="null") {
                    $(this).css("color",foreColor); 
                }
                $(this).css("position","relative"); 
                for (var x=1; x<=intShakes; x++) {
                $(this).animate({left:(intDistance*-1)}, (((intDuration/intShakes)/4)))
                .animate({left:intDistance}, ((intDuration/intShakes)/2))
                .animate({left:0}, (((intDuration/intShakes)/4)));
                $(this).css("color",""); 
            }
          });
        return this;
        };
        </script>
        <script>
        $(document).ready(function() {
        
            $('.tw-btn').fadeIn(3000);
            $('.alert').delay(5000).fadeOut(1500);
            
            $('#btnLogin').click(function(){
                $(this).text("...");
                $.ajax({
                    url: "/loginajax",
                    type: "post",
                    data: $('#formLogin').serialize(),
                    success: function (data) {
                        //console.log('data:'+data);
                        if (data.status==1&&data.user) { //logged in
                            $('#menuLogin').hide();
                            $('#lblUsername').text(data.user.username);
                            $('#menuUser').show();
                            /*
                            $('#completeLoginModal').modal('show');
                            $('#btnYes').click(function() {
                                window.location.href="/";
                            });
                            */
                        }
                        else {
                            $('#btnLogin').text("Login");
                            prependAlert("#spacer",data.error);
                            $('#btnLogin').shake(4,6,700,'#CC2222');
                            $('#username').focus();
                        }
                    },
                    error: function (e) {
                        $('#btnLogin').text("Login");
                        console.log('error:'+JSON.stringify(e));
                    }
                });
            });
            $('#btnRegister').click(function(){
                $(this).text("Wait..");
                $.ajax({
                    url: "/signup?format=json",
                    type: "post",
                    data: $('#formRegister').serialize(),
                    success: function (data) {
                        console.log('data:'+JSON.stringify(data));
                        if (data.status==1) {
                            $('#btnRegister').attr("disabled","disabled");
                            $('#formRegister').text('Thanks. You can now login using the Login form.');
                        }
                        else {
                            prependAlert("#spacer",data.error);
                            $('#btnRegister').shake(4,6,700,'#CC2222');
                            $('#btnRegister').text("Sign Up");
                            $('#inputEmail').focus();
                        }
                    },
                    error: function (e) {
                        $('#btnRegister').text("Sign Up");
                        console.log('error:'+e);
                    }
                });
            });
            
            $('.loginFirst').click(function(){
                $('#navLogin').trigger('click');
                return false;
            });
            
            $('#btnForgotPassword').on('click',function(){
                
                if ($('#inputEmailForgot').val()==="") {
                    prependAlert("#spacer","Specify the email address.");
                }
                else {
                    $.ajax({
                        url: "/resetPassword",
                        type: "post",
                        data: $('#formForgotPassword').serializeObject(),
                        success: function (data) {
                            if (data.status==1){
                                prependAlert("#spacer",data.msg);
                                return true;
                            }
                            else {
                                prependAlert("#spacer","Your password could not be reset.");
                                return false;
                            }
                        },
                        error: function (e) {
                            console.log('error:'+e);
                        }
                    });
                }
                
            });
            
            $('#btnContact').click(function(){
                
                $.ajax({
                    url: "/contact",
                    type: "post",
                    data: $('#formContact').serializeObject(),
                    success: function (data) {
                        if (data.status==1){
                            prependAlert("#spacer","Thanks. We got your message and will get back to you shortly.");
                             $('#contactModal').modal('hide');
                            return true;
                        }
                        else {
                            prependAlert("#spacer",data.error);
                            return false;
                        }
                    },
                    error: function (e) {
                        console.log('error:'+e);
                    }
                });
                return false;
            });
            
            /*
            $('.nav .dropdown-menu input').on('click touchstart',function(e) {
                e.stopPropagation();
            });
            */
            
            
            
            
            
        });
        $.fn.serializeObject = function()
        {
            var o = {};
            var a = this.serializeArray();
            $.each(a, function() {
                if (o[this.name] !== undefined) {
                    if (!o[this.name].push) {
                        o[this.name] = [o[this.name]];
                    }
                    o[this.name].push(this.value || '');
                } else {
                    o[this.name] = this.value || '';
                }
            });
            return o;
        };
        var prependAlert = function(appendSelector,msg){
            $(appendSelector).after('<div class="alert alert-info alert-block affix" id="msgBox" style="z-index:1300;margin:14px!important;">'+msg+'</div>');
            $('.alert').delay(3500).fadeOut(1000);
        }
        </script>
       
        <div id="completeLoginModal" class="modal hide">
            <div class="modal-header">
                <a href="#" data-dismiss="modal" aria-hidden="true" class="close">×</a>
                 <h3>Do you want to proceed?</h3>
            </div>
            <div class="modal-body">
                <p>This page must be refreshed to complete your login.</p>
                <p>You will lose any unsaved work once the page is refreshed.</p>
                <br><br>
                <p>Click "No" to cancel the login process.</p>
                <p>Click "Yes" to continue...</p>
            </div>
            <div class="modal-footer">
              <a href="#" id="btnYes" class="btn danger">Yes, complete login</a>
              <a href="#" data-dismiss="modal" aria-hidden="true" class="btn secondary">No</a>
            </div>
        </div>
        <div id="forgotPasswordModal" class="modal hide">
            <div class="modal-header">
                <a href="#" data-dismiss="modal" aria-hidden="true" class="close">×</a>
                 <h3>Password Lookup</h3>
            </div>
            <div class="modal-body">
                  <form class="form form-horizontal" id="formForgotPassword">    
                  <div class="control-group">
                      <label class="control-label" for="inputEmailForgot">Email</label>
                      <div class="controls">
                          <input name="_csrf" id="token" type="hidden" value="OAUQrnO6-wnLy9aK47D0OzXgZjfdO94CU1TI">
                          <input type="email" name="email" id="inputEmailForgot" placeholder="you@youremail.com" required="">
                          <span class="help-block"><small>Enter the email address you used to sign-up.</small></span>
                      </div>
                  </div>
                  </form>
            </div>
            <div class="modal-footer pull-center">
                <a href="#" data-dismiss="modal" aria-hidden="true" class="btn">Cancel</a> 	
            	<a href="#" data-dismiss="modal" id="btnForgotPassword" class="btn btn-success">Reset Password</a>
            </div>
            
        </div>
        <div id="upgradeModal" class="modal hide">
            <div class="modal-header">
                <a href="#" data-dismiss="modal" aria-hidden="true" class="close">×</a>
                 <h4>Would you like to upgrade?</h4>
            </div>
            <div class="modal-body">
                  <p class="text-center"><strong></strong></p>
                  <h1 class="text-center">$4<small>/mo</small></h1>
                  <p class="text-center"><small>Unlimited plys. Unlimited downloads. No Ads.</small></p>
                  <p class="text-center"><img src="/assets/i_visa.png" width="50" alt="visa" /> <img src="/assets/i_mc.png" width="50" alt="mastercard"  /> <img src="/assets/i_amex.png" width="50" alt="amex" /> <img src="/assets/i_discover.png" width="50" alt="discover" /> <img src="/assets/i_paypal.png" width="50" alt="paypal" /></p>
            </div>
            <div class="modal-footer pull-center">
                <a href="/upgrade" class="btn btn-block btn-huge btn-success"><strong>Upgrade Now</strong></a>
            	<a href="#" data-dismiss="modal" class="btn btn-block btn-huge">No Thanks, Maybe Later</a>
            	
            </div>
        </div>
        <div id="contactModal" class="modal hide">
            <div class="modal-header">
                <a href="#" data-dismiss="modal" aria-hidden="true" class="close">×</a>
                <h3>Contact Us</h3>
                <p>suggestions, questions or feedback</p>
            </div>
            <div class="modal-body">
                  <form class="form form-horizontal" id="formContact">
                      <input name="_csrf" id="token" type="hidden" value="OAUQrnO6-wnLy9aK47D0OzXgZjfdO94CU1TI">
                      <div class="control-group">
                          <label class="control-label" for="inputSender">Name</label>
                          <div class="controls">
                              <input type="text" name="sender" id="inputSender" class="input-large" placeholder="Your name">
                          </div>
                      </div>
                      <div class="control-group">
                          <label class="control-label" for="inputMessage">Message</label>
                          <div class="controls">
                              <textarea name="notes" rows="5" id="inputMessage" class="input-large" placeholder="Type your message here"></textarea>
                          </div>
                      </div>
                      <div class="control-group">
                          <label class="control-label" for="inputEmail">Email</label>
                          <div class="controls">
                              <input type="text" name="email" id="inputEmail" class="input-large" placeholder="you@youremail.com (for reply)" required="">
                          </div>
                      </div>
                  </form>
            </div>
            <div class="modal-footer pull-center">
                <a href="#" data-dismiss="modal" aria-hidden="true" class="btn">Cancel</a>     
                <a href="#" data-dismiss="modal" aria-hidden="true" id="btnContact" role="button" class="btn btn-success">Send</a>
            </div>
        </div>

	</body>
	<script src="/plugins/bootstrap-pager.js"></script>
</html>