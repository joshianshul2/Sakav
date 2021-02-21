<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="BachatBazaar.Dashboard" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            width: 675px;
            max-width: 1140px;
            min-width: 992px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 7.5px;
            padding-right: 7.5px;
        }
    </style>
     <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        nav {
            margin: 0;
            padding: 0;
            width: 150px;
       
            position: fixed;
            height: 100%;
            overflow: auto;
        }

            nav a {
                display: block;
         
                font-weight: bolder;
                font-size: 20px;
                padding: 16px;
                text-decoration: none;
            }

                nav a.selected {
                
                }

                nav a:hover:not(.selected) {
                  
                }

        div.content {
            margin-left: 200px;
            padding: 1px 16px;
            height: 1000px;
        }

        @media screen and (max-width: 700px) {
            nav {
                width: 100%;
                height: auto;
                position: relative;
            }

                nav a {
                    float: left;
                }

            div.content {
                margin-left: 0;
            }
        }
    </style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="container wrapper">

  <!-- Navbar -->
  <%--<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="Default.aspx" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="Contact.aspx" class="nav-link">Contact</a>
      </li>
    </ul>

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">Call me whenever you can...</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  John Pierce
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">I got your message bro</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Nora Silvester
                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">The subject goes here</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
        </div>
      </li>
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">15 Notifications</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 friend requests
            <span class="float-right text-muted text-sm">12 hours</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 new reports
            <span class="float-right text-muted text-sm">2 days</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>--%>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="/images/logo2.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           >
      <span class="brand-text font-weight-light">Sakav</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
   <br>
                    
                    

      <!-- Sidebar Menu -->
      <nav class="mt-2 sideBar" >
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview menu-open">
            <%--<a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>--%>
           
            <ul class="nav nav-treeview">
             <!-- <li class="nav-item">
                <a href="pages/layout/top-nav.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Top Navigation</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/top-nav-sidebar.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Top Navigation + Sidebar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/boxed.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Boxed</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/fixed-sidebar.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Fixed Sidebar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/fixed-topnav.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Fixed Navbar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/fixed-footer.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Fixed Footer</p>
                </a>
              </li>-->
             <%-- <li class="nav-item">
                <a href="ImageUpload.aspx" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Image Upload </p>
                </a>
              </li>
            </ul>
          </li>
               <li class="nav-item">
                <a href="CategoryMaster.aspx" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Category Master</p>
                </a>
              </li>
          
              <li class="nav-item">
                <a href="SubCategoryMaster.aspx" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Sub Category Master</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="ItemMaster.aspx" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Item Master</p>
                </a>
              </li>
          
            <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Profile</p>
                </a>
              </li>
             
            
            
              <li class="nav-item">
                <a href="Contact.aspx" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Contacts</p>
                </a>
              </li>
            --%>
              <li class="nav-item">
                <a href="MyOrder.aspx" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Order Detail</p>
                </a>
              </li>
          
            </ul>
         
          
           
            
            
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
   

<form id="form1" runat="server">
       <%-- <div align="center" style="background-color:white;width:100%" >--%>
            <asp:Panel ID="pnl" runat="server" width="100%" ScrollBars ="Both" >
             <table class="auto-style1 " >
                <tr>
                  <td>
                      <br />
                       <asp:GridView ID="gvMenuTiming"  runat="server" AutoGenerateColumns="False" CssClass="myTableClass" Width="100%" OnRowCommand="gvMenuTiming_RowCommand">
                                <HeaderStyle BackColor="#217b90" Font-Bold="true" ForeColor="White"  />
          
          <%--          <asp:GridView ID="gvMenuTiming" runat="server"  OnRowCommand="gvMenuTiming_RowCommand" AutoGenerateColumns="false">
          --%>           <%--   <Columns>
                            <asp:CommandField HeaderText="Select" ShowHeader="true" ShowSelectButton="true" />
                        </Columns>--%>
                        <Columns>
                           <%-- <asp:BoundField HeaderText="ID" DataField="PK_APP_ID" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden" />
                            <asp:BoundField HeaderText="ID" DataField="PK_APP_ID" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden" />
                           --%>
                              <asp:TemplateField HeaderText="Id#">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lblItemId" CommandName = "Show"  CommandArgument ='<%# Eval("Sno") %>' Width="10px" Text='<%# Eval("Sno") %>' runat="server"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Customer Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblFullName"  Text='<%# Eval("FullName") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                 <%-- <asp:TemplateField HeaderText="LandMark">
                                        <ItemTemplate>
                                            <asp:Label ID="lblLandMark"  Text='<%# Eval("LandMark") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                               <asp:TemplateField HeaderText="City">
                                        <ItemTemplate>
                                            <asp:Label ID="lblOfferRate"  Text='<%# Eval("City") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Address">
                                        <ItemTemplate>
                                            <asp:Label ID="lblAddress"  Text='<%# Eval("Address") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>
                                   <asp:TemplateField HeaderText="Mobile No">
                                        <ItemTemplate>
                                            <asp:Label ID="lblQuanitiy"  Text='<%# Eval("MobileNo") %>' runat="server" Width="10px"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                            </Columns>
                    </asp:GridView>
                  </td>
              </tr>
            </table>
                </asp:Panel> 
    <br />
       <%-- </div>--%>
    </form>
          </div><!-- /.col -->
         
          </div>
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>

   
           
                      
                                                      
      

            <!-- Map card -->
           
                <!-- /. tools -->
              </div>
              <!-- /.card-header -->
              <div class="card-body pt-0">
                <!--The calendar -->
                <div id="calendar" style="width: 100%"></div>
              </div>
           
       
  <footer class="main-footer">
    <strong>Copyright &copy; <a  href="http://adminlte.io"></a>MasuTechnologies.Inc.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.0.5
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>



<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
</body>
</html>

