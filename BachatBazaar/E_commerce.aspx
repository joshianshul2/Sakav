<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="E_commerce.aspx.cs" Inherits="BachatBazaar.E_commerce" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Sakav</title>
    <!--/tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="E-Commerce Site by Masu Technologies Inc." />
   <style>
.inr-sign::before{
content:"\20B9";
}
// Or use with ::after
.inr-sign::after{
content:"\20B9";
}
</style>

    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <script>
        function getData(ImageId,ImageName,Location, Rate,SaveRate,Category) {
          //  alert("Hi");
           
//first get all parameters if any
            var ImageId = ImageId;//"OM"; // $('#txtFirstName').val();
            var ImageName = ImageName;//"OM"; // $('#txtFirstName').val();
            var Rate = Rate;//"SINHA"; // $('#txtLastName').val();
            var Location = Location;
            var Rate = Rate;
            var SaveRate = SaveRate;
            var Category = Category; 
           
$.ajax({
    type: 'POST',
    dataType: 'json',
    contentType: 'application/json; charset=utf-8',
    //url: “yourpagename.aspx/yourmethodnamewithoutbracesandparameters”
    url: 'Default.aspx/CallFunction',
//Be carefull about single quotation marks while parsing parameters
//If function have no parameters, parse blank “data” for eg, data: “{ }”,
    data: "{'ImageId':'" + ImageId + "','ImageName':'" + ImageName + "', 'Location':'" + Location + "', 'Rate':'" + Rate + "', 'SaveRate':'" + SaveRate + "', 'Category':'" + Category + "'}",
success: function (success) {
//called on ajax call success
//alert("Success: " + success.d);
},
//call on ajax call failure
error: function (xhr, textStatus, error) {
//called on ajax call error
alert("Error: " + error);
}
});
}

        
    </script>

     <script>
        function saveData() {
            //  alert("Hi");
            debugger;     
//first get all parameters if any
            var  Name= $('#txtName').val();
            var  Email= $('#txtEmail').val();
            var  Mobile= $('#txtMobile').val();
            var  Password = $('#txtPassword').val();
            var  ConfirmPassword = $('#txtConfirmPassword').val();
           
$.ajax({
    type: 'POST',
    dataType: 'json',
    contentType: 'application/json; charset=utf-8',
    //url: “yourpagename.aspx/yourmethodnamewithoutbracesandparameters”
    url: 'Default.aspx/saveFunction',
//Be carefull about single quotation marks while parsing parameters
//If function have no parameters, parse blank “data” for eg, data: “{ }”,
    data: "{'Name':'" + Name + "','Email':'" + Email + "', 'Mobile':'" + Mobile + "', 'Password':'" + Password + "', 'ConfirmPassword':'" + ConfirmPassword + "'}",
success: function (success) {
//called on ajax call success
alert("User Created Successfully...");
},
//call on ajax call failure
error: function (xhr, textStatus, error) {
//called on ajax call error
alert("Error: " + error);
}
});
}

        
    </script>
    <!--//tags -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/font-awesome.css" rel="stylesheet">
    <!--pop-up-box-->
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
    <!--//pop-up-box-->
    <!-- price range -->
    <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
    <!-- fonts -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>

<body>

    <!-- top-header -->
    <div class="header-most-top">
        <%--<p>Grocery Offer Zone Top Deals & Discounts</p>--%>
    </div>
    <!-- //top-header -->
    <!-- header-bot-->
    <div class="header-bot">
        <div class="header-bot_inner_wthreeinfo_header_mid">
            <!-- header-bot-->
            <div class="col-md-4 logo_agile">
                <h1>
                <a href="Default.aspx">
                         <span>S</span>akav
                     
                        <img src="images/logo2.png" alt=" ">
                    </a>
                </h1>
            </div>
            <!-- header-bot -->
            <div class="col-md-8 header">
                <!-- header lists -->
                <ul>
                  <%--  <li>
                        <a class="play-icon popup-with-zoom-anim" href="#small-dialog1">
                            <span class="fa fa-map-marker" aria-hidden="true"></span> Shop Locator</a>
                    </li>--%>
                    <%--<li>
                        <a href="#" data-toggle="modal" data-target="#myModal1">
                            <span class="fa fa-truck" aria-hidden="true"></span>Track Order</a>
                    </li>--%>
                    <li>
                        <span class="fa fa-phone" aria-hidden="true"></span> 9755496553
                        <br />&nbsp;&nbsp;&nbsp;09301944440
                    </li>
                    <li>
                        <a href="#" data-toggle="modal" data-target="#myModal1">
                            <span class="fa fa-unlock-alt" aria-hidden="true"></span> Sign In </a>
                    </li>
                    <li>
                        <a href="#" data-toggle="modal" data-target="#myModal2">
                            <span class="fa fa-pencil-square-o" aria-hidden="true"></span> Sign Up </a>
                    </li>
                </ul>
                <!-- //header lists -->
                <!-- search -->
                <div class="agileits_search">
                    <form action="#" method="post">
                       <%-- <input name="Search" type="search" placeholder="How can we help you today?" required="">--%>
                         abc@gmail.com &nbsp;&nbsp; <select id="drpSearch" style ="height:30px; width :260px;margin-top:20px" name="agileinfo_search" placeholder="How can we help you today?" required="" onchange="location = this.value;">
                        <option value="">Front Page Items</option>
                        <%=SetAllItems() %>
                       
                    </select>
                       
                      <%--  <button type="submit" class="btn btn-default" aria-label="Left Align">
                            <span class="fa fa-search" aria-hidden="true"> </span>
                        </button>--%>
                    </form>
                </div>
                <!-- //search -->
                <!-- cart details -->
                <div class="top_nav_right">
                    <div class="wthreecartaits wthreecartaits2 cart cart box_1">
                        <form action="#" method="post" class="last">
                            <input type="hidden" name="cmd" value="_cart">
                            <input type="hidden" name="display" value="1">
                            <button class="w3view-cart" type="submit" name="submit" value="" >
                                <i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
                            </button>
                        </form>
                    </div>
                </div>
                <!-- //cart details -->
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <!-- Modal1 -->
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body modal-body-sub_agile">
                    <div class="main-mailposi">
                        <span class="fa fa-envelope-o" aria-hidden="true"></span>
                    </div>
                    <div class="modal_body_left modal_body_left1">
                        <h3 class="agileinfo_sign">Sign In </h3>
                       <%-- <p>
                            Sign In now, Let's start your Grocery Shopping. Don't have an account?
                            <a href="#" data-toggle="modal" data-target="#myModal2">
                                Sign Up Now</a>
                        </p>--%>
                       <form action="#" id="frm" runat ="server" >
                            <div class="styled-input agile-styled-input-top">
                                <input type="text" id="txtUserName" placeholder="Email Id" name="Name"  runat ="server"  required="">
                                </div>
                            <div class="styled-input">
                                <input type="password" placeholder="Password" id="txtPaasword" name="password" runat ="server" required="" >
                            </div>
                           <%-- <input type="submit" value="Sign In" runat ="server" id="btnSubmit">--%>
                           <asp:Button ID="btnSAVE" Text ="Sign In" runat ="server" OnClick="btnSubmit_Click" />
                           
                        </form>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>




            </div>
            <!-- //Modal content-->
        </div>
    </div>
    <!-- //Modal1 -->
    <!-- //signin Model -->
    <!-- signup Model -->
    <!-- Modal2 -->
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body modal-body-sub_agile">
                    <div class="main-mailposi">
                        <span class="fa fa-envelope-o" aria-hidden="true"></span>
                    </div>
                    <div class="modal_body_left modal_body_left1">
                        <h3 class="agileinfo_sign">Sign Up</h3>
                        <p>
                            Come join the Sakav! Let's set up your Account.
                        </p>
                        <form action="#" method="post">
                            <div class="styled-input agile-styled-input-top">
                                <input type="text" id="txtName" placeholder="Name" name="Name" required="">
                            </div>
                            <div class="styled-input">
                                <input type="email" id="txtEmail" placeholder="E-mail" name="Email" required="">
                            </div>
                            <div class="styled-input">
                                <input type="text" id="txtMobile" placeholder="Mobile No" name="MobileNo" required="">
                            </div>
                            <div class="styled-input">
                                <input type="password"  id="txtPassword" placeholder="Password" name="password"  required="">
                            </div>
                            <div class="styled-input">
                                <input type="password" id="txtConfirmPassword" placeholder="Confirm Password" name="Confirm Password"  required="">
                            </div>
                            <input type="submit" onclick="saveData();" value="Sign Up">
                        </form>
                        <p>
                            <a href="#">By clicking register, I agree to your terms</a>
                        </p>
                    </div>
                </div>
            </div>
            <!-- //Modal content-->
        </div>
    </div>
    <!-- //Modal2 -->
    <!-- //signup Model -->
    <!-- //header-bot -->
    <!-- navigation -->
    <div class="ban-top">
        <div class="container">
            <div class="agileits-navi_search">
                <form action="#" method="post">

                   <select id="agileinfo-nav_search" name="agileinfo_search" required="" onchange="location = this.value;">
                        <option value="">All Categories</option>
                        <%=SetAllCategories() %>
                        <%--<option value="Kitchen">Kitchen</option>
                        <option value="Household">Household</option>
                        <option value="Snacks &amp; Beverages">Snacks & Beverages</option>
                        <option value="Personal Care">Personal Care</option>
                        <option value="Gift Hampers">Gift Hampers</option>
                        <option value="Fruits &amp; Vegetables">Fruits & Vegetables</option>
                        <option value="Baby Care">Baby Care</option>
                        <option value="Soft Drinks &amp; Juices">Soft Drinks & Juices</option>
                        <option value="Frozen Food">Frozen Food</option>
                        <option value="Bread &amp; Bakery">Bread & Bakery</option>
                        <option value="Sweets">Sweets</option>--%>
                    </select>
                </form>
            </div>
            <div class="top_nav_left">
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                                aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav menu__list">
                                <li class="active">
                                    <a class="nav-stylehead" href="Default.aspx">Home
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                               <%-- <li class="">
                                    <a class="nav-stylehead" href="AboutUs.aspx">About Us</a>
                                </li>--%>
                                <%--KITCHEN MENU--%>
                     <%--           <li class="dropdown">
                                    <a href="#" class="dropdown-toggle nav-stylehead" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Kitchen
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu multi-column columns-3">
                                        <div class="agile_inner_drop_nav_info">
                                            <div class="col-sm-4 multi-gd-img">
                                                <ul class="multi-column-dropdown">
                                                    <li>
                                                        <a href="Product.aspx">Bakery</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Baking Supplies</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Coffee, Tea & Beverages</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Dried Fruits, Nuts</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Sweets, Chocolate</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Spices & Masalas</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Jams, Honey & Spreads</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-4 multi-gd-img">
                                                <ul class="multi-column-dropdown">
                                                    <li>
                                                        <a href="Product.aspx">Pickles</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Pasta & Noodles</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Rice, Flour & Pulses</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Sauces & Cooking Pastes</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Snack Foods</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Oils, Vinegars</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Meat, Poultry & Seafood</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            </div>
                                            <div class="col-sm-4 multi-gd-img">
                                                <img src="images/nav.png" alt="">
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </ul>
                                </li>
                    
                                <%=MainMenu() %>
                                <%=MainMenu1() %>
                                
                   <li class="dropdown">
                                    <a href="#" class="dropdown-toggle nav-stylehead" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Household
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu multi-column columns-3">
                                        <div class="agile_inner_drop_nav_info">
                                            <div class="col-sm-6 multi-gd-img">
                                                <ul class="multi-column-dropdown">
                                                    <li>
                                                        <a href="Product.aspx">Kitchen & Dining</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Detergents</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Utensil Cleaners</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Floor & Other Cleaners</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Disposables, Garbage Bag</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Repellents & Fresheners</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx"> Dishwash</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-6 multi-gd-img">
                                                <ul class="multi-column-dropdown">
                                                    <li>
                                                        <a href="Product.aspx">Pet Care</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Cleaning Accessories</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Pooja Needs</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Crackers</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Festive Decoratives</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Plasticware</a>
                                                    </li>
                                                    <li>
                                                        <a href="Product.aspx">Home Care</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </ul>
                                </li>
             --%>                <%--   <li class="">
                                    <a class="nav-stylehead" href="Faqs.aspx">Faqs</a>
                                </li>
                              <li class="dropdown">
                                    <a class="nav-stylehead dropdown-toggle" href="#" data-toggle="dropdown">Pages
                                        <b class="caret"></b>
                                    </a>
                                    <ul class="dropdown-menu agile_short_dropdown">
                                        <li>
                                            <a href="Icons.aspx">Web Icons</a>
                                        </li>
                                        <li>
                                            <a href="Typography.aspx">Typography</a>
                                        </li>
                                    </ul>
                                </li>--%>  
                                <li class="">
                                    <a class="nav-stylehead" href="Contact.aspx">Contact</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- //navigation -->
    <!-- banner -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators-->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1" class=""></li>
            <li data-target="#myCarousel" data-slide-to="2" class=""></li>
            <li data-target="#myCarousel" data-slide-to="3" class=""></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <div class="container">
                    <div class="carousel-caption">
                       <%-- <h3>Big
                            <span>Save</span>
                        </h3>--%>
                    <%--    <p>Get flat
                            <span>10%</span> Cashback</p>--%>
                     <%--   <a class="button2" href="#"></a>--%>
                    </div>
                </div>
            </div>
            <div class="item item2">
                <div class="container">
                    <div class="carousel-caption">
                        <%--<p>Get Upto
                            <span>30%</span> Off</p>--%>
                       <%-- <a class="button2" href="#">Shop Now </a>--%>
                    </div>
                </div>
            </div>
            <div class="item item3">
                <div class="container">
                    <div class="carousel-caption">
                       <%-- <h3>Big
                            <span>Deal</span>
                        </h3>--%>
                       <%-- <p>Get Best Offer Upto
                            <span>20%</span>
                        </p>--%>
                      <%--  <a class="button2" href="#">Shop Now </a>--%>
                    </div>
                </div>
            </div>
            <div class="item item4">
                <div class="container">
                    <div class="carousel-caption">
                       <%-- <h3>Today
                            <span>Discount</span>
                        </h3>
                        <p>Get Now
                            <span>Upto 40%</span> Discount</p>
                        <a class="button2" href="#">Shop Now </a>--%>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- //banner -->

    <!-- top Products -->
    <div class="ads-grid">
        <div class="container">
            <!-- tittle heading -->
            <h3 class="tittle-w3l">Our Top Products
                <span class="heading-style">
                    <i></i>
                    <i></i>
                    <i></i>
                </span>
            </h3>
            <!-- //tittle heading -->
            <!-- product left -->
            <div class="side-bar col-md-3">
                 <%-- <div class="search-hotel">
                  <h3 class="agileits-sear-head">Search Here..</h3>
                    <form action="#" method="post">
                        <input type="search" placeholder="Product name..." name="search" required="">
                        <input type="submit" value=" ">
                    </form>
                </div>--%>
                <!-- price range -->
              <%--  <div class="range">
                    <h3 class="agileits-sear-head">Price range</h3>
                    <ul class="dropdown-menu6">
                        <li>

                            <div id="slider-range"></div>
                            <input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
                        </li>
                    </ul>
                </div>
              --%>  <!-- //price range -->
                <!-- food preference -->
              <%--  <div class="left-side">
                    <h3 class="agileits-sear-head">Food Preference</h3>
                    <ul>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">Vegetarian</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">Non-Vegetarian</span>
                        </li>
                    </ul>
                </div>--%>
                <!-- //food preference -->
                <!-- discounts -->
       <%--         <div class="left-side">
                    <h3 class="agileits-sear-head">Discount</h3>
                    <ul>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">5% or More</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">10% or More</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">20% or More</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">30% or More</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">50% or More</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">60% or More</span>
                        </li>
                    </ul>
                </div>
       --%>         <!-- //discounts -->
                <!-- reviews -->
               <%-- <div class="customer-rev left-side">
                    <h3 class="agileits-sear-head">Customer Review</h3>
                    <ul>
                        <li>
                            <a href="#">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span>5.0</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <span>4.0</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <span>3.5</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <span>3.0</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                <span>2.5</span>
                            </a>
                        </li>
                    </ul>
                </div>--%>
                <!-- //reviews -->
                <!-- cuisine -->
               <%-- <div class="left-side">
                    <h3 class="agileits-sear-head">Cuisine</h3>
                    <ul>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">South American</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">French</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">Greek</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">Chinese</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">Japanese</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">Italian</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">Mexican</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">Thai</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span">Indian</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked">
                            <span class="span"> Spanish </span>
                        </li>
                    </ul>
                </div>--%>
                <!-- //cuisine -->
                <!-- deals -->
                <div class="deal-leftmk left-side" style="background-color :white;">
                    <h3 class="agileits-sear-head">Special Deals</h3>
                    <div class="special-sec1">
                        <div class="col-xs-4 img-deals">
                            <%=LoadTopLV1Image() %>
                        </div>
                         <div class="clearfix"></div>
                    </div>
                    <div class="special-sec1">
                        <div class="col-xs-4 img-deals">
                            <%=LoadTopLV2Image() %>
                          </div>
                       </div>
                    <div class="clearfix"></div>
                
                    <div class="special-sec1">
                        <div class="col-xs-4 img-deals">
                             <%=LoadTopLV3Image() %>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="special-sec1">
                        <div class="col-xs-4 img-deals">
                               <%=LoadTopLV4Image() %>
                        </div>
                        <div class="col-xs-8 img-deal1">
                        <div class="clearfix"></div>
                    </div>
                    <div class="special-sec1">
                        <div class="col-xs-4 img-deals">
                          <%--  <img src="images/d3.jpg" alt="">--%>
                            <br />  
                           <%-- <%=LoadTopLV5Image() %>--%>
                            <%-- <span style="margin-right:-165px;"  class='product-new-top'><%= strTopLV5Disc %>%</span>--%>
                   
                        </div>
                            
                        <div class="col-xs-8 img-deal1">
                            <%--<h3>Cadbury Dairy Milk</h3>--%>
                          <%--   <h5 style="padding-left:20px;padding-top :50px"><asp:Label ID ="lblTopLV5Name" runat="server" ></asp:Label></h5>--%>


                           <%-- <a href="Single.aspx">$149.00</a>--%>
                           <%--<a href="Single.aspx?Id=<%= Id  %>"><i style="padding-left:20px" class="fa fa-inr"></i> <asp:Label ID="lblTopLV5Rate" runat ="server"></asp:Label>--%>
                                   <br />
                              <%--  &nbsp;&nbsp;&nbsp;Offer-<asp:Label  ID="lblTopV5OfferRate" class="fa fa-inr"  runat ="server"></asp:Label>

                           </a>--%>

    </div>

                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- //deals -->
            </div>
            <!-- //product left -->
            <!-- product right -->
            <div class="agileinfo-ads-display col-md-9">
                <div class="wrapper">
                    <!-- first section (nuts) -->
                    <div class="product-sec1">
                      <%--  <h3 class="heading-tittle">Products</h3>--%>
                        <div class="col-md-4 product-men">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                   <%-- <a href='Product.aspx?txt="<%= strTop1Category   %>"'><img src="ProductImage/<%=strTop1ImageHeading %>" alt =''  height='165' width='115'></a>";--%>
                      
                                    <%=LoadTop1()  %>
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <%--<a href="Single.aspx?Id=<%= Session["Id"].ToString()  %>" class="link-product-add-cart">Have a Look</a>--%>
                                               <%--<a href="Single.aspx?Id=<%= Id  %>" class="link-product-add-cart">Have a Look</a>--%>
                                               <a href="Product.aspx?txt=<%= strTop1Category   %>" class="link-product-add-cart">Have a Look</a>
                                        </div>
                                    </div>
                                  <%--  <span class="product-new-top">New</span>--%>
                                <%--    <span class="product-new-top"><%=strTop1Disc  %></span>--%>
                                </div>
                                <div class="item-info-product ">
                                    <h4>
                                        <%--<a href="Single.aspx?Id=<%= Id  %>">
                                            <asp:Label ID="lblTop1" runat ="server" ></asp:Label>
                                        </a>--%>
                                    </h4>
                               
                                 <%--   <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                        <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="business" value=" " />
                                                <input type="hidden" name="item_name" value="<%=strTop1ImageHeading %>" />
                                                <input type="hidden" name="amount" value="<%=strTop1Rate  %>" />
                                                <input type="hidden" name="discount_amount" value="0" />
                                               
                                                <input type="hidden" name="currency_code" value="INR" />
                                                <input type="hidden" name="return" value=" " />
                                                <input type="hidden" name="cancel_return" value=" " />
                                                <input type="submit" name="submit" value="Add to cart" onclick="getData('<%=Id.ToString() %>','<%=strTop1ImageHeading.ToString() %>','Top','<%=strTop1Rate.ToString()  %>','<%=strTop1SaveRate.ToString()  %>', '<%=strTop1Category.ToString()  %>')" class="button" />
                                              
                                            </fieldset>
                                        </form>
                                    </div>--%>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                   
                                    <%=LoadTop2() %>
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="Product.aspx?txt=<%= strTop2Category  %>" class="link-product-add-cart">Have a Look</a>
                                        </div>
                                    </div>
<%--                                    <span class="product-new-top"><%=strTop2Disc  %>%</span>--%>

                                </div>
                                <div class="item-info-product ">
                              <%--      <h4>
                                        <a href="Single.aspx?Id=<%= Id  %>">
                                     <asp:Label ID="lblTop2" runat ="server" ></asp:Label>
                                        </a>
                                    </h4>
                              --%> 
                                    <%--<div class="info-product-price">
                                        <span class="item_price">
                                                <i class="fa fa-inr"></i> <asp:Label ID="lblRateTop2" runat ="server" ></asp:Label>

                                        </span>
                                        <del>
                                            <i class="fa fa-inr"></i> <asp:Label ID="lblSaveTop2" runat ="server" ></asp:Label>

                                        </del>
                                    </div>--%>
                                   <%-- <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                        <form action="#" method="post">
                                            <fieldset>
                                               <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="business" value=" " />
                                                <input type="hidden" name="item_name" value="<%=strTop2ImageHeading %>" />
                                                <input type="hidden" name="amount" value="<%=strTop2Rate  %>" />
                                                <input type="hidden" name="discount_amount" value="0" />
                                              
                                                <input type="hidden" name="currency_code" value="INR" />
                                                <input type="hidden" name="return" value=" " />
                                                <input type="hidden" name="cancel_return" value=" " />
                                                <input type="submit" name="submit" value="Add to cart" onclick="getData('<%=Id.ToString() %>','<%=strTop2ImageHeading.ToString() %>','Top','<%=strTop2Rate.ToString()  %>','<%=strTop2SaveRate.ToString()  %>', '<%=strTop2Category.ToString()  %>')" class="button" />
                                            </fieldset>
                                        </form>
                                    </div>--%>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">

                                    <%=LoadTop3() %>
                                     
                                        <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="Product.aspx?txt=<%= strTop3Category  %>" class="link-product-add-cart">Have a Look</a>
                                        </div>
                                    </div>
                                    <%--<span class="product-new-top"><%=strTop3Disc  %>%</span>--%>

                                </div>
                                <div class="item-info-product ">
                                <%--    <h4>
                                        <a href="Single.aspx?Id=<%= Id  %>">
                                           <asp:Label ID="lblTop3" runat ="server" ></asp:Label>  
                                        </a>
                                    </h4>
                                    <div class="info-product-price">
                                        <span class="item_price">
                                            <i class="fa fa-inr"></i> <asp:Label ID="lblRateTop3" runat ="server" ></asp:Label>
                                        </span>
                                        <del>
                                            <i class="fa fa-inr"></i> <asp:Label ID="lblSaveTop3" runat ="server" ></asp:Label>
                                        </del>
                                    </div>
                                    <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                        <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="business" value=" " />
                                                <input type="hidden" name="item_name" value="<%=strTop3ImageHeading %>" />
                                                <input type="hidden" name="amount" value="<%=strTop3Rate  %>" />
                                                <input type="hidden" name="discount_amount" value="0" />
                                                <input type="hidden" name="currency_code" value="INR" />
                                                <input type="hidden" name="return" value=" " />
                                                <input type="hidden" name="cancel_return" value=" " />
                                                <input type="submit" name="submit" value="Add to cart" onclick="getData('<%=Id.ToString() %>','<%=strTop3ImageHeading.ToString() %>','Top','<%=strTop3Rate.ToString()  %>','<%=strTop3SaveRate.ToString()  %>', '<%=strTop3Category.ToString()  %>')" class="button" />
                                       
                                            </fieldset>
                                        </form>
                                    </div>--%>

                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <!-- //first section (nuts) -->
                    <!-- second section (nuts special) -->
                   <%-- <div class="product-sec1 product-sec2">
                        <div class="col-xs-7 effect-bg">
                            <h3 class="">Pure Energy</h3>
                            <h6>Enjoy our all healthy Products</h6>
                            <p>Get Extra 10% Off</p>
                     
                        </div>
                   --%>     
                   <%-- <h3 class="w3l-nut-middle">Products</h3>
                        <div class="col-xs-5 bg-right-nut">
                           
                      <%=LoadMiddle2() %>
                        </div>
                        <div class="clearfix"></div>
                    </div>--%>
                    <!-- //second section (nuts special) -->
                    <!-- third section (oils) -->
                    <div class="product-sec1">
                        <%--<h3 class="heading-tittle">Products</h3>--%>
                        <div class="col-md-4 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                         <%=LoadMiddle1() %>
                                    <!--<img src="images/mk4.jpg" alt="">-->
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="Product.aspx?txt=<%= strMiddle1Category  %>" class="link-product-add-cart">Have a Look</a>
                                        </div>
                                    </div>
                                 <%--   <span class="product-new-top"><%=strMiddle1Disc  %>%</span>--%>
                                </div>
                                <div class="item-info-product ">
                                   <%-- <h4>
                                        <a href="Single.aspx?Id=<%= strMiddle1Category  %>">
                                             <asp:Label ID="lblMiddle1" runat ="server" ></asp:Label>
                                        </a>
                                    </h4>--%>
                                 <%--   <div class="info-product-price">
                                        <span class="item_price">
                                            <i class="fa fa-inr"></i> <asp:Label ID="lblRateMiddle1" runat ="server" ></asp:Label>
                                        </span>
                                        <del>
                                            <i class="fa fa-inr"></i> <asp:Label ID="lblSaveMiddle1" runat ="server" ></asp:Label>
                                        </del>
                                    </div>
                                    <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                        <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="business" value=" " />
                                                <input type="hidden" name="item_name" value="<%=strMiddle1ImageHeading %>" />
                                                <input type="hidden" name="amount" value="100" />
                                                <input type="hidden" name="discount_amount" value="0" />
                                                <input type="hidden" name="currency_code" value="INR" />
                                                <input type="hidden" name="return" value=" " />
                                                <input type="hidden" name="cancel_return" value=" " />
                                                
                                                 <input type="submit" name="submit" value="Add to cart" onclick="getData('<%=Id.ToString() %>','<%=strMiddle1ImageHeading.ToString() %>','Middle','<%=strMiddle1Rate.ToString()  %>','<%=strMiddle1SaveRate.ToString()  %>', '<%=strMiddle1Category.ToString()  %>')" class="button" />
                                            </fieldset>
                                        </form>
                                    </div>--%>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                        <%=LoadMiddle2() %>
<!--                                    <img src="images/mk5.jpg" alt="">-->
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="Product.aspx?txt=<%= strMiddle2Category   %>" class="link-product-add-cart">Have a Look</a>
                                        </div>
                                    </div>
                                    <%--<span class="product-new-top"><%=strMiddle2Disc  %>%</span>--%>

                                </div>
                                <div class="item-info-product ">
                            <%--        <h4>
                                        <a href="Single.aspx?Id=<%= Id  %>">
                                            <asp:Label ID="lblMiddle2" runat ="server" ></asp:Label>
                                        </a>
                                    </h4>
                                    <div class="info-product-price">
                                        <span class="item_price">
                                            <i class="fa fa-inr"></i> <asp:Label ID="lblRateMiddle2" runat ="server" ></asp:Label>
                                        </span>
                                        <del>
                                            <i class="fa fa-inr"></i> <asp:Label ID="lblSaveMiddle2" runat ="server" ></asp:Label>
                                        </del>
                                    </div>
                                    <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                        <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="business" value=" " />
                                                <input type="hidden" name="item_name" value="<%=strMiddle2ImageHeading %>" />
                                                <input type="hidden" name="amount" value="<%=strMiddle2Rate   %>" />
                                              
                                                <input type="hidden" name="discount_amount" value="0" />
                                                <input type="hidden" name="currency_code" value="INR" />
                                                <input type="hidden" name="return" value=" " />
                                                <input type="hidden" name="cancel_return" value=" " />
                                              
                                                   <input type="submit" name="submit" value="Add to cart" onclick="getData('<%=Id.ToString() %>','<%=strMiddle2ImageHeading.ToString() %>','Middle','<%=strMiddle2Rate.ToString()  %>','<%=strMiddle2SaveRate.ToString()  %>', '<%=strMiddle2Category.ToString()  %>')" class="button" />
                                            </fieldset>
                                        </form>
                                    </div>--%>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                        <%=LoadMiddle3() %>
                                    <!--<img src="images/mk6.jpg" alt="">-->
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="Product.aspx?txt=<%= strMiddle3Category %>" class="link-product-add-cart">Have a Look</a>
                                        </div>
                                    </div>
                                   <%-- <span class="product-new-top"><%=strMiddle3Disc  %>%</span>--%>

                                </div>
                                <div class="item-info-product ">
                                   <%-- <h4>
                                        <a href="Single.aspx?Id=<%= Id  %>">
                                            <asp:Label ID="lblMiddle3" runat ="server" ></asp:Label>
                                        </a>
                                    </h4>
                                    <div class="info-product-price">
                                        <span class="item_price">
                                            <i class="fa fa-inr"></i> <asp:Label ID="lblRateMiddle3" runat ="server" ></asp:Label>
                                        </span>
                                        <del>
                                            <i class="fa fa-inr"></i> <asp:Label ID="lblSaveMiddle3" runat ="server" ></asp:Label>
                                        </del>
                                    </div>
                                    <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                        <form action="#" method="post">
                                            <fieldset>
                                                   <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="business" value=" " />
                                                <input type="hidden" name="item_name" value="<%=strMiddle3ImageHeading %>" />
                                                <input type="hidden" name="amount" value="<%=strMiddle3Rate   %>" />
                                                <input type="hidden" name="discount_amount" value="0" />
                                                <input type="hidden" name="currency_code" value="INR" />
                                                <input type="hidden" name="return" value=" " />
                                                <input type="hidden" name="cancel_return" value=" " />
                                                <input type="submit" name="submit" value="Add to cart" onclick="getData('<%=Id.ToString() %>','<%=strMiddle1ImageHeading.ToString() %>','Middle','<%=strMiddle3Rate.ToString()  %>','<%=strMiddle3SaveRate.ToString()  %>', '<%=strMiddle3Category.ToString()  %>')" class="button" />
                                            </fieldset>
                                        </form>
                                    </div>--%>

                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <!-- //third section (oils) -->
                    <!-- fourth section (noodles) -->
                    <div class="product-sec1">
                       <%-- <h3 class="heading-tittle">Products</h3>--%>
                        <div class="col-md-4 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                        <%=LoadBottom1() %>
<!--                                    <img src="images/mk7.jpg" alt="">-->
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="Product.aspx?txt=<%=  strBottom1Category   %>" class="link-product-add-cart">Have a Look</a>
                                        </div>
                                    </div>
                                      <%--<span class="product-new-top"><%=strBottom1Disc   %>%</span>--%>
                          
                                    </div>
                                <div class="item-info-product ">
                                    <%--<h4>
                                        <a href="Single.aspx?Id=<%= Id  %>">
                                            <asp:Label ID="lblBottom1" runat ="server" ></asp:Label>
                                        </a>
                                    </h4>
                                    <div class="info-product-price">
                                        <span class="item_price">
                                            <i class="fa fa-inr"></i> <asp:Label ID="lblRateBottom1" runat ="server" ></asp:Label>
                                        </span>
                                        <del>
                                            <i class="fa fa-inr"></i> <asp:Label ID="lblSaveBottom1" runat ="server" ></asp:Label>
                                        </del>
                                    </div>
                                    <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                        <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="business" value=" " />
                                                <input type="hidden" name="item_name" value="<%=strBottom1ImageHeading %>" />
                                                <input type="hidden" name="amount" value="<%=strBottom1Rate   %>" />
                                                <input type="hidden" name="discount_amount" value="0" />
                                                <input type="hidden" name="currency_code" value="INR" />
                                                <input type="hidden" name="return" value=" " />
                                                <input type="hidden" name="cancel_return" value=" " />
                                               
                                                   <input type="submit" name="submit" value="Add to cart" onclick="getData('<%=Id.ToString() %>','<%=strBottom1ImageHeading.ToString() %>','Bottom','<%=strBottom1Rate.ToString()  %>','<%=strBottom1SaveRate.ToString()  %>', '<%=strBottom1Category.ToString()  %>')" class="button" />
                                            </fieldset>
                                        </form>
                                    </div>--%>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                        <%=LoadBottom2() %>
<!--                                    <img src="images/mk8.jpg" alt="">-->
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="Product.aspx?txt=<%= strBottom2Category  %>" class="link-product-add-cart">Have a Look</a>
                                        </div>
                                    </div>
                                    <%--<span class="product-new-top"><%=strBottom2Disc   %>%</span>--%>

                                </div>
                                <div class="item-info-product ">
                                    <%--<h4>
                                        <a href="Single.aspx?Id=<%= Id  %>">
                                            <asp:Label ID="lblBottom2" runat ="server" ></asp:Label>
                                        </a>
                                    </h4>
                                    <div class="info-product-price">
                                        <span class="item_price">
                                            <i class="fa fa-inr"></i> <asp:Label ID="lblRateBottom2" runat ="server" ></asp:Label>
                                        </span>
                                        <del>
                                            <i class="fa fa-inr"></i> <asp:Label ID="lblSaveBottom2" runat ="server" ></asp:Label>
                                        </del>
                                    </div>
                                    <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                       <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="business" value=" " />
                                                <input type="hidden" name="item_name" value="<%=strBottom2ImageHeading %>" />
                                                <input type="hidden" name="amount" value="<%=strBottom2Rate   %>" />
                                                
                                                <input type="hidden" name="discount_amount" value="0" />
                                                <input type="hidden" name="currency_code" value="INR" />
                                                <input type="hidden" name="return" value=" " />
                                                <input type="hidden" name="cancel_return" value=" " />
                                                  <input type="submit" name="submit" value="Add to cart" onclick="getData('<%=Id.ToString() %>','<%=strBottom2ImageHeading.ToString() %>','Bottom','<%=strBottom2Rate.ToString()  %>','<%=strBottom2SaveRate.ToString()  %>', '<%=strBottom2Category.ToString()  %>')" class="button" />
                                            </fieldset>
                                        </form>
                                    </div>--%>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                        <%=LoadBottom3() %>
<!--                                    <img src="images/mk9.jpg" alt="">-->
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="Product.aspx?txt=<%= strBottom3Category  %>" class="link-product-add-cart">Have a Look</a>
                                        </div>
                                    </div>
                                    <%--<span class="product-new-top"><%=strBottom3Disc   %>%</span>--%>

                                </div>
                                <div class="item-info-product ">
                                    <%--<h4>
                                        <a href="Single.aspx?Id=<%= Id  %>">
                                            <asp:Label ID="lblBottom3" runat ="server" ></asp:Label>
                                        </a>
                                    </h4>
                                    <div class="info-product-price">
                                        <span class="item_price">
                                            <i class="fa fa-inr"></i> <asp:Label ID="lblRateBottom3" runat ="server" ></asp:Label>
                                        </span>
                                        <del>
                                            <i class="fa fa-inr"></i> <asp:Label ID="lblSaveBottom3" runat ="server" ></asp:Label>
                                        </del>
                                    </div>
                                    <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                        <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="business" value=" " />
                                                <input type="hidden" name="item_name" value="<%=strBottom3ImageHeading %>" />
                                                <input type="hidden" name="amount" value="<%=strBottom3Rate   %>" />
                                                <input type="hidden" name="discount_amount" value="0" />
                                                <input type="hidden" name="currency_code" value="INR" />
                                                <input type="hidden" name="return" value=" " />
                                                <input type="hidden" name="cancel_return" value=" " />
                                                        <input type="submit" name="submit" value="Add to cart" onclick="getData('<%=Id.ToString() %>','<%=strBottom3ImageHeading.ToString() %>','Bottom','<%=strBottom3Rate.ToString()  %>','<%=strBottom3SaveRate.ToString()  %>', '<%=strBottom3Category.ToString()  %>')" class="button" />
                                            </fieldset>
                                        </form>
                                    </div>--%>

                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <!-- //fourth section (noodles) -->
                </div>
            </div>
            <!-- //product right -->
        </div>
    </div>
    <!-- //top products -->
    <!-- special offers -->
    <div class="featured-section" id="projects">
        <div class="container">
            <!-- tittle heading -->
            <h3 class="tittle-w3l">Special Offers
                <span class="heading-style">
                    <i></i>
                    <i></i>
                    <i></i>
                </span>
            </h3>
            <!-- //tittle heading -->
            <div class="content-bottom-in">
                <ul id="flexiselDemo1">
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <%--<a href="Single.aspx?Id=<%= strSl1   %>">--%>
                                  <%--  <img src="images/s1.jpg" alt="">--%>
                                    <%=LoadSlider1() %>
                      <%--          <span class='product-new-top'><%= strSlider1Disc %>%</span>
                      --%>          <%--</a>--%>
                            </div>
                            <div class="product-name-w3l">
                                <%--<h4>
                                    <a href="Single.aspx?Id=<%= strSl1  %>">
                                        <asp:Label ID="lblSlider1" runat ="server" ></asp:Label>
                                    </a>
                                </h4>--%>
                               <%-- <div class="w3l-pricehkj">
                                    <h6>
                                        <i class="fa fa-inr">Offer</i> <asp:Label ID="lblRateSlider1" runat ="server" ></asp:Label>
                                        &nbsp;&nbsp;
                                    </h6>
                                    <p><i class="fa fa-inr"></i> <asp:Label ID="lblSaveSlider1" runat ="server" ></asp:Label></p>
                                </div>
                                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                    <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="business" value=" " />
                                                <input type="hidden" name="item_name" value="<%=strSlider1ImageHeading %>" />
                                                <input type="hidden" name="amount" value="<%=strSlider1Rate   %>" />
                                                <input type="hidden" name="discount_amount" value="<%=strSlider1Disc   %>" />
                                                <input type="hidden" name="discount_amount" value="0" />
                                                <input type="hidden" name="currency_code" value="INR" />
                                                <input type="hidden" name="return" value=" " />
                                                <input type="hidden" name="cancel_return" value=" " />
                                                         <input type="submit" name="submit" value="Add to cart" onclick="getData('<%=Id.ToString() %>','<%=strSlider1ImageHeading.ToString() %>','Slider','<%=strSlider1Rate.ToString()  %>','<%=strSlider1SaveRate.ToString()  %>', '<%=strSlider1Category.ToString()  %>')" class="button" />
                                            </fieldset>
                                        </form>
                                </div>--%>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <%--<a href="Single.aspx?Id=<%= strSl2  %>">--%>
                                  
                                <%=LoadSlider2() %>
                       <%--               <span class='product-new-top'><%= strSlider2Disc %>%</span>
                       --%>         <%--</a>--%>
                            </div>
                            <div class="product-name-w3l">
                           <%--     <h4>
                                    <a href="Single.aspx?Id=<%= strSl2  %>">
                                        <asp:Label ID="lblSlider2" runat ="server" ></asp:Label>
                                    </a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>
                                        <i class="fa fa-inr">Offer</i> <asp:Label ID="lblRateSlider2" runat ="server" ></asp:Label>
                                    </h6>
                                    <p><i class="fa fa-inr"></i> <asp:Label ID="lblSaveSlider2" runat ="server" ></asp:Label></p>
                                </div>
                                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                     <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="business" value=" " />
                                                <input type="hidden" name="item_name" value="<%=strSlider2ImageHeading %>" />
                                                <input type="hidden" name="amount" value="<%=strSlider2Rate   %>" />
                                                <input type="hidden" name="discount_amount" value="<%=strSlider2Disc   %>" />
                                                <input type="hidden" name="currency_code" value="INR" />
                                                <input type="hidden" name="return" value=" " />
                                                <input type="hidden" name="cancel_return" value=" " />
                                              <input type="submit" name="submit" value="Add to cart" onclick="getData('<%=Id.ToString() %>','<%=strSlider2ImageHeading.ToString() %>','Slider','<%=strSlider2Rate.ToString()  %>','<%=strSlider2SaveRate.ToString()  %>', '<%=strSlider2Category.ToString()  %>')" class="button" />
                                            </fieldset>
                                        </form>
                                </div>--%>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                               <%-- <a href="Single.aspx?Id=<%= strSl3  %>">--%>
                                         <%=LoadSlider3() %>
                         <%--             <span class='product-new-top'><%= strSlider3Disc %>%</span>--%>
                               <%-- </a>--%>
                            </div>
                            <div class="product-name-w3l">
                            <%--    <h4>
                                    <a href="Single.aspx?Id=<%= strSl3  %>">
                                        <asp:Label ID="lblSlider3" runat ="server" ></asp:Label>
                                    </a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>
                                        <i class="fa fa-inr">Offer</i> <asp:Label ID="lblRateSlider3" runat ="server" ></asp:Label>
                                    </h6>
                                    <p><i class="fa fa-inr"></i> <asp:Label ID="lblSaveSlider3" runat ="server" ></asp:Label></p>
                                </div>
                                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
  <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="business" value=" " />
                                                <input type="hidden" name="item_name" value="<%=strSlider3ImageHeading %>" />
                                                <input type="hidden" name="amount" value="<%=strSlider3Rate   %>" />
                                                <input type="hidden" name="discount_amount" value="<%=strSlider3Disc   %>" />
                                                <input type="hidden" name="currency_code" value="INR" />
                                                <input type="hidden" name="return" value=" " />
                                                <input type="hidden" name="cancel_return" value=" " />
                                   <input type="submit" name="submit" value="Add to cart" onclick="getData('<%=Id.ToString() %>','<%=strSlider3ImageHeading.ToString() %>','Slider','<%=strSlider3Rate.ToString()  %>','<%=strSlider3SaveRate.ToString()  %>', '<%=strSlider3Category.ToString()  %>')" class="button" />
                                            </fieldset>
                                        </form>
                                </div>--%>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <%--<a href="Single.aspx?Id=<%= strSl4   %>">--%>
                                  <%--  <img src="images/s3.jpg" alt="">--%>
                                       <%=LoadSlider4() %>
                                    <%--  <span class='product-new-top'><%= strSlider4Disc %>%</span>--%>
                                <%--</a>--%>
                            </div>
                            <div class="product-name-w3l">
                                <%--<h4>
                                    <a href="Single.aspx?Id=<%= strSl4  %>">
                                        <asp:Label ID="lblSlider4" runat ="server" ></asp:Label>
                                    </a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>
                                        <i class="fa fa-inr">Offer </i> <asp:Label ID="lblRateSlider4" runat ="server" ></asp:Label>
                                    </h6>
                                    <p><i class="fa fa-inr"></i> <asp:Label ID="lblSaveSlider4" runat ="server" ></asp:Label></p>
                                </div>
                                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                   <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="business" value=" " />
                                                <input type="hidden" name="item_name" value="<%=strSlider4ImageHeading %>" />
                                                <input type="hidden" name="amount" value="<%=strSlider4Rate   %>" />
                                                <input type="hidden" name="discount_amount" value="<%=strSlider4Disc   %>" />
                                                <input type="hidden" name="currency_code" value="INR" />
                                                <input type="hidden" name="return" value=" " />
                                                <input type="hidden" name="cancel_return" value=" " />
                                          <input type="submit" name="submit" value="Add to cart" onclick="getData('<%=Id.ToString() %>','<%=strSlider4ImageHeading.ToString() %>','Slider','<%=strSlider4Rate.ToString()  %>','<%=strSlider4SaveRate.ToString()  %>', '<%=strSlider4Category.ToString()  %>')" class="button" />
                                            </fieldset>
                                        </form>
                                </div>--%>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <%--<a href="Single.aspx?Id=<%= strSl5  %>">--%>
                                    <%--<img src="images/s8.jpg" alt="">--%>
                                           <%=LoadSlider5() %>
                                <%--      <span class='product-new-top'><%= strSlider5Disc %>%</span>--%>
                                <%--</a>--%>
                            </div>
                            <div class="product-name-w3l">
                                <%--<h4>
                                    <a href="Single.aspx?Id=<%= strSl5  %>">
                                        <asp:Label ID="lblSlider5" runat ="server" ></asp:Label>
                                    </a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>
                                        <i class="fa fa-inr">Offer</i> <asp:Label ID="lblRateSlider5" runat ="server" ></asp:Label>
                                    </h6>
                                    <p><i class="fa fa-inr"></i> <asp:Label ID="lblSaveSlider5" runat ="server" ></asp:Label></p>
                                </div>
                                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                     <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="business" value=" " />
                                                <input type="hidden" name="item_name" value="<%=strSlider5ImageHeading %>" />
                                                <input type="hidden" name="amount" value="<%=strSlider5Rate   %>" />
                                                <input type="hidden" name="discount_amount" value="<%=strSlider5Disc   %>" />
                                                <input type="hidden" name="currency_code" value="INR" />
                                                <input type="hidden" name="return" value=" " />
                                                <input type="hidden" name="cancel_return" value=" " />
                                          <input type="submit" name="submit" value="Add to cart" onclick="getData('<%=Id.ToString() %>','<%=strSlider5ImageHeading.ToString() %>','Slider','<%=strSlider5Rate.ToString()  %>','<%=strSlider5SaveRate.ToString()  %>', '<%=strSlider5Category.ToString()  %>')" class="button" />
                                            </fieldset>
                                        </form>
                                </div>--%>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <%--<a href="Single.aspx?Id=<%= strSl6  %>">--%>
                                    <%--<img src="images/s6.jpg" alt="">--%>
                                           <%=LoadSlider6() %>
                                    <%--  <span class='product-new-top'><%= strSlider6Disc %>%</span>--%>
                                <%--</a>--%>
                            </div>
                            <div class="product-name-w3l">
                           <%--     <h4>
                                    <a href="Single.aspx?Id=<%= strSl6  %>">
                                        <asp:Label ID="lblSlider6" runat ="server" ></asp:Label>
                                    </a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>
                                        <i class="fa fa-inr">Offer</i> <asp:Label ID="lblRateSlider6" runat ="server" ></asp:Label>
                                    </h6>
                                    <p><i class="fa fa-inr"></i> <asp:Label ID="lblSaveSlider6" runat ="server" ></asp:Label></p>
                                </div>
                                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
  <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="business" value=" " />
                                                <input type="hidden" name="item_name" value="<%=strSlider6ImageHeading %>" />
                                                <input type="hidden" name="amount" value="<%=strSlider6Rate   %>" />
                                                <input type="hidden" name="discount_amount" value="<%=strSlider6Disc   %>" />
                                                <input type="hidden" name="currency_code" value="INR" />
                                                <input type="hidden" name="return" value=" " />
                                                <input type="hidden" name="cancel_return" value=" " />
                                                   <input type="submit" name="submit" value="Add to cart" onclick="getData('<%=Id.ToString() %>','<%=strSlider6ImageHeading.ToString() %>','Slider','<%=strSlider6Rate.ToString()  %>','<%=strSlider6SaveRate.ToString()  %>', '<%=strSlider6Category.ToString()  %>')" class="button" />
                                            </fieldset>
                                        </form>
                                </div>--%>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                               <%--<a href="Single.aspx?Id=<%= strSl7  %>">--%>
                               
                                           <%=LoadSlider7() %>
                                      <%--<span class='product-new-top'><%= strSlider7Disc %>%</span>--%>
                                   <%--</a>--%>
                            </div>
                            <div class="product-name-w3l">
                                <%--<h4>
                                    <a href="Single.aspx?Id=<%= strSl7  %>">
                                        <asp:Label ID="lblSlider7" runat ="server" ></asp:Label>
                                    </a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>
                                        <i class="fa fa-inr">Offer</i> <asp:Label ID="lblRateSlider7" runat ="server" ></asp:Label>
                                    </h6>
                                    <p>Offer Rate <i class="fa fa-inr"></i> <asp:Label ID="lblSaveSlider7" runat ="server" ></asp:Label></p>
                                </div>
                                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
  <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="business" value=" " />
                                                <input type="hidden" name="item_name" value="<%=strSlider7ImageHeading %>" />
                                                <input type="hidden" name="amount" value="<%=strSlider7Rate   %>" />
                                                <input type="hidden" name="discount_amount" value="<%=strSlider7Disc   %>" />
                                                <input type="hidden" name="currency_code" value="INR" />
                                                <input type="hidden" name="return" value=" " />
                                                <input type="hidden" name="cancel_return" value=" " />
                                                <input type="submit" name="submit" value="Add to cart" onclick="getData('<%=Id.ToString() %>','<%=strSlider7ImageHeading.ToString() %>','Slider','<%=strSlider7Rate.ToString()  %>','<%=strSlider7SaveRate.ToString()  %>', '<%=strSlider7Category.ToString()  %>')" class="button" />
                                            </fieldset>
                                        </form>
                                </div>--%>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <%--<a href="Single.aspx?Id=<%= strSl8  %>">--%>
                                    <%--<img src="images/s9.jpg" alt="">--%>
                                           <%=LoadSlider8() %>
                     <%--                 <span class='product-new-top'><%= strSlider8Disc %>%</span>--%>
                                <%--</a>--%>
                            </div>
                            <div class="product-name-w3l">
                                <%--<h4>
                                    <a href="Single.aspx?Id=<%= strSl8  %>">
                                        <asp:Label ID="lblSlider8" runat ="server" ></asp:Label>
                                    </a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>
                                        <i class="fa fa-inr"></i> <asp:Label ID="lblRateSlider8" runat ="server" ></asp:Label>     
                                    </h6>
                                    <p>Offer Rate<i class="fa fa-inr"></i> <asp:Label ID="lblSaveSlider8" runat ="server" ></asp:Label></p>
                                </div>
                                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
  <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="business" value=" " />
                                                <input type="hidden" name="item_name" value="<%=strSlider8ImageHeading %>" />
                                                <input type="hidden" name="amount" value="<%=strSlider8Rate   %>" />
                                                <input type="hidden" name="discount_amount" value="<%=strSlider8Disc   %>" />
                                                <input type="hidden" name="currency_code" value="INR" />
                                                <input type="hidden" name="return" value=" " />
                                                <input type="hidden" name="cancel_return" value=" " />
                                                <input type="submit" name="submit" value="Add to cart" onclick="getData('<%=Id.ToString() %>','<%=strSlider8ImageHeading.ToString() %>','Slider','<%=strSlider8Rate.ToString()  %>','<%=strSlider8SaveRate.ToString()  %>', '<%=strSlider8Category.ToString()  %>')" class="button" />
                                            </fieldset>
                                        </form>
                                </div>--%>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //special offers -->
    <!-- newsletter -->
    <%--<div class="footer-top">
        <div class="container-fluid">
            <div class="col-xs-8 agile-leftmk">
                <h2>Get your Groceries delivered from local stores</h2>
                <p>Free Delivery on your first order!</p>
                <form action="#" method="post">
                    <input type="email" placeholder="E-mail" name="email" required="">
                    <input type="submit" value="Subscribe">
                </form>
                <div class="newsform-w3l">
                    <span class="fa fa-envelope-o" aria-hidden="true"></span>
                </div>
            </div>
            <div class="col-xs-4 w3l-rightmk">
                <img src="images/tab3.png" alt=" ">
            </div>
            <div class="clearfix"></div>
        </div>
    </div>--%>
    <!-- //newsletter -->
    <!-- footer -->
  <%--  <footer>
        <div class="container">
            <!-- footer first section -->
            <p class="footer-main">
                <span>"Grocery Shoppy"</span> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur
                magni dolores eos qui ratione voluptatem sequi nesciunt.Sed ut perspiciatis unde omnis iste natus error sit voluptatem
                accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto
                beatae vitae dicta sunt explicabo.</p>
            <!-- //footer first section -->
            <!-- footer second section -->
            <div class="w3l-grids-footer">
                <div class="col-xs-4 offer-footer">
                    <div class="col-xs-4 icon-fot">
                        <span class="fa fa-map-marker" aria-hidden="true"></span>
                    </div>
                    <div class="col-xs-8 text-form-footer">
                        <h3>Track Your Order</h3>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="col-xs-4 offer-footer">
                    <div class="col-xs-4 icon-fot">
                        <span class="fa fa-refresh" aria-hidden="true"></span>
                    </div>
                    <div class="col-xs-8 text-form-footer">
                        <h3>Free & Easy Returns</h3>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="col-xs-4 offer-footer">
                    <div class="col-xs-4 icon-fot">
                        <span class="fa fa-times" aria-hidden="true"></span>
                    </div>
                    <div class="col-xs-8 text-form-footer">
                        <h3>Online cancellation </h3>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
            <!-- //footer second section -->
            <!-- footer third section -->
            <div class="footer-info w3-agileits-info">
                <!-- footer categories -->
                <div class="col-sm-5 address-right">
                    <div class="col-xs-6 footer-grids">
                        <h3>Categories</h3>
                        <ul>
                            <li>
                                <a href="Product.aspx">Grocery</a>
                            </li>
                            <li>
                                <a href="Product.aspx">Fruits</a>
                            </li>
                            <li>
                                <a href="Product.aspx">Soft Drinks</a>
                            </li>
                            <li>
                                <a href="Product.aspx">Dishwashers</a>
                            </li>
                            <li>
                                <a href="Product.aspx">Biscuits & Cookies</a>
                            </li>
                            <li>
                                <a href="Product.aspx">Baby Diapers</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-xs-6 footer-grids agile-secomk">
                        <ul>
                            <li>
                                <a href="Product.aspx">Snacks & Beverages</a>
                            </li>
                            <li>
                                <a href="Product.aspx">Bread & Bakery</a>
                            </li>
                            <li>
                                <a href="Product.aspx">Sweets</a>
                            </li>
                            <li>
                                <a href="Product.aspx">Chocolates & Biscuits</a>
                            </li>
                            <li>
                                <a href="Product.aspx">Personal Care</a>
                            </li>
                            <li>
                                <a href="Product.aspx">Dried Fruits & Nuts</a>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!-- //footer categories -->
                <!-- quick links -->
                <div class="col-sm-5 address-right">
                    <div class="col-xs-6 footer-grids">
                        <h3>Quick Links</h3>
                        <ul>
                            <li>
                                <a href="AboutUs.aspx">About Us</a>
                            </li>
                            <li>
                                <a href="Contact.aspx">Contact Us</a>
                            </li>
                            <li>
                                <a href="Help.aspx">Help</a>
                            </li>
                            <li>
                                <a href="Faqs.aspx">Faqs</a>
                            </li>
                            <li>
                                <a href="Terms.aspx">Terms of use</a>
                            </li>
                            <li>
                                <a href="privacy.aspx">Privacy Policy</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-xs-6 footer-grids">
                        <h3>Get in Touch</h3>
                        <ul>
                            <li>
                                <i class="fa fa-map-marker"></i> 123 Sebastian, USA.</li>
                            <li>
                                <i class="fa fa-mobile"></i> 333 222 3333 </li>
                            <li>
                                <i class="fa fa-phone"></i> +222 11 4444 </li>
                            <li>
                                <i class="fa fa-envelope-o"></i>
                                <a href="mailto:example@mail.com"> mail@example.com</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- //quick links -->
                <!-- social icons -->
                <div class="col-sm-2 footer-grids  w3l-socialmk">
                    <h3>Follow Us on</h3>
                    <div class="social">
                        <ul>
                            <li>
                                <a class="icon fb" href="#">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a class="icon tw" href="#">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a class="icon gp" href="#">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="agileits_app-devices">
                        <h5>Download the App</h5>
                        <a href="#">
                            <img src="images/1.png" alt="">
                        </a>
                        <a href="#">
                            <img src="images/2.png" alt="">
                        </a>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <!-- //social icons -->
                <div class="clearfix"></div>
            </div>
            <!-- //footer third section -->
            <!-- footer fourth section (text) -->
            <div class="agile-sometext">
                <div class="sub-some">
                    <h5>Online Grocery Shopping</h5>
                    <p>Order online. All your favourite products from the low price online supermarket for grocery home delivery in Delhi,
                        Gurgaon, Bengaluru, Mumbai and other cities in India. Lowest prices guaranteed on Patanjali, Aashirvaad, Pampers, Maggi,
                        Saffola, Huggies, Fortune, Nestle, Amul, MamyPoko Pants, Surf Excel, Ariel, Vim, Haldiram's and others.</p>
                </div>
                <div class="sub-some">
                    <h5>Shop online with the best deals & offers</h5>
                    <p>Now Get Upto 40% Off On Everyday Essential Products Shown On The Offer Page. The range includes Grocery, Personal Care,
                        Baby Care, Pet Supplies, Healthcare and Other Daily Need Products. Discount May Vary From Product To Product.</p>
                </div>
                <!-- brands -->
                <div class="sub-some">
                    <h5>Popular Brands</h5>
                    <ul>
                        <li>
                            <a href="Product.aspx">Aashirvaad</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Amul</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Bingo</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Boost</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Durex</a>
                        </li>
                        <li>
                            <a href="Product.aspx"> Maggi</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Glucon-D</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Horlicks</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Head & Shoulders</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Dove</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Dettol</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Dabur</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Colgate</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Coca-Cola</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Closeup</a>
                        </li>
                        <li>
                            <a href="Product.aspx"> Cinthol</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Cadbury</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Bru</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Bournvita</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Tang</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Pears</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Oreo</a>
                        </li>
                        <li>
                            <a href="Product.aspx"> Taj Mahal</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Sprite</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Thums Up</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Fair & Lovely</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Lakme</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Tata</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Sunfeast</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Sunsilk</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Patanjali</a>
                        </li>
                        <li>
                            <a href="Product.aspx">MTR</a>
                        </li>
                        <li>
                            <a href="Product.aspx">Kissan</a>
                        </li>
                        <li>
                            <a href="Product.aspx"> Lipton</a>
                        </li>
                    </ul>
                </div>
                <!-- //brands -->
                <!-- payment -->
                <div class="sub-some child-momu">
                    <h5>Payment Method</h5>
                    <ul>
                        <li>
                            <img src="images/pay2.png" alt="">
                        </li>
                        <li>
                            <img src="images/pay5.png" alt="">
                        </li>
                        <li>
                            <img src="images/pay1.png" alt="">
                        </li>
                        <li>
                            <img src="images/pay4.png" alt="">
                        </li>
                        <li>
                            <img src="images/pay6.png" alt="">
                        </li>
                        <li>
                            <img src="images/pay3.png" alt="">
                        </li>
                        <li>
                            <img src="images/pay7.png" alt="">
                        </li>
                        <li>
                            <img src="images/pay8.png" alt="">
                        </li>
                        <li>
                            <img src="images/pay9.png" alt="">
                        </li>
                    </ul>
                </div>
                <!-- //payment -->
            </div>
            <!-- //footer fourth section (text) -->
        </div>
    </footer>--%>
    <!-- //footer -->
    <!-- copyright -->
    <div class="copy-right">
        <div class="container">
            <p>© 2021 Sakav. All rights reserved | Design by
                <a href="http://www.masutechnologies.com"> Masu Technologies Inc.</a>
            </p>
        </div>
    </div>
    <!-- //copyright -->

    <!-- js-files -->
    <!-- jquery -->
    <script src="js/jquery-2.1.4.min.js"></script>
    <!-- //jquery -->

    <!-- popup modal (for signin & signup)-->
    <script src="js/jquery.magnific-popup.js"></script>
    <script>
        $(document).ready(function () {
            $('.popup-with-zoom-anim').magnificPopup({
                type: 'inline',
                fixedContentPos: false,
                fixedBgPos: true,
                overflowY: 'auto',
                closeBtnInside: true,
                preloader: false,
                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });

        });
    </script>
    <!-- Large modal -->
    <!-- <script>
        $('#').modal('show');
    </script> -->
    <!-- //popup modal (for signin & signup)-->

    <!-- cart-js -->
    <script src="js/minicart.js"></script>
    <script>
        paypalm.minicartk.render(); //use only unique class names other than paypalm.minicartk.Also Replace same class name in css and minicart.min.js

        paypalm.minicartk.cart.on('checkout', function (evt) {
           
            var items = this.items(),
                len = items.length,
                total = 0,
                i;

            // Count the number of each item in the cart
            for (i = 0; i < len; i++) {
                total += items[i].get('quantity');
            }

            if (total <= 0) {
                alert('The minimum order quantity is 1. Please add more to your shopping cart before checking out');
                evt.preventDefault();
            }
        });
    </script>
    <!-- //cart-js -->

    <!-- price range (top products) -->
    <script src="js/jquery-ui.js"></script>
    <script>
        //<![CDATA[ 
        $(window).load(function () {
            $("#slider-range").slider({
                range: true,
                min: 0,
                max: 9000,
                values: [50, 6000],
                slide: function (event, ui) {
                    $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
                }
            });
            $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

        }); //]]>
    </script>
    <!-- //price range (top products) -->

    <!-- flexisel (for special offers) -->
    <script src="js/jquery.flexisel.js"></script>
    <script>
        $(window).load(function () {
            $("#flexiselDemo1").flexisel({
                visibleItems: 3,
                animationSpeed: 1000,
                autoPlay: true,
                autoPlaySpeed: 3000,
                pauseOnHover: true,
                enableResponsiveBreakpoints: true,
                responsiveBreakpoints: {
                    portrait: {
                        changePoint: 480,
                        visibleItems: 1
                    },
                    landscape: {
                        changePoint: 640,
                        visibleItems: 2
                    },
                    tablet: {
                        changePoint: 768,
                        visibleItems: 2
                    }
                }
            });

        });
    </script>
    <!-- //flexisel (for special offers) -->

    <!-- password-script -->
    <script>
        window.onload = function () {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        }

        function validatePassword() {
            var pass2 = document.getElementById("password2").value;
            var pass1 = document.getElementById("password1").value;
            if (pass1 != pass2)
                document.getElementById("password2").setCustomValidity("Passwords Don't Match");
            else
                document.getElementById("password2").setCustomValidity('');
            //empty string means no validation error
        }
    </script>
    <!-- //password-script -->

    <!-- smoothscroll -->
    <script src="js/SmoothScroll.min.js"></script>
    <!-- //smoothscroll -->

    <!-- start-smooth-scrolling -->
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();

                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->

    <!-- smooth-scrolling-of-move-up -->
    <script>
        $(document).ready(function () {
            /*
            var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear' 
            };
            */
            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!-- //smooth-scrolling-of-move-up -->

    <!-- for bootstrap working -->
    <script src="js/bootstrap.js"></script>
    <!-- //for bootstrap working -->
    <!-- //js-files -->

</body>

</html>