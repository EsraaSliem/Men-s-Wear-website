<%-- 
    Document   : view_all_user
    Created on : Feb 21, 2019, 7:54:41 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
Au<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
    <head>
        <title>New Shop a E-Commerce Online Shopping Category Flat Bootstrap Responsive Website Template | Registered :: w3layouts</title>
        <!--css-->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <!--css-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="New Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <script src="js/jquery.min.js"></script>
        <link href='//fonts.googleapis.com/css?family=Cagliostro' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'>
        <!--search jQuery-->
        <script src="js/main.js"></script>
        <!--search jQuery-->

        <!--mycart-->
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <!-- cart -->
        <script src="js/simpleCart.min.js"></script>
        <!-- cart -->
    </head>
    <body>
        <!--header-->
        <div class="header">
            <div class="header-top">
                <div class="container">
                    <div class="top-left">
                        <a href="#"> Help  <i class="glyphicon glyphicon-phone" aria-hidden="true"></i> +0123-456-789</a>
                    </div>
                    <div class="top-right">
                        <ul>
                            <li><a href="checkout.html">Checkout</a></li>
                            <li><a href="login.html">Login</a></li>
                            <li><a href="registered.html"> Create Account </a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="heder-bottom">
                <div class="container">
                    <div class="logo-nav">
                        <div class="logo-nav-left">
                            <h1><a href="index.html">New Shop <span>Shop anywhere</span></a></h1>
                        </div>
                        <div class="logo-nav-left1">
                            <nav class="navbar navbar-default">
                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header nav_2">
                                    <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div> 
                                <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                                    <ul class="nav navbar-nav">
                                        <li class="active"><a href="index.html" class="act">Home</a></li>	
                                        <!-- Mega Menu -->

                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Men <b class="caret"></b></a>
                                            <ul class="dropdown-menu multi-column columns-3">
                                                <div class="row">
                                                    <div class="col-sm-3  multi-gd-img">
                                                        <ul class="multi-column-dropdown">
                                                            <h6>Categories</h6>
                                                            <li><a href="ClothesController">Clothing</a></li>							
                                                            <li><a href="ShoesController">Shoes</a></li>
                                                            <li><a href="WalletController">Wallet</a></li>

                                                        </ul>
                                                    </div>

                                                    <div class="col-sm-3  multi-gd-img">
                                                        <a href="products1.html"><img src="images/woo3.jpg" alt=" "/></a>
                                                    </div> 
                                                    <div class="col-sm-3  multi-gd-img">
                                                        <a href="products1.html"><img src="images/woo4.jpg" alt=" "/></a>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </div>
                                            </ul>
                                        </li>

                                        <li><a href="mail.html">Mail Us</a></li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                        <div class="logo-nav-right">
                            <ul class="cd-header-buttons">
                                <li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
                            </ul> <!-- cd-header-buttons -->
                            <div id="cd-search" class="cd-search">
                                <form action="#" method="post">
                                    <input name="Search" type="search" placeholder="Search...">
                                </form>
                            </div>	
                        </div>
                        <div class="header-right2">
                            <div class="cart box_1">
                                <a href="checkout.html">
                                    <h3> <div class="total">
                                            <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
                                        <img src="images/bag.png" alt="" />
                                    </h3>
                                </a>
                                <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
                                <div class="clearfix"> </div>
                            </div>	
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
        </div>
        <!--header-->
        <!--banner-->
        <div class="banner1">
            <div class="container">
                <h3><a href="index.jsp">Home</a> / <span>all user</span></h3>
            </div>
        </div>
        <!--banner-->

        <!--content-->
        <div class="content">
            <!--login-->
            <div class="login">
                <div class="main-agileits" style="padding: 0rem">
                    <div class="form-w3agile form1" >
                        
                        <div style="
                                 text-align: center;
                                 color: blue;
                                 padding: 2rem;">
                            <h2>Fatma</h2>
                        </div>
                        <div style="display: flex;
                             ">
                            <div style="
                                 text-align: center;
                                 width: 50%;
                                 color:#fff;
                                 background-color: #60869e;
                                 padding: 2rem;">
                                <i class="fas fa-envelope"></i>
                                <p>nada@gmail.com</p>
                            </div>

                            <div style="
                                 text-align: center;
                                 width: 50%;
                                 color:#fff;
                                 background-color: #376598;
                                 padding: 2rem;">
                                <i class="fas fa-map-marker-alt"></i>
                                <p>Cairo</p>
                            </div>
                        </div>



                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!--login-->
        </div>
        <!--content-->
        <!---footer--->
        <div class="footer-w3l">
            <div class="container">
                <div class="footer-grids">
                    <div class="col-md-3 footer-grid">
                        <h4>About </h4>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                        <div class="social-icon">
                            <a href="#"><i class="icon"></i></a>
                            <a href="#"><i class="icon1"></i></a>
                            <a href="#"><i class="icon2"></i></a>
                            <a href="#"><i class="icon3"></i></a>
                        </div>
                    </div>
                    <div class="col-md-3 footer-grid">
                        <h4>My Account</h4>
                        <ul>
                            <li><a href="checkout.html">Checkout</a></li>
                            <li><a href="login.html">Login</a></li>
                            <li><a href="registered.html"> Create Account </a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer-grid">
                        <h4>Information</h4>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="products.html">Products</a></li>
                            <li><a href="codes.html">Short Codes</a></li>
                            <li><a href="mail.html">Mail Us</a></li>
                            <li><a href="products1.html">products1</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer-grid foot">
                        <h4>Contacts</h4>
                        <ul>
                            <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i><a href="#">E Comertown Rd, Westby, USA</a></li>
                            <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i><a href="#">1 599-033-5036</a></li>
                            <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:example@mail.com"> example@mail.com</a></li>

                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>

            </div>
        </div>
        <!---footer--->
        <!--copy-->
        <div class="copy-section">
            <div class="container">

                <div class="copy-right">
                    <img src="images/card.png" alt=""/>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!--copy-->


    </body>
</html>