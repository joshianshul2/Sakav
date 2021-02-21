<%@ Page Language="C#"   AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BachatBazaar.Contact" %>



<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Sakav | Contact Us :: Sakav</title>
    <!--/tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Grocery Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
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
       <form action="#" method="post">
    <!-- top-header -->
   
    <!-- //top-header -->
    <!-- header-bot-->
        <form >
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
                   
                    <li>
                        <span class="fa fa-phone" aria-hidden="true"></span>  9755496553<br /> 09301944440<br />
                      
                        
                    </li>
                   
                    <li>
                        <a href="#" data-toggle="modal" data-target="#mymodal1">
                            <span class="fa fa-unlock-alt" aria-hidden="true"></span> Sign in </a>
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
                          <%--<form action="#" id="frm" runat ="server" >
                            <div class="styled-input agile-styled-input-top">
                                <input type="text" id="txtUserName" placeholder="User Name" name="Name"  runat ="server"  required="">
                                </div>
                            <div class="styled-input">
                                <input type="password" placeholder="Password" id="txtPaasword" name="password" runat ="server" required="" >
                            </div>                           <asp:Button ID="btnSAVE" Text ="Sign In" runat ="server" OnClick="btnSubmit_Click2" />
                           
                        </form>--%>
                    </div>
                </div>
                <!-- //cart details -->
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- shop locator (popup) -->
    <!-- Button trigger modal(shop-locator) -->
    
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
                    <%--    <h3 class="agileinfo_sign">Sign Up</h3>--%>
                        <%--<p>
                            Come join the Grocery Shoppy! Let's set up your Account.
                        </p>--%>
                     
                            <div class="styled-input agile-styled-input-top">
                                <input type="text" placeholder="Name" name="Name" required="">
                            </div>
                            <div class="styled-input">
                                <input type="email" placeholder="E-mail" name="Email" required="">
                            </div>
                            <div class="styled-input">
                                <input type="password" placeholder="Password" name="password" id="password1" required="">
                            </div>
                            <div class="styled-input">
                                <input type="password" placeholder="Confirm Password" name="Confirm Password" id="password2" required="">
                            </div>
                            <input type="submit" value="Sign Up">
                        
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
                    <select id="agileinfo-nav_search" name="agileinfo_search" required="">
                        <option value="">All Categories</option>
                        <option value="Kitchen">Kitchen</option>
                        <option value="Household">Household</option>
                        <option value="Snacks &amp; Beverages">Snacks & Beverages</option>
                        <option value="Personal Care">Personal Care</option>
                        <option value="Gift Hampers">Gift Hampers</option>
                        <option value="Fruits &amp; Vegetables">Fruits & Vegetables</option>
                        <option value="Baby Care">Baby Care</option>
                        <option value="Soft Drinks &amp; Juices">Soft Drinks & Juices</option>
                        <option value="Frozen Food">Frozen Food</option>
                        <option value="Bread &amp; Bakery">Bread & Bakery</option>
                        <option value="Sweets">Sweets</option>
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
                                <li>
                                    <a class="nav-stylehead" href="Default.aspx">Home
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                            
                              <%--  <li class="dropdown">
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
                                            <div class="col-sm-4 multi-gd-img">
                                                <img src="images/nav.png" alt="">
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle nav-stylehead" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Household
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu multi-column columns-3">
                                        <div class="agile_inner_drop_nav_info">
                                            <div class="col-sm-6 multi-gd-img">
                                                <ul class="multi-column-dropdown">
                                                    <li>
                                                        <a href="#">Kitchen & Dining</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Detergents</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Utensil Cleaners</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Floor & Other Cleaners</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Disposables, Garbage Bag</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Repellents & Fresheners</a>
                                                    </li>
                                                    <li>
                                                        <a href="#"> Dishwash</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-6 multi-gd-img">
                                                <ul class="multi-column-dropdown">
                                                    <li>
                                                        <a href="#">Pet Care</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Cleaning Accessories</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Pooja Needs</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Crackers</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Festive Decoratives</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Plasticware</a>
                                                    </li>
                                                    <li>
                                                        <a href="Default.aspx">Home Care</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </ul>
                                </li>
                                --%>
                              
                                <li class="active">
                                    <a class="" href="Contact.aspx">Contact</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- //navigation -->
    <!-- banner-2 -->
    <div class="page-head_agile_info_w3l">

    </div>
    <!-- //banner-2 -->
    <!-- page -->
    <div class="services-breadcrumb">
        <div class="agile_inner_breadcrumb">
            <div class="container">
                <ul class="w3_short">
                    <li>
                        <a href="Default.aspx">Home</a>
                        <i>|</i>
                    </li>
                    <li>contact Us</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //page -->
    <!-- contact page -->
    <div class="contact-w3l">
        <div class="container">
            <!-- tittle heading -->
            <h3 class="tittle-w3l">Contact Us
                <span class="heading-style">
                    <i></i>
                    <i></i>
                    <i></i>
                </span>
            </h3>
            <!-- //tittle heading -->
            <!-- contact -->
            <div class="contact agileits">
                <div class="contact-agileinfo">
                    <div class="contact-form wthree">
                        <form action="#"  runat="server">
                            <div class="">
                                <input type="text" name="name" id="txtName" runat="server"  placeholder="Name" required="">
                            </div>
                            <div class="">
                                <input class="text" type="text" id="txtSubject" runat ="server"  placeholder="Subject" required="">
                            </div>
                            <div class="">
                                <input class="email" type="email" id="txtEmail" runat="server" name="email" placeholder="Email" required="">
                            </div>
                            <div class="">
                                <input class="text" type="text" id="txtMobile" runat="server"  placeholder="Mobile No" required="">
                            </div>
                            <div class="">
                                <textarea placeholder="Message" name="message" id="txtMessage" runat="server" required=""></textarea>
                            </div>
                            <%--<input type="submit" value="Submit">--%>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        </form>
                    </div>
                    <div class="contact-right wthree">
                        <div class="col-xs-7 contact-text w3-agileits">
                            <h4>GET IN TOUCH :</h4>
                            <p>
                              <%--  <i class="fa fa-map-marker"></i> 817 Sudama Nagar,Indore (M.P)</p>--%>
                            <p>
                                <i class="fa fa-phone"></i> Phone : 7224813717</p>
                         
                            <p>
                                <i class="fa fa-envelope-o"></i> Email :
                                <a href="mailto:example@mail.com">  abc@gmail.com</a>
                            </p>
                        </div>
                        <div class="col-xs-5 contact-agile">
                            <img src="images/contact2.jpg" alt="">
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <!-- //contact -->
        </div>
    </div>
    <!-- map -->
   <div class="map w3layouts">
         <iframe width="600" height="450" frameborder="0" style="border:0"
src="https://www.google.com/maps/embed/v1/place?q=place_id:Elc4MTcsIFN1ZGFtYSBOYWdhciBNYWluIFJkLCBTZWN0b3IgRCwgU3VkYW1hIE5hZ2FyLCBJbmRvcmUsIE1hZGh5YSBQcmFkZXNoIDQ1MjAwOSwgSW5kaWEiMRIvChQKEgkzshOXSvxiORE3kVwzaAe7pBCxBioUChIJJcsApDX8YjkRe2Bmy8HDkH0&key=AIzaSyDPoFEJnuVgDemFoQSrYBoHsdyZC1Vsh5A" allowfullscreen></iframe>
    </div>
       
    <!-- //map -->
    <!-- newsletter -->
   <%-- <div class="footer-top">
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
   
    <!-- //footer -->
    <!-- copyright -->
    <div class="copy-right">
        <div class="container">
            <p>© 2020 Masu Technologies Inc. All rights reserved | Design by
                <a href="http://www.masutechnologies.com">Masu Technologies Inc.</a>
            </p>
        </div>
    </div>
            </form>
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
        paypalm.minicartk.render(); //use only unique class names other than paypal1.minicart1.Also Replace same class name in css and minicart.min.js

        paypalm.minicartk.cart.on('checkout', function (evt) {
            var items = this.items(),
                len = items.length,
                total = 0,
                i;

            // Count the number of each item in the cart
            for (i = 0; i < len; i++) {
                total += items[i].get('quantity');
            }

            if (total < 3) {
                alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
                evt.preventDefault();
            }
        });
    </script>
    <!-- //cart-js -->

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