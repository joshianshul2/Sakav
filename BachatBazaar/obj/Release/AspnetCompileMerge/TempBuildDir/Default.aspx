<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Default.aspx.cs" MasterPageFile="~/Site1.Master" enableEventValidation="false"  Inherits="BachatBazaar.Default" %>

    <asp:Content ID ="contents" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">
        
        <section class="text-carousel">
    <div class="container-fluid p-0">
        <div class="row m-0">
            <div class="col-md-12 p-0">
                <div class="carousel slide" data-ride="carousel" id="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active p-5" style="background-image: url(img/2.jpg);background-attachment: fixed;background-position: center center;">
                            <div class="row d-flex mh-568 align-items-center justify-content-center">
                                <div class="col-xl-8 col-lg-8 col-10 text-center">
                                   <marquee>
     <h3 class="display-4 mb-3 text-white fntdesign">Welcome to Sakav</h3>
</marquee>
<marquee width="70%" direction="right" height="30%" scrollamount="2">
      <h3 class=" text-white fntdesign">(साकव में आपका स्वागत है)</h3>
</marquee>      
                                    <marquee width="70%" direction="up" height="30%" scrollamount="2">
        <h3 class=" text-white fntdesign">(साकव मध्ये आपले स्वागत आहे)</h3>
</marquee>      
                            


                                    
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item p-5" style="background-image: url(img/2.jpg);background-attachment: fixed;background-position: center center;">
                        </div>
                        <div class="carousel-item p-5" style="background-image: url(img/4.jpg);background-attachment: fixed;background-position: center center;">
                            <div class="row d-flex mh-568 align-items-center justify-content-center">
                                <div class="col-xl-8 col-lg-8 col-10 text-center">
                                    <h3 class="display-4 mb-3 text-white fntdesign">Welcome to SAKAV</h3>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev"> <span class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span> </a>
                    <a class="carousel-control-next" href="#carousel" role="button" data-slide="next"> <span class="carousel-control-next-icon"></span> <span class="sr-only">Next</span> </a>
                </div>
            </div>
        </div>
    </div>
    
 
</section>
<section class="py-5">
    <div class="container">
        <div class="row align-items-center">

            <div class="col-md-5">
                <h2 class="mb-3">Join the Sakav Group</h2>
<!-- ---------------------------------
Start Join the Mess Section
-------------------------------------->
                <form>
                    <!-- Member -->
                    <div class="md-form">
                       <%-- <input type="text" class="form-control">--%>
                          <asp:TextBox ID="txtMember" runat="server" class="form-control"></asp:TextBox>
                        <label>Member</label>
                    </div>
                    <!-- Mobile No. -->
                    <div class="md-form">
                        <%--<input type="number" class="form-control">--%>
                          <asp:TextBox ID="txtMobileNo" runat="server" class="form-control" ></asp:TextBox>
                        <label>Mobile No.</label>
                    </div>
                    <!-- Address -->
                    <div class="md-form">
                       <%-- <input type="text" class="form-control">--%>
                          <asp:TextBox ID="txtAddress" runat="server" class="form-control" ></asp:TextBox>
                        <label>Address</label>
                    </div>
                    <!-- City -->
                    <div class="md-form">
                       <%-- <input type="text" class="form-control">--%>
                             <asp:TextBox ID="txtCity" runat="server" class="form-control"></asp:TextBox>
                        <label>City</label>
                    </div>
                    <!-- Time -->
                     
                    <div class="md-form">
                        <%--<input type="time" class="form-control">--%>
                   
                        <asp:DropDownList ID="drpTime" runat ="server"  class="form-control">
                                    <asp:ListItem Text ="SELECT">SELECT</asp:ListItem>
                                    <asp:ListItem Text ="One Time">One Time</asp:ListItem>
                                    <asp:ListItem Text ="Two Time">Two Time</asp:ListItem>

                                </asp:DropDownList>
                      
                       <%-- <label>Time</label>--%>
                    </div>
                                    
                    <!-- Join Date -->
                       <asp:UpdatePanel ID="updDef" runat ="server" >
                                <ContentTemplate> 
                    <div class="md-form">
                       <%-- <input type="text" class="form-control">--%>
                          <asp:TextBox ID="txtDate" runat="server" class="form-control" placeholder="Join Date" ></asp:TextBox>
                                <asp:ImageButton ID="Img" runat ="server" ImageUrl="~/img/cal-icon.png" OnClick ="Img_Click" />
                                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                      <%--  <label>Join Date</label>--%>
                    </div>
                                       </ContentTemplate> 
                          </asp:UpdatePanel>
                  <%--  <button type="submit" class="btn mt-4 btn-block btn-danger btn-rounded p-2"><b>Submit</b></button>--%>
                    <asp:Button ID="btnSubmit" runat ="server" Text ="SUBMIT" class="btn mt-4 btn-block btn-danger btn-rounded p-2" OnClick="btnSubmit_Click"/>
			
                </form>
<!-- ---------------------------------
End Join the Mess Section
-------------------------------------->
            </div>
            <div class="col-md-1"></div>
            <div class="col-md-6 mt-3 mt-md-0">
                <img src="img/food.jpg" class="img-fluid">
            </div>
        </div>
    </div>
</section>
<section class="py-5 bg3">
    <div class="container">
        <div class="feature-section">
            <div class="row align-items-center">
                <%--<div class="text-center single-feature col-lg-3 col-md-6">
                    <img src="img/f1.png" alt="" class="mb-3">
                    <h4 class="pt-20 pb-20">Refreshing Breakfast</h4>
                    <p>
                        Lorem ipsum dolor sit ametcons ecteturadipis icing elit.
                    </p>
                </div>--%>
                <div class="text-center single-feature col-lg-3 col-md-6">
                </div>
                <div class="text-center single-feature col-lg-3 col-md-6">
                </div>
               <%-- <div class="text-center single-feature col-lg-3 col-md-6">
                    <img src="img/f4.png" alt="" class="mb-3">
                    <h4 class="pt-20 pb-20">Rich Quality Buffet</h4>
                    <p>
                        Lorem ipsum dolor sit ametcons ecteturadipis icing elit.
                    </p>
                </div>--%>
            </div>
        </div>
    </div>
</section>
<%--<section class="events py-5">
    <div class="container">
        <div class="row">
            <div class="text-center mx-auto col-md-12">
                <h1 class="mb-4 fntdesign">Upcoming Events</h1>
            </div>
        </div>
        <div class="row bg-white align-items-stretch">
            <!-- Profile Side-->
            <div class="col-lg-6">
                <div style="background-image: url(img/event-bg.jpg);" class="profile has-border">
                    <ul class="date list-unstyled list-inline clearfix">
                        <li class="day pull-left">15<sup>th</sup></li>
                        <li class="month pull-left">December <span>2016</span></li>
                    </ul>
                </div>
            </div>
            <!-- Details Side-->
            <div class="col-lg-6">
                <div class="details-outer d-flex align-items-center bg-light">
                    <div class="details">
                        <h3>Italian Master Class</h3>
                        <h4 class="text-primary">15 December 2016 | 20:00</h4>
                        <p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat..</p>
                        <a href="#" class="btn btn-outline-primary btn-rounded waves-effect">Read More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>--%>
<section class="py-5 bg1">
    <div class="container">
        <div class="row">
            <div class="text-center mx-auto col-md-12">
                <h1 class="mb-4 fntdesign">We provide the following</h1>
            </div>
        </div>
        <div class="row align-items-center">
            <!-- item-->
            <div class="col-md-4 service mb-4 mb-lg-0">
                <div class="icon"><i class="fa fa-heart" aria-hidden="true"></i></div>
                <div class="text text-center">
                    <h4>Clean Environment</h4>
                </div>
            </div>
            <div class="col-md-4 service mb-4 mb-lg-0">
                <div class="icon"><i class="fa fa-cutlery" aria-hidden="true"></i></div>
                <div class="text text-center">
             
                </div>
            </div>
    </div>
</section>
<section class="py-5">
    <div class="container">
        <div class="row">
            <div class="text-center mx-auto col-md-12">
                <h1 class="mb-4 fntdesign">FAQ</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-md-12 p-3">
                <div class="accordion" id="accordion-tab-1">
                    <div class="card">
                        <div class="card-header" id="accordion-tab-1-heading-1">
                            <h5>
                              <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-1-content-1" aria-expanded="false" aria-controls="accordion-tab-1-content-1">How can I join the SAKAV Group?</button>
                           </h5>
                        </div>
                        <div class="collapse show" id="accordion-tab-1-content-1" aria-labelledby="accordion-tab-1-heading-1" data-parent="#accordion-tab-1">
                            <div class="card-body">
                                <p>You can fill enquiry form  directly or download fill and sumit to the office and pay fee in our account,this way, you can join us.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="accordion-tab-1-heading-2">
                            <h5>
                              <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-1-content-2" aria-expanded="false" aria-controls="accordion-tab-1-content-2">For how long, I can join the Sakav?</button>
                           </h5>
                        </div>
                        
                    </div>
                    <div class="card">
                        
                    </div>
                    <div class="card">
                        <div class="card-header" id="accordion-tab-1-heading-4">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
 
</asp:Content>