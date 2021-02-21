<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemMaster.aspx.cs" Inherits="BachatBazaar.ItemMaster" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title> Category | Master</title>
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
            display: block;
            left: 1px;
            top: 0px;
        }
        .auto-style2 {
            display: block;
            left: 0px;
            top: 0px;
            width: 210px;
            height: 24px;
        }
    </style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper" style="margin-top:0px;">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light" style="margin-top:-20px;">
    <!-- Left navbar links -->
    
    <!-- SEARCH FORM -->
    <!--<form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>
-->
    <!-- Right navbar links -->
<!--    <ul class="navbar-nav ml-auto">-->
      <!-- Messages Dropdown Menu -->
      <!--<li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">-->
            <!-- Message Start -->
           <!-- <div class="media">
              <img src="dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">Call me whenever you can...</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>-->
            <!-- Message End -->
          <!--</a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">-->
            <!-- Message Start -->
          
         
            <!-- Message End -->
         
      <!-- Notifications Dropdown Menu -->
     
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="Default.aspx" class="brand-link">
      <img src="/images/logo2.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           >
      <span class="brand-text font-weight-light">Sakav</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar" style="margin-top:0px;">
      <!-- Sidebar user panel (optional) -->
     
     <br>
      <!-- Sidebar Menu -->
       <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
           
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
              <li class="nav-item">
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
                <a href="ItemMaster.aspx" class="auto-style1">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Item Master</p>
                </a>
              </li>
            <li class="nav-item">
                <a href="OrderMasterAdmin.aspx" class="auto-style1">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Order Master</p>
                </a>
              </li>
            <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Profile</p>
                </a>
              </li>
             
            
            
              <li class="nav-item">
                <a href="pages/examples/contacts.html" class="auto-style2">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Contacts</p>
                </a>
              </li>
          
            </ul>
         
          
           
            
            
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="margin-top:0px;">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">&nbsp&nbsp Item Master</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="AdminPanel.aspx">Admin Panel</a></li>
              <li class="breadcrumb-item active">Item Master</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
   
              
          <section class="col-lg-5 connectedSortable">

          
           
  <!-- /.content-wrapper -->
  

  <!-- Control Sidebar -->
 
  <!-- /.control-sidebar -->



<form id="form1" runat="server">
       <%-- <div align="center" style="background-color:white;width:100%" >--%>
    <table width="230%" style="background-color:white">
      
           <tr>
               <td colspan="2">
              <table width="100%" >
                <tr>
                    <td colspan="6">
                        SEARCH 
                    </td>
                </tr>
                <tr style ="background-color:cornflowerblue;">
                
                    <%--<td >
                        Category
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat ="server" OnSelectedIndexChanged="drpCategorySearch_SelectedIndexChanged" AutoPostBack="true"  >
                            <asp:ListItem Value ="SELECT" Text="SELECT"></asp:ListItem>
                        </asp:DropDownList>
                    </td>--%>
                   <td>
                       Sub-Category
                   </td>
                    <td>
                         <asp:DropDownList ID="DropDownList2" runat ="server" >
                               <asp:ListItem Value ="SELECT" Text="SELECT"></asp:ListItem>
                         </asp:DropDownList>
                    </td>
                    </tr>
        <tr>
                    <td> <asp:CheckBox ID="CheckBox1" runat ="server" text="Position" />&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList3" runat ="server" >
                            <asp:ListItem Text="ShowFrontTop_3" Value ="ShowFrontTop_3"></asp:ListItem>
                            <asp:ListItem Text="ShowFrontMid_3" Value ="ShowFrontMid_3"></asp:ListItem>
                            <asp:ListItem Text="ShowFrontBottom_3" Value ="ShowFrontBottom_3"></asp:ListItem>
                            <asp:ListItem Text="ShowFrontSlider_10" Value ="ShowFrontSlider_10"></asp:ListItem>
                            <asp:ListItem Text="ShowLeftFront_5" Value ="ShowLeftFront_5"></asp:ListItem>
                            <asp:ListItem Text="ShowTop3" Value ="ShowTop3"></asp:ListItem>
                            <asp:ListItem Text="ShowSlider9" Value ="ShowSlider9"></asp:ListItem>
                            <asp:ListItem Text="ShowLeft5" Value ="ShowLeft5"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
            </tr>
                  <tr>
                    <td>
                        <asp:Button ID="Button1" runat ="server" Text="OK" OnClick="btnSearch_Click" />
                    </td>
                </tr>
            </table>
                   <br />
               </td>
           </tr>
                <tr>
                    
                   
                   
                    <td>
                           Item Name &nbsp;&nbsp;
 <asp:DropDownList ID="drpItemName" runat ="server" OnSelectedIndexChanged="drpItemName_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                    </tr>
        
        <tr>
                    <td>
                           <asp:Button ID="btnOK" runat ="server" Text ="OK" OnClick="btnOK_Click" />
                    </td>
                    </tr>

              </table>
    <br />
    <br />

            <table width="100%" style="background-color:white">
           <tr>
               <td colspan="2">
              <table width="100%" >
               <%-- <tr>
                    <td colspan="6">
                        SEARCH 
                    </td>
                </tr>--%>
             <%--   <tr style ="background-color:cornflowerblue ">--%>
                
<%--                    <td width="10%">
                        Category
                    </td>--%>
                    <td>
                        <asp:DropDownList ID="drpCategorySearch" runat ="server" OnSelectedIndexChanged="drpCategorySearch_SelectedIndexChanged"  Visible="false" AutoPostBack="true"  >
                            <asp:ListItem Value ="SELECT" Text="SELECT"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                   <td>
                       Sub-Category
                   </td>
                    <td>
                         <asp:DropDownList ID="drpSubCategorySearch" runat ="server" >
                               <asp:ListItem Value ="SELECT" Text="SELECT"></asp:ListItem>
                         </asp:DropDownList>
                    </td>
                    </tr>
        <tr>
                    <td> <asp:CheckBox ID="chkPostion" runat ="server" text="Position" />&nbsp;&nbsp;
                        <asp:DropDownList ID="DrpPosition" runat ="server" >
                            <asp:ListItem Text="ShowFrontTop_3" Value ="ShowFrontTop_3"></asp:ListItem>
                            <asp:ListItem Text="ShowFrontMid_3" Value ="ShowFrontMid_3"></asp:ListItem>
                            <asp:ListItem Text="ShowFrontBottom_3" Value ="ShowFrontBottom_3"></asp:ListItem>
                            <asp:ListItem Text="ShowFrontSlider_10" Value ="ShowFrontSlider_10"></asp:ListItem>
                            <asp:ListItem Text="ShowLeftFront_5" Value ="ShowLeftFront_5"></asp:ListItem>
                            <asp:ListItem Text="ShowTop3" Value ="ShowTop3"></asp:ListItem>
                            <asp:ListItem Text="ShowSlider9" Value ="ShowSlider9"></asp:ListItem>
                            <asp:ListItem Text="ShowLeft5" Value ="ShowLeft5"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
            </tr>
                  <tr>
                    <td>
                        <asp:Button ID="btnSearch" runat ="server" Text="OK" OnClick="btnSearch_Click" />
                    </td>
                </tr>
            </table>
                   <br />
               </td>
           </tr>
                <tr>
                    <td>
                        S. No.
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="txtSno" runat ="server" Enabled="false" ></asp:TextBox>
                    </td>
                    </tr>

                <tr>
                    <td>
                        Category Name
                    </td>
                    <td>
                       <asp:DropDownList ID="drpCategory" runat ="server" Width="350px" OnSelectedIndexChanged="drpCategory_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Text="SELECT" Value="SELECT"></asp:ListItem>
                       </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <td>
                        Sub Category Name
                    </td>
                    <td>
                      <asp:DropDownList ID="drpSubCategory" runat ="server" Width="350px" >
                            <asp:ListItem Text="SELECT" Value="SELECT"></asp:ListItem>
                       </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Item Name
                    </td>
                    <td>
                      <asp:TextBox ID="txtItemName" runat ="server" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Rate
                    </td>
                    <td>
                      <asp:TextBox ID="txtRate" runat ="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Offer Rate
                    </td>
                    <td>
                      <asp:TextBox ID="txtOfferRate" runat ="server" ></asp:TextBox>
                    </td>
                </tr>
    <tr>
                    <td>
                        Tax Rate
                    </td>
                    <td>
                      <asp:TextBox ID="txtTaxRate" runat ="server" ></asp:TextBox>
                    </td>
                </tr>
    <tr>
                    <td>
                        Gst Rate
                    </td>
                    <td>
                      <asp:TextBox ID="txtGst" runat ="server" ></asp:TextBox>
                    </td>
                </tr>
    <tr>
                    <td>
                        HS Number 
                    </td>
                    <td>
                      <asp:TextBox ID="txtHSNo" runat ="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Discount
                    </td>
                    <td>
                      <asp:TextBox ID="txtDiscount" runat ="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Quantity
                    </td>
                    <td>
                      <asp:TextBox ID="txtQuantity" runat ="server" ></asp:TextBox>
                    </td>
                </tr>
                
                 <tr>
                       <td>
                           <table>
                               <tr>
                                   <td colspan="2" valign="top">
                                                 <label id="lbl">Select a Image File...</label>
                  
                                   </td>
                                   </tr>
                               <tr>
                                   <td colspan="2" valign="top">
                                            <asp:FileUpload ID="FileUpload1"  runat="server" />
                                    </td>
                                   </tr>
                           </table>
                        </td>
                     <td valign="top">
                         <asp:Image ID="imgItem" runat ="server" Height ="200" Width="150" />
                     </td>
                    </tr>
                <tr>
                    <td>
                        Is COD Available?
                    </td>
                    <td>
                        <asp:CheckBox ID="chkIsCOD" runat ="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Is Free Delivery Available?
                    </td>
                    <td>
                        <asp:CheckBox ID="chkIsFreeDelivery" runat ="server" />
                    </td>
                </tr>
               
                <tr>
                    <td>
                        Is Front Page Top Image?
                    </td>
                    <td>
                        <asp:CheckBox ID="chkIsFrontTop" runat ="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Is Front Page Middle 3 Image?
                   </td>
                    <td>
                        <asp:CheckBox ID="chkIsFrontMiddle" runat ="server" />
                    </td>
                </tr>
           
                  <tr>
                    <td>
                        Is Front Page Bottom 3 Image?
                   </td>
                    <td>
                        <asp:CheckBox ID="chkIsFrontBottom3" runat ="server" />
                    </td>
                </tr>
                  <tr>
                    <td>
                        Is Front Page Single Image?
                   </td>
                    <td>
                        <asp:CheckBox ID="chkIsFrontSingle" runat ="server" />
                    </td>
                </tr>
            
                <tr>
                    <td>
                        Is Front Page Slider 8 Image?
                   </td>
                    <td>
                        <asp:CheckBox ID="chkIsFrontPageSlider" runat ="server" />
                    </td>
                </tr>
             <tr>
                    <td>
                        Is Front Page Left Vertical 5 Image?
                   </td>
                    <td>
                        <asp:CheckBox ID="chkIsFrontLeftVerticle" runat ="server" />
                    </td>
                </tr>
             <tr>
                    <td>
                        Front Page Postion
                   </td>
                    <td>
                        <asp:TextBox ID="txtFrontPosition" runat ="server" />
                    </td>
                </tr>
            
                <tr>
                    <td colspan ="2">
                        <b>PRODUCT IMAGES</b>
                    </td>
                    <td>
                    
                    </td>
                </tr>
                <tr>
                <tr>
                    <td>
                        Is Top Image?
                    </td>
                    <td>
                        <asp:CheckBox ID="chkIsTop3" runat ="server" />
                    </td>
                </tr>
             <tr>
                    <td>
                        Is Slider Image?
                    </td>
                    <td>
                        <asp:CheckBox ID="chkIsSliderImage" runat ="server" />
                    </td>
                </tr>
              <tr>
                    <td>
                        Is Left Side Verticle Image?
                    </td>
                    <td>
                        <asp:CheckBox ID="chkIsLeftSideVerticle" runat ="server" />
                    </td>
                </tr>
             <tr>
                    <td>
                     Position
                    </td>
                    <td>
                        <asp:TextBox ID="txtPosition" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Is Active?
                    </td>
                    <td>
                        <%--<asp:TextBox class="form-control" ID="TextBox1" runat ="server" Enabled="false" ></asp:TextBox>--%>
                        <asp:CheckBox ID="chkIsActive" runat ="server" />
                    </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <br />
                             <asp:Button ID="btnSubmit" class="form-control btn btn-primary" runat ="server" Text ="Submit" OnClick="lblUpload_Click" />
                        </td>
                    </tr>
                   <tr>
                        <td>
                        </td>
                        <td>
                            <br />
                             <asp:Button ID="btnCancel" class="form-control btn btn-primary" runat ="server" Text ="Clear" OnClick="btnCancel_Click"/>
                        </td>
                    </tr>
                  
                <tr>
                        <td>
                        </td>
                        <td>
                            <br />
                             <asp:Button ID="btnUpdate" class="form-control btn btn-primary" runat ="server" Text ="Update" OnClick="btnUpdate_Click" />
                        </td>
                    </tr>
              <tr>
                  <td colspan="2">
                      <br />
                       <asp:GridView ID="gvMenuTiming"  runat="server" AutoGenerateColumns="False" CssClass="myTableClass" Width="900px" OnRowCommand="gvMenuTiming_RowCommand">
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
                                            <asp:LinkButton ID="lblItemId" CommandName = "Show"  CommandArgument ='<%# Eval("PK_ItemId") %>' Width="80px" Text='<%# Eval("PK_ItemId") %>' runat="server"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Item Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblItemName"  Text='<%# Eval("ItemName") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Rate">
                                        <ItemTemplate>
                                            <asp:Label ID="lblRate"  Text='<%# Eval("Rate") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                               <asp:TemplateField HeaderText="Offer Rate">
                                        <ItemTemplate>
                                            <asp:Label ID="lblOfferRate"  Text='<%# Eval("OfferRate") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Discount">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDiscount"  Text='<%# Eval("Discount") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                   <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <asp:Label ID="lblQuanitiy"  Text='<%# Eval("Quantity") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                              
                            <asp:TemplateField HeaderText="Category Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblSubCategoryName"  Text='<%# Eval("SubCategoryName") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                   <asp:TemplateField HeaderText="Sub Category Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCategoryName"  Text='<%# Eval("CategoryName") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                         
                            <asp:TemplateField HeaderText="Is Active?">
                                        <ItemTemplate>
                                            <asp:CheckBox  ID="chkIsActive" Checked  ='<%# Eval("IsActive") %>'  runat="server"></asp:CheckBox>
                                        </ItemTemplate>
                              </asp:TemplateField>
                              <asp:TemplateField HeaderText="COD?">
                                        <ItemTemplate>
                                            <asp:CheckBox  ID="chkIsCOD" Checked  ='<%# Eval("IsCOD") %>'  runat="server"></asp:CheckBox>
                                        </ItemTemplate>
                              </asp:TemplateField>
                         
                            <asp:TemplateField HeaderText="FD.?">
                                        <ItemTemplate>
                                            <asp:CheckBox  ID="chkIsFreeDelivery" Checked  ='<%# Eval("IsFreeDel") %>'  runat="server"></asp:CheckBox>
                                        </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Front Top">
                                        <ItemTemplate>
                                            <asp:CheckBox  ID="ShowFrontTop_3" Checked  ='<%# Eval("ShowFrontTop_3") %>'  runat="server"></asp:CheckBox>
                                        </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Front MID.">
                                        <ItemTemplate>
                                            <asp:CheckBox  ID="ShowFrontMid_3" Checked  ='<%# Eval("ShowFrontMid_3") %>'  runat="server"></asp:CheckBox>
                                        </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Front Bottom">
                                        <ItemTemplate>
                                            <asp:CheckBox  ID="ShowFrontBottom_3" Checked  ='<%# Eval("ShowFrontBottom_3") %>'  runat="server"></asp:CheckBox>
                                        </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Front Slider">
                                        <ItemTemplate>
                                            <asp:CheckBox  ID="ShowFrontSlider_10" Checked  ='<%# Eval("ShowFrontSlider_10") %>'  runat="server"></asp:CheckBox>
                                        </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Front Left">
                                        <ItemTemplate>
                                            <asp:CheckBox  ID="ShowLeftFront_5" Checked  ='<%# Eval("ShowLeftFront_5") %>'  runat="server"></asp:CheckBox>
                                        </ItemTemplate>
                           </asp:TemplateField>
                  <%--         <asp:TemplateField HeaderText="Front Single">
                                        <ItemTemplate>
                                            <asp:CheckBox  ID="ShowFrontSingle_1" Checked  ='<%# Eval("ShowFrontSingle_1") %>'  runat="server"></asp:CheckBox>
                                        </ItemTemplate>
                           </asp:TemplateField>--%>
                           <asp:TemplateField HeaderText="Front Pos.">
                                        <ItemTemplate>
                                                       <asp:TextBox  Width="50px" ID="txtFPosition" Text  ='<%# Eval("FrontPosition") %>'  runat="server"></asp:TextBox>
                                        </ItemTemplate>
                           </asp:TemplateField>
                            <asp:TemplateField HeaderText="Top">
                                        <ItemTemplate>
                                            <asp:CheckBox  ID="ShowTop3" Checked  ='<%# Eval("ShowTop3") %>'  runat="server"></asp:CheckBox>
                                        </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Slider">
                                        <ItemTemplate>
                                            <asp:CheckBox  ID="ShowSlider9" Checked  ='<%# Eval("ShowSlider9") %>'  runat="server"></asp:CheckBox>
                                        </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Left">
                                        <ItemTemplate>
                                            <asp:CheckBox  ID="ShowLeft5" Checked  ='<%# Eval("ShowLeft5") %>'  runat="server"></asp:CheckBox>
                                        </ItemTemplate>
                           </asp:TemplateField>
                    <asp:TemplateField HeaderText="Pos.">
                                        <ItemTemplate>
                                            <asp:TextBox  Width="50px" ID="txtPosition" Text  ='<%# Eval("Position") %>'  runat="server"></asp:TextBox>
                                        </ItemTemplate>
                           </asp:TemplateField>
                  
                            </Columns>
                    </asp:GridView>
                  </td>
              </tr>
            </table>
    <br />
       <%-- </div>--%>
    </form>
    
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