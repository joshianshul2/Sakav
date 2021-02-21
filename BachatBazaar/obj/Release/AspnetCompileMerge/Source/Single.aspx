    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Single.aspx.cs" Inherits="BachatBazaar.Single" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Sakav | Single :: Masu Technologies Inc.</title>
    <!--/tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Bachat Bazaar" />
    <script>
        //function PelData(Id, pName) {
        //    alert("Pelo-"+Id+" Name-"+pName);
        //}
        function PelData(ImageId) {
       //     debugger;
        //    alert("Hi");
           
            //first get all parameters if any
            var ImageId = ImageId;//"OM"; // $('#txtFirstName').val();
            
           
$.ajax({
    type: 'POST',
    dataType: 'json',
    contentType: 'application/json; charset=utf-8',
    //url: “yourpagename.aspx/yourmethodnamewithoutbracesandparameters”
    url: 'Product.aspx/PelFunction',
//Be carefull about single quotation marks while parsing parameters
//If function have no parameters, parse blank “data” for eg, data: “{ }”,
    data: "{'ImageId':'" + ImageId + "'}",
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
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
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
    <!-- flexslider -->
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
    <!-- fonts -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>

<body>
      
    
<form runat="server">
        <!-- top-header -->
    <div class="header-most-top">
        <p>Sakav Top Deals & Discounts</p>
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
                    <%--<li>
                        <a class="play-icon popup-with-zoom-anim" href="#small-dialog1">
                            <span class="fa fa-map-marker" aria-hidden="true"></span> Shop Locator</a>
                    </li>
                    <li>
                        <a href="#" data-toggle="modal" data-target="#myModal1">
                            <span class="fa fa-truck" aria-hidden="true"></span>Track Order</a>
                    </li>--%>
                    <li>
                        <span class="fa fa-phone" aria-hidden="true"></span> 7224813717
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
                            <button class="w3view-cart" type="submit" name="submit" value="">
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
    <!-- shop locator (popup) -->
    <!-- Button trigger modal(shop-locator) -->
   <%-- <div id="small-dialog1" class="mfp-hide">
        <div class="select-city">
            <h3>Please Select Your Location</h3>
            <select class="list_of_cities">
                <optgroup label="Popular Cities">
                    <option selected style="display:none;color:#eee;">Select City</option>
                    <option>Birmingham</option>
                    <option>Anchorage</option>
                    <option>Phoenix</option>
                    <option>Little Rock</option>
                    <option>Los Angeles</option>
                    <option>Denver</option>
                    <option>Bridgeport</option>
                    <option>Wilmington</option>
                    <option>Jacksonville</option>
                    <option>Atlanta</option>
                    <option>Honolulu</option>
                    <option>Boise</option>
                    <option>Chicago</option>
                    <option>Indianapolis</option>
                </optgroup>
                <optgroup label="Alabama">
                    <option>Birmingham</option>
                    <option>Montgomery</option>
                    <option>Mobile</option>
                    <option>Huntsville</option>
                    <option>Tuscaloosa</option>
                </optgroup>
                <optgroup label="Alaska">
                    <option>Anchorage</option>
                    <option>Fairbanks</option>
                    <option>Juneau</option>
                    <option>Sitka</option>
                    <option>Ketchikan</option>
                </optgroup>
                <optgroup label="Arizona">
                    <option>Phoenix</option>
                    <option>Tucson</option>
                    <option>Mesa</option>
                    <option>Chandler</option>
                    <option>Glendale</option>
                </optgroup>
                <optgroup label="Arkansas">
                    <option>Little Rock</option>
                    <option>Fort Smith</option>
                    <option>Fayetteville</option>
                    <option>Springdale</option>
                    <option>Jonesboro</option>
                </optgroup>
                <optgroup label="California">
                    <option>Los Angeles</option>
                    <option>San Diego</option>
                    <option>San Jose</option>
                    <option>San Francisco</option>
                    <option>Fresno</option>
                </optgroup>
                <optgroup label="Colorado">
                    <option>Denver</option>
                    <option>Colorado</option>
                    <option>Aurora</option>
                    <option>Fort Collins</option>
                    <option>Lakewood</option>
                </optgroup>
                <optgroup label="Connecticut">
                    <option>Bridgeport</option>
                    <option>New Haven</option>
                    <option>Hartford</option>
                    <option>Stamford</option>
                    <option>Waterbury</option>
                </optgroup>
                <optgroup label="Delaware">
                    <option>Wilmington</option>
                    <option>Dover</option>
                    <option>Newark</option>
                    <option>Bear</option>
                    <option>Middletown</option>
                </optgroup>
                <optgroup label="Florida">
                    <option>Jacksonville</option>
                    <option>Miami</option>
                    <option>Tampa</option>
                    <option>St. Petersburg</option>
                    <option>Orlando</option>
                </optgroup>
                <optgroup label="Georgia">
                    <option>Atlanta</option>
                    <option>Augusta</option>
                    <option>Columbus</option>
                    <option>Savannah</option>
                    <option>Athens</option>
                </optgroup>
                <optgroup label="Hawaii">
                    <option>Honolulu</option>
                    <option>Pearl City</option>
                    <option>Hilo</option>
                    <option>Kailua</option>
                    <option>Waipahu</option>
                </optgroup>
                <optgroup label="Idaho">
                    <option>Boise</option>
                    <option>Nampa</option>
                    <option>Meridian</option>
                    <option>Idaho Falls</option>
                    <option>Pocatello</option>
                </optgroup>
                <optgroup label="Illinois">
                    <option>Chicago</option>
                    <option>Aurora</option>
                    <option>Rockford</option>
                    <option>Joliet</option>
                    <option>Naperville</option>
                </optgroup>
                <optgroup label="Indiana">
                    <option>Indianapolis</option>
                    <option>Fort Wayne</option>
                    <option>Evansville</option>
                    <option>South Bend</option>
                    <option>Hammond</option>                                                               
                </optgroup>
                <optgroup label="Iowa">
                    <option>Des Moines</option>
                    <option>Cedar Rapids</option>
                    <option>Davenport</option>
                    <option>Sioux City</option>
                    <option>Waterloo</option>                                                           
                </optgroup>
                <optgroup label="Kansas">
                    <option>Wichita</option>
                    <option>Overland Park</option>
                    <option>Kansas City</option>
                    <option>Topeka</option>
                    <option>Olathe  </option>                                                               
                </optgroup>
                <optgroup label="Kentucky">
                    <option>Louisville</option>
                    <option>Lexington</option>
                    <option>Bowling Green</option>
                    <option>Owensboro</option>
                    <option>Covington</option>                                                              
                </optgroup>
                <optgroup label="Louisiana">
                    <option>New Orleans</option>
                    <option>Baton Rouge</option>
                    <option>Shreveport</option>
                    <option>Metairie</option>
                    <option>Lafayette</option>                                                                  
                </optgroup>
                <optgroup label="Maine">
                    <option>Portland</option>
                    <option>Lewiston</option>
                    <option>Bangor</option>
                    <option>South Portland</option>
                    <option>Auburn</option>                                                                 
                </optgroup>
                <optgroup label="Maryland">
                    <option>Baltimore</option>
                    <option>Frederick</option>
                    <option>Rockville</option>
                    <option>Gaithersburg</option>
                    <option>Bowie</option>                                                              
                </optgroup>
                <optgroup label="Massachusetts">
                    <option>Boston</option>
                    <option>Worcester</option>
                    <option>Springfield</option>
                    <option>Lowell</option>
                    <option>Cambridge</option>  
                </optgroup>
                <optgroup label="Michigan">
                    <option>Detroit</option>
                    <option>Grand Rapids</option>
                    <option>Warren</option>
                    <option>Sterling Heights</option>
                    <option>Lansing</option> 
                </optgroup>
                <optgroup label="Minnesota">
                    <option>Minneapolis</option>
                    <option>St. Paul</option>
                    <option>Rochester</option>
                    <option>Duluth</option>
                    <option>Bloomington</option>                                                            
                </optgroup>
                <optgroup label="Mississippi">
                    <option>Jackson</option>
                    <option>Gulfport</option>
                    <option>Southaven</option>
                    <option>Hattiesburg</option>
                    <option>Biloxi</option>                                                                 
                </optgroup>
                <optgroup label="Missouri">
                    <option>Kansas City</option>
                    <option>St. Louis</option>
                    <option>Springfield</option>
                    <option>Independence</option>
                    <option>Columbia</option>                                                                   
                </optgroup>
                <optgroup label="Montana">
                    <option>Billings</option>
                    <option>Missoula</option>
                    <option>Great Falls</option>
                    <option>Bozeman</option>
                    <option>Butte-Silver Bow</option>                                                               
                </optgroup>
                <optgroup label="Nebraska">
                    <option>Omaha</option>
                    <option>Lincoln</option>
                    <option>Bellevue</option>
                    <option>Grand Island</option>
                    <option>Kearney</option>                                                            
                </optgroup>
                <optgroup label="Nevada">
                    <option>Las Vegas</option>
                    <option>Henderson</option>
                    <option>North Las Vegas</option>
                    <option>Reno</option>
                    <option>Sunrise Manor</option>                                                              
                </optgroup>
                <optgroup label="New Hampshire">
                    <option>Manchesters</option>
                    <option>Nashua</option>
                    <option>Concord</option>
                    <option>Dover</option>
                    <option>Rochester</option>                                                                  
                </optgroup>
                <optgroup label="New Jersey">
                    <option>Newark</option>
                    <option>Jersey City</option>
                    <option>Paterson</option>
                    <option>Elizabeth</option>
                    <option>Edison</option> 
                </optgroup>
                <optgroup label="New Mexico">
                    <option>Albuquerque</option>
                    <option>Las Cruces</option>
                    <option>Rio Rancho</option>
                    <option>Santa Fe</option>
                    <option>Roswell</option>       
                </optgroup>
                <optgroup label="New York">
                    <option>New York</option>
                    <option>Buffalo</option>
                    <option>Rochester</option>
                    <option>Yonkers</option>
                    <option>Syracuse</option>                                                               
                </optgroup>
                <optgroup label="North Carolina">
                    <option>Charlotte</option>
                    <option>Raleigh</option>
                    <option>Greensboro</option>
                    <option>Winston-Salem</option>
                    <option>Durham</option>                                                                 
                </optgroup>
                <optgroup label="North Dakota">
                    <option>Fargo</option>
                    <option>Bismarck</option>
                    <option>Grand Forks</option>
                    <option>Minot</option>
                    <option>West Fargo</option>
                </optgroup>
                <optgroup label="Ohio">
                    <option>Columbus</option>
                    <option>Cleveland</option>
                    <option>Cincinnati</option>
                    <option>Toledo</option>
                    <option>Akron</option>      
                </optgroup>
                <optgroup label="Oklahoma">
                    <option>Oklahoma City</option>
                    <option>Tulsa</option>
                    <option>Norman</option>
                    <option>Broken Arrow</option>
                    <option>Lawton</option>                                                             
                </optgroup>
                <optgroup label="Oregon">
                    <option>Portland</option>
                    <option>Eugene</option>
                    <option>Salem</option>
                    <option>Gresham</option>
                    <option>Hillsboro</option>                                                                  
                </optgroup>
                <optgroup label="Pennsylvania">
                    <option>Philadelphia</option>
                    <option>Pittsburgh</option>
                    <option>Allentown</option>
                    <option>Erie</option>
                    <option>Reading</option>                                                                
                </optgroup>
                <optgroup label="Rhode Island">
                    <option>Providence</option>
                    <option>Warwick</option>
                    <option>Cranston</option>
                    <option>Pawtucket</option>
                    <option>East Providence</option>   
                </optgroup>
                <optgroup label="South Carolina">
                    <option>Columbia</option>
                    <option>Charleston</option>
                    <option>North Charleston</option>
                    <option>Mount Pleasant</option>
                    <option>Rock Hill</option> 
                </optgroup>
                <optgroup label="South Dakota">
                    <option>Sioux Falls</option>
                    <option>Rapid City</option>
                    <option>Aberdeen</option>
                    <option>Brookings</option>
                    <option>Watertown</option> 
                </optgroup>
                <optgroup label="Tennessee">
                    <option>Memphis</option>
                    <option>Nashville</option>
                    <option>Knoxville</option>
                    <option>Chattanooga</option>
                    <option>Clarksville</option>       
                </optgroup>
                <optgroup label="Texas">
                    <option>Houston</option>
                    <option>San Antonio</option>
                    <option>Dallas</option>
                    <option>Austin</option>
                    <option>Fort Worth</option>   
                </optgroup>
                <optgroup label="Utah">
                    <option>Salt Lake City</option>
                    <option>West Valley City</option>
                    <option>Provo</option>
                    <option>West Jordan</option>
                    <option>Orem</option>   
                </optgroup> 
                <optgroup label="Vermont">
                    <option>Burlington</option>
                    <option>Essex</option>
                    <option>South Burlington</option>
                    <option>Colchester</option>
                    <option>Rutland</option>   
                </optgroup>
                <optgroup label="Virginia">
                    <option>Virginia Beach</option>
                    <option>Norfolk</option>
                    <option>Chesapeake</option>
                    <option>Arlington</option>
                    <option>Richmond</option> 
                </optgroup> 
                <optgroup label="Washington">
                    <option>Seattle</option>
                    <option>Spokane</option>
                    <option>Tacoma</option>
                    <option>Vancouver</option>
                    <option>Bellevue</option> 
                </optgroup> 
                <optgroup label="West Virginia">
                    <option>Charleston</option>
                    <option>Huntington</option>
                    <option>Parkersburg</option>
                    <option>Morgantown</option>
                    <option>Wheeling</option> 
                </optgroup> 
                <optgroup label="Wisconsin">
                    <option>Milwaukee</option>
                    <option>Madison</option>
                    <option>Green Bay</option>
                    <option>Kenosha</option>
                    <option>Racine</option>
                </optgroup>
                <optgroup label="Wyoming">
                    <option>Cheyenne</option>
                    <option>Casper</option>
                    <option>Laramie</option>
                    <option>Gillette</option>
                    <option>Rock Springs</option>
                </optgroup>
            </select>
            <div class="clearfix"></div>
        </div>
    </div>--%>
    <!-- //shop locator (popup) -->
    <!-- signin Model -->
    <!-- Modal1 -->
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                      <%-- <form action="#" id="frm" runat ="server" >
                            <div class="styled-input agile-styled-input-top">
                                <input type="text" id="txtUserName" placeholder="User Name" name="Name"  runat ="server"  required="">
                                </div>
                            <div class="styled-input">
                                <input type="password" placeholder="Password" id="txtPaasword" name="password" runat ="server" required="" >
                            </div>
                           <asp:Button ID="btnSAVE" Text ="Sign In" runat ="server" OnClick="btnSubmit_Click" />
                        </form>--%>

                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body modal-body-sub_agile">
                    <div class="main-mailposi">
                        <span class="fa fa-envelope-o" aria-hidden="true"></span>
                    </div>
                    <div class="modal_body_left modal_body_left1">
                        <h3 class="agileinfo_sign">Sign In </h3>
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
                        <h3 class="agileinfo_sign">Sign Up</h3>
                        <p>
                            Come join the Grocery Shoppy! Let's set up your Account.
                        </p>
                        <form action="#" method="post">
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
                                <%=MainMenu() %>
                                <%=MainMenu1() %>
                               <%-- <li class="">
                                    <a class="nav-stylehead" href="about.html">About Us</a>
                                </li>--%>
                               <%-- <li class="dropdown">
                                    <a href="#" class="dropdown-toggle nav-stylehead" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Kitchen
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu multi-column columns-3">
                                        <div class="agile_inner_drop_nav_info">
                                            <div class="col-sm-4 multi-gd-img">
                                                <ul class="multi-column-dropdown">
                                                    <li>
                                                        <a href="#">Bakery</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Baking Supplies</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Coffee, Tea & Beverages</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Dried Fruits, Nuts</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Sweets, Chocolate</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Spices & Masalas</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Jams, Honey & Spreads</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-4 multi-gd-img">
                                                <ul class="multi-column-dropdown">
                                                    <li>
                                                        <a href="#">Pickles</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Pasta & Noodles</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Rice, Flour & Pulses</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Sauces & Cooking Pastes</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Snack Foods</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Oils, Vinegars</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Meat, Poultry & Seafood</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-4 multi-gd-img">
                                                <img src="images/nav.png" alt="">
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </ul>
                                </li>--%>
                                <%--<li class="dropdown">
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
                                                        <a href="#">Home Care</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </ul>
                                </li>
                                <li>
                                    <a class="nav-stylehead" href="faqs.html">Faqs</a>
                                </li>--%>
                         <%--       <li class="dropdown">
                                    <a class="nav-stylehead dropdown-toggle" href="#" data-toggle="dropdown">Pages
                                        <b class="caret"></b>
                                    </a>
                                    <ul class="dropdown-menu agile_short_dropdown">
                                        <li>
                                            <a href="icons.html">Web Icons</a>
                                        </li>
                                        <li>
                                            <a href="typography.html">Typography</a>
                                        </li>
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
                    <li>See Your Product</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //page -->
    <!-- Single Page -->
    <div class="banner-bootom-w3-agileits">
        <div class="container">
            <!-- tittle heading -->
            <h3 class="tittle-w3l">See Your Product
                <span class="heading-style">
                    <i></i>
                    <i></i>
                    <i></i>
                </span>
            </h3>
            <!-- //tittle heading -->
            <div class="col-md-5 single-right-left ">
                <div class="grid images_3_of_2">
                    <div class="flexslider">
                        <ul class="slides">
                          <%--  <li data-thumb="images/si.jpg">
                                <div class="thumb-image">
                                    <img src="images/si.jpg" data-imagezoom="true" class="img-responsive" alt=""> </div>
                            </li>
                            <li data-thumb="images/si2.jpg">
                                <div class="thumb-image">
                                    <img src="images/si2.jpg" data-imagezoom="true" class="img-responsive" alt=""> </div>
                            </li>
                           <%-- <li data-thumb="images/si3.jpg">
                                <div class="thumb-image">
                                    <img src="images/si3.jpg" data-imagezoom="true" class="img-responsive" alt=""> </div>
                            </li>--%>
                            <%=GetSingleTop1() %>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-7 single-right-left simpleCart_shelfItem">
              <%--  <h3>Zeeba Premium Basmati Rice - 5 KG</h3>--%>
                  <h3><asp:Label ID="lblSingleHeading" runat ="server" ></asp:Label></h3>
                <%--<div class="rating1">
                    <span class="starRating">
                        <input id="rating5" type="radio" name="rating" value="5">
                        <label for="rating5">5</label>
                        <input id="rating4" type="radio" name="rating" value="4">
                        <label for="rating4">4</label>
                        <input id="rating3" type="radio" name="rating" value="3" checked="">
                        <label for="rating3">3</label>
                        <input id="rating2" type="radio" name="rating" value="2">
                        <label for="rating2">2</label>
                        <input id="rating1" type="radio" name="rating" value="1">
                        <label for="rating1">1</label>
                    </span>
                </div>--%>
                <p>
<%--                    <span class="item_price">$950.00</span>--%>
                    <i class="fa fa-inr"></i> <span class="item_price"><asp:Label ID="lblRate" runat ="server" ></asp:Label></span>
                    <br />
                      <i class="fa fa-inr"></i> <span class="item_price">Offer Rate-<asp:Label ID="lblOfferRate" CssClass ="fa fa-inr" runat ="server" ></asp:Label></span>
 <%--                   <del>$1300.00</del>
 --%>                  <%-- <label>Free delivery</label>--%>
                    <asp:Label ID="lblFree" runat ="server" ></asp:Label>
                </p>
                <div class="single-infoagile">
                    <ul>
                        <li>
                        <%--    Cash on Delivery Eligible.--%>
                            <asp:Label ID="lblCOD" runat ="server" ></asp:Label>

                        </li>
                         <li>
                        <%--    Cash on Delivery Eligible.--%>
                   
                        </li>
                        <%--<li>
                            Shipping Speed to Delivery.
                        </li>--%>
                        <%--<li>
                            Sold and fulfilled by Supple Tek (3.6 out of 5 | 8 ratings).
                        </li>--%>
                        <%--<li>
                            1 offer from
                            <span class="item_price">$950.00</span>
                        </li>--%>
                    </ul>
                </div>
                <%--<div class="product-single-w3l">
                    <p>
                        <i class="fa fa-hand-o-right" aria-hidden="true"></i>This is a
                        <label>Vegetarian</label> product.</p>
                    <ul>
                        <li>
                            Best for Biryani and Pulao.
                        </li>
                        <li>
                            After cooking, Zeeba Basmati rice grains attain an extra ordinary length of upto 2.4 cm/~1 inch.
                        </li>
                        <li>
                            Zeeba Basmati rice adheres to the highest food afety standards as your health is paramount to us.
                        </li>
                        <li>
                            Contains only the best and purest grade of basmati rice grain of Export quality.
                        </li>
                    </ul>
                    <p>
                        <i class="fa fa-refresh" aria-hidden="true"></i>All food products are
                        <label>non-returnable.</label>
                    </p>
                </div>--%>
                <div class="occasion-cart">
                    <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                        <br />
                             <p style="text-align:left"> <span class="product-new-top"><% =strDisc  %>%  </span></p>

                        <form action="#" method="post">
                            <fieldset>
                                <input type="hidden" name="cmd" value="_cart" />
                                <input type="hidden" name="add" value="1" />
                                <input type="hidden" name="business" value=" " />
                                <input type="hidden" name="item_name" value="<% =strImageHeading %>" />
                                <input type="hidden" name="amount" value="<% =lblOfferRate.Text   %>" />
                                <%--<input type="hidden" name="discount_amount" value="<% =strDisc  %>" />--%>
                                    <input type="hidden" name="discount_amount" value="0" />
                                <input type="hidden" name="currency_code" value="INR" />
                                <input type="hidden" name="return" value=" " />
                                <input type="hidden" name="cancel_return" value=" " />
                                <input type="submit" name="submit" onclick="PelData(<%=strID.ToString() %>)";' value="Add to cart" class="button" />
                            </fieldset>
                        </form>
                    </div>

                </div>

            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!-- //Single Page -->
    <!-- special offers -->
    <div class="featured-section" id="projects">
        <div class="container">
            <!-- tittle heading -->
           <%-- <h3 class="tittle-w3l">Add More
                <span class="heading-style">
                    <i></i>
                    <i></i>
                    <i></i>
                </span>
            </h3>--%>
            <!-- //tittle heading -->
           <%-- <div class="content-bottom-in">
                <ul id="flexiselDemo1">
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <a href="single.html">
                                    <img src="images/s1.jpg" alt="">
                                </a>
                            </div>
                            <div class="product-name-w3l">
                                <h4>
                                    <a href="single.html">Aashirvaad, 5g</a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>$220.00</h6>
                                    <p>Save $40.00</p>
                                </div>
                                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                    <form action="#" method="post">
                                        <fieldset>
                                            <input type="hidden" name="cmd" value="_cart" />
                                            <input type="hidden" name="add" value="1" />
                                            <input type="hidden" name="business" value=" " />
                                            <input type="hidden" name="item_name" value="Aashirvaad, 5g" />
                                            <input type="hidden" name="amount" value="220.00" />
                                            <input type="hidden" name="discount_amount" value="1.00" />
                                            <input type="hidden" name="currency_code" value="USD" />
                                            <input type="hidden" name="return" value=" " />
                                            <input type="hidden" name="cancel_return" value=" " />
                                            <input type="submit" name="submit" value="Add to cart" class="button" />
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <a href="single.html">
                                    <img src="images/s4.jpg" alt="">
                                </a>
                            </div>
                            <div class="product-name-w3l">
                                <h4>
                                    <a href="single.html">Kissan Tomato Ketchup, 950g</a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>$99.00</h6>
                                    <p>Save $20.00</p>
                                </div>
                                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                    <form action="#" method="post">
                                        <fieldset>
                                            <input type="hidden" name="cmd" value="_cart" />
                                            <input type="hidden" name="add" value="1" />
                                            <input type="hidden" name="business" value=" " />
                                            <input type="hidden" name="item_name" value="Kissan Tomato Ketchup, 950g" />
                                            <input type="hidden" name="amount" value="99.00" />
                                            <input type="hidden" name="discount_amount" value="1.00" />
                                            <input type="hidden" name="currency_code" value="USD" />
                                            <input type="hidden" name="return" value=" " />
                                            <input type="hidden" name="cancel_return" value=" " />
                                            <input type="submit" name="submit" value="Add to cart" class="button" />
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <a href="single.html">
                                    <img src="images/s2.jpg" alt="">
                                </a>
                            </div>
                            <div class="product-name-w3l">
                                <h4>
                                    <a href="single.html">Madhur Pure Sugar, 1g</a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>$69.00</h6>
                                    <p>Save $20.00</p>
                                </div>
                                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                    <form action="#" method="post">
                                        <fieldset>
                                            <input type="hidden" name="cmd" value="_cart" />
                                            <input type="hidden" name="add" value="1" />
                                            <input type="hidden" name="business" value=" " />
                                            <input type="hidden" name="item_name" value="Madhur Pure Sugar, 1g" />
                                            <input type="hidden" name="amount" value="69.00" />
                                            <input type="hidden" name="discount_amount" value="1.00" />
                                            <input type="hidden" name="currency_code" value="USD" />
                                            <input type="hidden" name="return" value=" " />
                                            <input type="hidden" name="cancel_return" value=" " />
                                            <input type="submit" name="submit" value="Add to cart" class="button" />
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <a href="single2.html">
                                    <img src="images/s3.jpg" alt="">
                                </a>
                            </div>
                            <div class="product-name-w3l">
                                <h4>
                                    <a href="single2.html">Surf Excel Liquid, 1.02L</a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>$187.00</h6>
                                    <p>Save $30.00</p>
                                </div>
                                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                    <form action="#" method="post">
                                        <fieldset>
                                            <input type="hidden" name="cmd" value="_cart" />
                                            <input type="hidden" name="add" value="1" />
                                            <input type="hidden" name="business" value=" " />
                                            <input type="hidden" name="item_name" value="Surf Excel Liquid, 1.02L" />
                                            <input type="hidden" name="amount" value="187.00" />
                                            <input type="hidden" name="discount_amount" value="1.00" />
                                            <input type="hidden" name="currency_code" value="USD" />
                                            <input type="hidden" name="return" value=" " />
                                            <input type="hidden" name="cancel_return" value=" " />
                                            <input type="submit" name="submit" value="Add to cart" class="button" />
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <a href="single.html">
                                    <img src="images/s8.jpg" alt="">
                                </a>
                            </div>
                            <div class="product-name-w3l">
                                <h4>
                                    <a href="single.html">Cadbury Choclairs, 655.5g</a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>$160.00</h6>
                                    <p>Save $60.00</p>
                                </div>
                                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                    <form action="#" method="post">
                                        <fieldset>
                                            <input type="hidden" name="cmd" value="_cart" />
                                            <input type="hidden" name="add" value="1" />
                                            <input type="hidden" name="business" value=" " />
                                            <input type="hidden" name="item_name" value="Cadbury Choclairs, 655.5g" />
                                            <input type="hidden" name="amount" value="160.00" />
                                            <input type="hidden" name="discount_amount" value="1.00" />
                                            <input type="hidden" name="currency_code" value="USD" />
                                            <input type="hidden" name="return" value=" " />
                                            <input type="hidden" name="cancel_return" value=" " />
                                            <input type="submit" name="submit" value="Add to cart" class="button" />
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <a href="single2.html">
                                    <img src="images/s6.jpg" alt="">
                                </a>
                            </div>
                            <div class="product-name-w3l">
                                <h4>
                                    <a href="single2.html">Fair & Lovely, 80 g</a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>$121.60</h6>
                                    <p>Save $30.00</p>
                                </div>
                                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                    <form action="#" method="post">
                                        <fieldset>
                                            <input type="hidden" name="cmd" value="_cart" />
                                            <input type="hidden" name="add" value="1" />
                                            <input type="hidden" name="business" value=" " />
                                            <input type="hidden" name="item_name" value="Fair & Lovely, 80 g" />
                                            <input type="hidden" name="amount" value="121.60" />
                                            <input type="hidden" name="discount_amount" value="1.00" />
                                            <input type="hidden" name="currency_code" value="USD" />
                                            <input type="hidden" name="return" value=" " />
                                            <input type="hidden" name="cancel_return" value=" " />
                                            <input type="submit" name="submit" value="Add to cart" class="button" />
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <a href="single.html">
                                    <img src="images/s5.jpg" alt="">
                                </a>
                            </div>
                            <div class="product-name-w3l">
                                <h4>
                                    <a href="single.html">Sprite, 2.25L (Pack of 2)</a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>$180.00</h6>
                                    <p>Save $30.00</p>
                                </div>
                                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                    <form action="#" method="post">
                                        <fieldset>
                                            <input type="hidden" name="cmd" value="_cart" />
                                            <input type="hidden" name="add" value="1" />
                                            <input type="hidden" name="business" value=" " />
                                            <input type="hidden" name="item_name" value="Sprite, 2.25L (Pack of 2)" />
                                            <input type="hidden" name="amount" value="180.00" />
                                            <input type="hidden" name="discount_amount" value="1.00" />
                                            <input type="hidden" name="currency_code" value="USD" />
                                            <input type="hidden" name="return" value=" " />
                                            <input type="hidden" name="cancel_return" value=" " />
                                            <input type="submit" name="submit" value="Add to cart" class="button" />
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l-specilamk">
                            <div class="speioffer-agile">
                                <a href="single2.html">
                                    <img src="images/s9.jpg" alt="">
                                </a>
                            </div>
                            <div class="product-name-w3l">
                                <h4>
                                    <a href="single2.html">Lakme Eyeconic Kajal, 0.35 g</a>
                                </h4>
                                <div class="w3l-pricehkj">
                                    <h6>$153.00</h6>
                                    <p>Save $40.00</p>
                                </div>
                                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                    <form action="#" method="post">
                                        <fieldset>
                                            <input type="hidden" name="cmd" value="_cart" />
                                            <input type="hidden" name="add" value="1" />
                                            <input type="hidden" name="business" value=" " />
                                            <input type="hidden" name="item_name" value="Lakme Eyeconic Kajal, 0.35 g" />
                                            <input type="hidden" name="amount" value="153.00" />
                                            <input type="hidden" name="discount_amount" value="1.00" />
                                            <input type="hidden" name="currency_code" value="USD" />
                                            <input type="hidden" name="return" value=" " />
                                            <input type="hidden" name="cancel_return" value=" " />
                                            <input type="submit" name="submit" value="Add to cart" class="button" />
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>--%>
        </div>
    </div>
    <!-- //special offers -->

    <!-- newsletter -->
  <%--  <div class="footer-top">
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
            <p>© 2020 . All rights reserved | Design by
                <a href="http://masutechnologies.com"> Masu Technologies Inc.</a>
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

            if (total <=0 ) {
                alert('The minimum order quantity is 1. Please add more to your shopping cart before checking out');
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

    <!-- imagezoom -->
    <script src="js/imagezoom.js"></script>
    <!-- //imagezoom -->

    <!-- FlexSlider -->
    <script src="js/jquery.flexslider.js"></script>
    <script>
        // Can also be used with $(document).ready()
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
            });
        });
    </script>
    <!-- //FlexSlider-->

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

    <!-- for bootstrap working -->
    <script src="js/bootstrap.js"></script>
    <!-- //for bootstrap working -->
    <!-- //js-files -->
    
</body>

</html>