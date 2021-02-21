<%@ Page Language="C#" CodeBehind="Checkout.aspx.cs" Inherits="BachatBazaar.Checkout" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Sakav | Checkout :: Sakav</title>
    <!--/tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="E-Commerce Site by Masu Technologies Inc." />
    <script src="Scripts/jquery-1.7.1.min.js"></script>
 
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
    <script>
        var grate = 0;
        var gqty = 0;
        var i = 0;
        function GetCheck()
        {
            debugger;
            
            if (document.getElementById('chkConfirm').checked == true) {
                if (confirm('Are you sure you want to confirm this order?'))
                {
                    document.getElementById("btnSubmitClick").disabled = false;
                    alert("Please Fill your details as follows...")
                }
                else
                {
                        document.getElementById("btnSubmitClick").disabled = true;
                }
            }
        }

        function checkData(qty) {
          
               // alert("In Second Phase-" + xQty);
            //var xVal = document.getElementById('xval').value;
        
        }

        function getChange() {
            if (i <= 0) {
                grate = document.getElementById('txtRate').value;
                gqty = document.getElementById('xQty').value;
            }
            var qty = document.getElementById('xQty').value;
            var rate = document.getElementById('txtRate').value;
            if (qty.length > 0 && rate.length > 0) {
                document.getElementById('txtRate').value = qty *  grate;
            }
            i = i + 1;
          //  alert("changed-" + qty + " rate-" + rate);
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
       <form action="#" >
           
          
    <!-- top-header -->
    <!-- //top-header -->
    <!-- header-bot-->
        
    <!-- top-header -->
 
    <!-- //top-header -->
    <!-- header-bot-->
    <div class="header-bot">
        <div class="header-bot_inner_wthreeinfo_header_mid">
            <!-- header-bot-->
            <div class="col-md-4 logo_agile">
                <h1>
                    <a href="index.html">
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
                        <span class="fa fa-phone" aria-hidden="true"></span> 9691357461, 
                        &nbsp;&nbsp;&nbsp;8982895999
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
               <%--     <div class="wthreecartaits wthreecartaits2 cart cart box_1">
                           <form action="#" id="Form1" runat ="server" >
                            <div class="styled-input agile-styled-input-top">
                                <input type="text" id="txtUserName" placeholder="User Name" name="Name"  runat ="server"  required="">
                                </div>
                            <div class="styled-input">
                                <input type="password" placeholder="Password" id="txtPaasword" name="password" runat ="server" required="" >
                            </div>
                           <%-- <input type="submit" value="Sign In" runat ="server" id="btnSubmit">--%>
                     <%--      <asp:Button ID="btnSAVE" Text ="Sign In" runat ="server" OnClick="btnSubmit_Click2" />
                           
                        </form>
                    </div>--%>
                </div>
                <!-- //cart details -->
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- shop locator (popup) -->
    <!-- Button trigger modal(shop-locator) -->
  
    <!-- //shop locator (popup) -->
    <!-- signin Model -->
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
                        <%--<h3 class="agileinfo_sign">Sign Up</h3>
                        <p>
                            Come join the Grocery Shoppy! Let's set up your Account.
                        </p>--%>
                        <h3 class="agileinfo_sign">Sign Up</h3>
                        <p>
                            Come join the Sakav! Let's set up your Account.
                        </p>
                     
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
                                <li>
                                    <a class="nav-stylehead" href="Default.aspx">Home
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                               
                               
                                         <%=MainMenu() %>
                                         <%=MainMenu1() %>

                               
                               <%-- <li class="dropdown">
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
                                </li>--%>
                               
                               
                                <li>
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
                    <li>Checkout</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //page -->
    <!-- checkout page -->
    <div class="privacy">
        <div class="container">
            <!-- tittle heading -->
            <h3 class="tittle-w3l">Checkout
                <span class="heading-style">
                    <i></i>
                    <i></i>
                    <i></i>
                </span>
            </h3>
            <!-- //tittle heading -->
            <div class="checkout-right">
                <h4>Your shopping cart contains following product(s)
                  <%--  <span>3 Products</span>--%>
                </h4>
                <div class="table-responsive">
                    <table id="tbldata" class="timetable_sub">
                        <thead>
                            <tr>
                                <th>SL No.</th>
                                <th>Item Code</th>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Product Name</th>
                                <th>Price</th>
                                <th>Remove</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%=GetRecord() %>
                          <%--  <tr class="rem1">
                                <td class="invert">1</td>
                                <td class="invert-image">
                                    <a href="single2.html">
                                        <img src="images/a7.jpg" alt=" " class="img-responsive">
                                    </a>
                                </td>
                                <td class="invert">
                                    <div class="quantity">
                                        <div class="quantity-select">
                                            <div class="entry value-minus">&nbsp;</div>
                                            <div class="entry value">
                                                <span><%=x %></span>
                                            </div>
                                            <div class="entry value-plus active">&nbsp;</div>
                                        </div>
                                    </div>
                                </td>
                                <td class="invert">Spotzero Spin Mop</td>
                                <td class="invert">$888.00</td>
                                <td class="invert">
                                    <div class="rem">
                                        <div class="close1"> </div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="rem2">
                                <td class="invert">2</td>
                                <td class="invert-image">
                                    <a href="single2.html">
                                        <img src="images/s6.jpg" alt=" " class="img-responsive">
                                    </a>
                                </td>
                                <td class="invert">
                                    <div class="quantity">
                                        <div class="quantity-select">
                                            <div class="entry value-minus">&nbsp;</div>
                                            <div class="entry value">
                                                <span>1</span>
                                            </div>
                                            <div class="entry value-plus active">&nbsp;</div>
                                        </div>
                                    </div>
                                </td>
                                <td class="invert">Fair & Lovely, 80 g</td>
                                <td class="invert">$121.60</td>
                                <td class="invert">
                                    <div class="rem">
                                        <div class="close2"> </div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="rem3">
                                <td class="invert">3</td>
                                <td class="invert-image">
                                    <a href="single.html">
                                        <img src="images/s5.jpg" alt=" " class="img-responsive">
                                    </a>
                                </td>
                                <td class="invert">
                                    <div class="quantity">
                                        <div class="quantity-select">
                                            <div class="entry value-minus">&nbsp;</div>
                                            <div class="entry value">
                                                <span>1</span>
                                            </div>
                                            <div class="entry value-plus active">&nbsp;</div>
                                        </div>
                                    </div>
                                </td>
                                <td class="invert">Sprite, 2.25L (Pack of 2)</td>
                                <td class="invert">$180.00</td>
                                <td class="invert">
                                    <div class="rem">
                                        <div class="close3"> </div>
                                    </div>
                                </td>
                            </tr>--%>
                        </tbody>
                    </table>
                    <br />
                   <input type="checkbox"  ID="chkConfirm" onclick="GetCheck();"/>&nbsp;&nbsp;
                     <input id="sendServer" name="sendServer" type="button" value="Confirm Order" />
                </div>
            </div>
            <div class="checkout-left">
                <div class="address_form_agile">
                    <h4>Add a new Details</h4>
                    <form id="frm" action="#" runat="server" class="creditly-card-form agileinfo_form">
                           <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                        <div class="creditly-wrapper wthree, w3_agileits_wrapper">
                            <div class="information-wrapper">
                                <div class="first-row">
                                    <div class="controls">
                                        <input class="billing-address-name" runat="server" id="txtFullName" type="text" name="name" placeholder="Full Name" required="">
                                    </div>
                                    <div class="w3_agileits_card_number_grids">
                                        <div class="w3_agileits_card_number_grid_left">
                                            <div class="controls">
                                                <input type="text" runat="server" id ="txtMobileNo" placeholder="Mobile Number" name="number" required="">
                                            </div>
                                        </div>
                                        <div class="w3_agileits_card_number_grid_right">
                                            <div class="controls">
                                                <input type="text" runat="server" id="txtLandMark" placeholder="Landmark" name="landmark" required="">
                                            </div>
                                        </div>
                                        <div class="clear"> </div>
                                    </div>
                                       <div class="controls">
                                      <input type="text" runat="server" id="txtAddress" placeholder="Address" name="Address" required="">
                                    </div>
                                    <div class="controls">
                                        <input type="text" runat="server" id="txtCity" placeholder="Town/City" name="city" required="">
                                    </div>
                                    <div class="controls">
                                        <input type="text" runat="server" id="txtEmailId" placeholder="Email Id" name="EmailId" required="">
                                    </div>
                                    <div class="controls">
                                        <select class="option-w3ls" runat="server" id="txtAddressType">
                                            <option>Select Address type</option>
                                            <option>Office</option>
                                            <option>Home</option>
                                            <option>Commercial</option>

                                        </select>
                                    </div>
                                </div>
                                <asp:Button  id="btnSubmitClick" class="submit check_out" runat="server"  OnClick="btnSubmit_Click"  Text ="Delivery to this Address" Enabled="False" />
                            </div>
                        </div>
                    </form>
                    <div class="checkout-right-basket">
                        <a href="#"><b>COD is Available</b>
                            <span class="fa fa-hand-o-right" aria-hidden="true"></span>
                        </a>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!-- //checkout page -->
    <!-- newsletter -->
    
    <!-- //newsletter -->
    <!-- footer -->
    
    <!-- //footer -->
    <!-- copyright -->
    <div class="copy-right">
        <div class="container">
            <p>© 2020 Sakav. All rights reserved | Design by
                <a href="http://www.masutechnologies.com"> Anjint70.</a>
            </p>
        </div>
    </div>
    <!-- //copyright -->

    <!-- js-files -->
    <!-- jquery -->
</form> 
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

    <!--quantity-->
    <script>
        $('.value-plus').on('click', function () {
            var divUpd = $(this).parent().find('.value'),
                newVal = parseInt(divUpd.text(), 10) + 1;
            divUpd.text(newVal);
        });

        $('.value-minus').on('click', function () {
            var divUpd = $(this).parent().find('.value'),
                newVal = parseInt(divUpd.text(), 10) - 1;
            if (newVal >= 1) divUpd.text(newVal);
        });
    </script>
    <!--quantity-->
    <script>
        $(document).ready(function (c) {
            $('.close1').on('click', function (c) {
                $('.rem1').fadeOut('slow', function (c) {
                    $('.rem1').remove();
                });
            });
        });
    </script>
    <script>
        $(document).ready(function (c) {
            $('.close2').on('click', function (c) {
                $('.rem2').fadeOut('slow', function (c) {
                    $('.rem2').remove();
                });
            });
        });
    </script>
    <script>
        $(document).ready(function (c) {
            $('.close3').on('click', function (c) {
                $('.rem3').fadeOut('slow', function (c) {
                    $('.rem3').remove();
                });
            });
        });
    </script>
    <!--//quantity-->

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
<script type="text/javascript">

    // event to fire on Save button click //
    $(document).on('click', '#sendServer', function () {
        var data = HTMLtbl.getData($('#tbldata'));
        var parameters = {};
        parameters.array = data;

        var request = $.ajax({
            async: true,
            cache: false,
            dataType: "json",
            type: "POST",
            contentType: "application/json; charset=utf-8",
            url: "Checkout.aspx/SaveData",
            data: JSON.stringify(parameters)
        });

        request.done(function (msg) {
        //    alert("Row saved " + msg.d);
        });

        request.fail(function (jqXHR, textStatus) {s
            alert("Request failed: " + textStatus);
        });

    });

    //function to convert HTML table to jagged array//
    var HTMLtbl =
        {
            getData: function (table) {
                var data = [];
                table.find('tr').not(':first').each(function (rowIndex, r) {
                    var cols = [];
                    $(this).find('td').each(function (colIndex, c) {

                        if ($(this).children(':text,:hidden,textarea,select').length > 0)    //text//hidden//textarea//select
                            cols.push($(this).children('input,textarea,select').val());

                            // if dropdown text is needed then uncomment it and remove SELECT from above IF condition// 
                            // else if ($(this).children('select').length > 0)
                            // cols.push($(this).find('option:selected').text());

                        else if ($(this).children(':checkbox').length > 0)                    // checkbox
                            cols.push($(this).children(':checkbox').is(':checked') ? 1 : 0);  //or true false
                        else
                            cols.push($(this).text().trim());                                // get td Value
                    });
                    data.push(cols);
                });
                return data;
            }
        }
</script>

</html>