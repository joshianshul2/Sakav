using System;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;
using System.Web.Script.Serialization;
using System.Collections.Generic;
using System.Net.Mail;

namespace BachatBazaar
{


    public partial class Checkout : System.Web.UI.Page
    {
        public int x = 1;
        MyDataConnection MDC = new MyDataConnection();
        SqlDataAdapter da;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["confirm"] = "no";
                Session["dtLocal"] = "";
            }
        }
       

        [WebMethod]
        public static string SaveData(string[][] array)
        {

            int i, j,k;

            DataSet dsConfirm = new DataSet();
            DataSet dsLocal = new DataSet();

            DataTable dt = new DataTable();

            dt.Columns.Add("Sno");
            dt.Columns.Add("ItemId");
            dt.Columns.Add("ItemName");
            dt.Columns.Add("Qty");
            dt.Columns.Add("Amount");
            string dd = "" ;
             foreach (var arr in array)
                {
                    DataRow dr = dt.NewRow();
                    dr["Sno"] = arr[0];
                    dr["ItemId"] = arr[1];
                    dr["ItemName"]=arr[4];
                    dr["Qty"] = 1 ;
                    dr["Amount"] = arr[5];
                    dt.Rows.Add(dr);
            }
            HttpContext.Current.Session["dtLocal"] = dt;

            string dts = dt.Rows.Count.ToString();
            HttpContext.Current.Session["confirm"] = "yes";
            return "";
        }
            public string MainMenu1()
        {
            int i = 1;
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select Distinct SubCategoryName from SubCategoryMaster where CategoryName='Personal Care'");
            if (dt.Rows.Count > 0)
            {
                strHtml += "<li class='dropdown'>";
                strHtml += "<a href = '#' class='dropdown-toggle nav-stylehead' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>Personal Care";
                strHtml += "<span class='caret'></span></a>";
                strHtml += "<ul class='dropdown-menu multi-column columns-3'>";
                strHtml += "<div class='agile_inner_drop_nav_info'>";

                //  < div class="col-sm-6 multi-gd-img">
                //                 <ul class="multi-column-dropdown">
                strHtml += "<div class='col-sm-4 multi-gd-img'>";
                strHtml += "<ul class='multi-column-dropdown'>";

                int k = 1;
                foreach (DataRow dr in dt.Rows)
                {

                    strHtml += "<li>" +
                        "<a href = 'Product.aspx?txt=" + dr["SubCategoryName"].ToString() + "'>" + dr["SubCategoryName"].ToString() + "</a>";
                    strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href='Product.aspx'>Baking Supplies</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'> Coffee, Tea & Beverages</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'> Dried Fruits, Nuts</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'> Sweets, Chocolate</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Spices & Masalas</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href= 'Product.aspx'>Jams, Honey & Spreads</a>";
                    //strHtml += "</li>";
                    ////if (i == 11)
                    //{
                    //    strHtml += "</ul>";
                    //    strHtml += "</div>";
                    //    strHtml += "<div class='col-sm-4 multi-gd-img'>";
                    //    strHtml += "<ul class='multi-column-dropdown'>";

                    //}
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Pickles</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href='Product.aspx'>Pasta & Noodles</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Rice, Flour & Pulses</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Sauces & Cooking Pastes</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Snack Foods</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Oils, Vinegars</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Meat, Poultry & Seafood</a>";
                    //strHtml += "</li>";
                    k = k + 1;
                    if (k == 11)
                    {
                        strHtml += "</ul>";
                        strHtml += "</div>";
                        strHtml += "<div class='col-sm-4 multi-gd-img'>";
                        strHtml += "<ul class='multi-column-dropdown'>";

                    }

                }
            }
            strHtml += "</ul>";
            strHtml += "</div>";
            strHtml += "<div class='col-sm-4 multi-gd-img'>";
            strHtml += "<img src = 'images/nav.png' alt=''>";
            strHtml += "</div>";
            strHtml += "<div class='clearfix'></div>";
            strHtml += "</div>";
            strHtml += "</ul>";
            strHtml += "</li>";
            return strHtml;

        }
        public string MainMenu()
        {
            int i = 1;
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select Distinct SubCategoryName from SubCategoryMaster where CategoryName='KITCHEN'");
            if (dt.Rows.Count > 0)
            {
                strHtml += "<li class='dropdown'>";
                strHtml += "<a href = '#' class='dropdown-toggle nav-stylehead' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>KITCHEN";
                strHtml += "<span class='caret'></span></a>";
                strHtml += "<ul class='dropdown-menu multi-column columns-3'>";
                strHtml += "<div class='agile_inner_drop_nav_info'>";

                //  < div class="col-sm-6 multi-gd-img">
                //                 <ul class="multi-column-dropdown">
                strHtml += "<div class='col-sm-4 multi-gd-img'>";
                strHtml += "<ul class='multi-column-dropdown'>";

                int k = 1;
                foreach (DataRow dr in dt.Rows)
                {

                    strHtml += "<li>" +
                        "<a href = 'Product.aspx?txt=" + dr["SubCategoryName"].ToString() + "'>" + dr["SubCategoryName"].ToString() + "</a>";
                    strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href='Product.aspx'>Baking Supplies</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'> Coffee, Tea & Beverages</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'> Dried Fruits, Nuts</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'> Sweets, Chocolate</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Spices & Masalas</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href= 'Product.aspx'>Jams, Honey & Spreads</a>";
                    //strHtml += "</li>";
                    ////if (i == 11)
                    //{
                    //    strHtml += "</ul>";
                    //    strHtml += "</div>";
                    //    strHtml += "<div class='col-sm-4 multi-gd-img'>";
                    //    strHtml += "<ul class='multi-column-dropdown'>";

                    //}
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Pickles</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href='Product.aspx'>Pasta & Noodles</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Rice, Flour & Pulses</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Sauces & Cooking Pastes</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Snack Foods</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Oils, Vinegars</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Meat, Poultry & Seafood</a>";
                    //strHtml += "</li>";
                    k = k + 1;
                    if (k == 11)
                    {
                        strHtml += "</ul>";
                        strHtml += "</div>";
                        strHtml += "<div class='col-sm-4 multi-gd-img'>";
                        strHtml += "<ul class='multi-column-dropdown'>";

                    }

                }
            }
            strHtml += "</ul>";
            strHtml += "</div>";
            strHtml += "<div class='col-sm-4 multi-gd-img'>";
            strHtml += "<img src = 'images/nav.png' alt=''>";
            strHtml += "</div>";
            strHtml += "<div class='clearfix'></div>";
            strHtml += "</div>";
            strHtml += "</ul>";
            strHtml += "</li>";
            return strHtml;
        }

        public string GetRecord()
        {
            string strHtml = "";
            int i = 1;
            DataSet ds =(DataSet)Session["ds"];

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                int ItmId = Convert.ToInt32(dr[1].ToString());
                strHtml += "<tr class='rem1'>";

                strHtml += "<td class='invert'>"+i+"</td>";
                strHtml += "<td class='invert'>" + ItmId + "</td>";
                strHtml += "<td class='invert-image'>";
               
                strHtml += "<a href = 'single.aspx?Id=" + dr["ImageId"].ToString() + "'>";
                //DataTable dtImage = MDC.getDataTable("select * from ImageMaster where PK_ItemId='" + ItmId + "'");
                DataTable dtImage = MDC.getDataTable("select * from ItemMaster where PK_ItemId='" + ItmId + "'");
                if (dtImage.Rows.Count > 0)
                {
                    strHtml += "<img src='ProductImage/" + dtImage.Rows[0]["ImageName"].ToString() + "' alt='' class='img-responsive' height='165' width='115'>";


                    strHtml += "</a>";
                    strHtml += "</td>";
                    strHtml += "<td class='invert'>";
                    strHtml += "<div class='quantity'>";
                    strHtml += "<div class='quantity-select'>";
                    //strHtml += "<div class='entry value-minus'>&nbsp;</div>";
                    //strHtml += "<div class='entry value' id='xval'>";
                    strHtml += "<input type='text' onchange='getChange();'  id='xQty' name ='" + dr["Qty"] + "' value='" + dr["Qty"] + "' size='2'/>";
                    //strHtml += "<span  id='xQty'>" + dr["Qty"] + "</span>";
                    ////strHtml += "<span><%=x %></span>";
                    strHtml += "</div>";
                    //strHtml += "<div onclick='checkData(" + dr["Qty"].ToString() + ");' class='entry value-plus active'>&nbsp;</div>";
                    strHtml += "</div>";
                    strHtml += "</div>";
                    strHtml += "</td>";
                    strHtml += "<td class='invert'>" + dtImage.Rows[0]["ItemName"].ToString() + "</td>";
                    //strHtml += "<td class='invert'>" + dtImage.Rows[0]["OfferRate"].ToString() + "</td>";
                    strHtml += "<td class='invert'><input type='text'  id='txtRate' disabled='true'  value='" + dtImage.Rows[0]["OfferRate"] + "' size='5'/></td>";
                    strHtml += "<td class='invert'>";
                    strHtml += "<div class='rem'>";
                    strHtml += "<div class='close1'></div>";
                    strHtml += "</div>";
                    strHtml += "</td>";
                    strHtml += "</tr>";

                    i = i + 1;
                }
                }
            return strHtml;

        }


        public string SetAllCategories()

        {
            string htmlStr = "";
            DataTable dt = MDC.getDataTable("Select * from SubCategoryMaster where IsActive=1");
            //htmlStr += "<ul>";
            foreach (DataRow dr in dt.Rows)
            {
                htmlStr += "<option value = 'Product.aspx?txt=" + dr["SubCategoryName"].ToString() + "'>" + dr["SubCategoryName"].ToString() + "</option>";
                //htmlStr += "<Li>";
                //htmlStr += "<a href='Product.aspx?txt=" + dr["SubCategoryName"].ToString() + "'>" + dr["SubCategoryName"].ToString() + "</a>";
                //htmlStr += "</Li>";
            }
            //htmlStr += "</ul>";
            return htmlStr;
        }

        protected int GetMaxNo()
        {
            int i = 0;
            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {
             
                SqlDataAdapter daMax = new SqlDataAdapter("Select Max(Sno) from OrderMaster",cnt);
                DataSet dsMax = new DataSet();
                daMax.Fill(dsMax);
                if (dsMax.Tables[0].Rows.Count >0)
                {
                    if (dsMax.Tables[0].Rows[0][0] == null || dsMax.Tables[0].Rows[0][0].ToString()=="")
                    {
                        i = 1;
                    }
                    else
                    {
                        i = Convert.ToInt32(dsMax.Tables[0].Rows[0][0].ToString()) + 1;
                    }
                }
                else
                {
                    i = 1;
                }
                    

            }
            return i;
        }

        public string SetAllItems()

        {
            string htmlStr = "";
            DataTable dt = MDC.getDataTable("Select * from ItemMaster where IsActive=1 order by ItemName");
            //htmlStr += "<ul>";
            foreach (DataRow dr in dt.Rows)
            {
                htmlStr += "<option value = 'Single.aspx?Id=" + dr["PK_ItemId"].ToString() + "'>" + dr["ItemName"].ToString() + "</option>";
                //htmlStr += "<Li>";
                //htmlStr += "<a href='Product.aspx?txt=" + dr["SubCategoryName"].ToString() + "'>" + dr["SubCategoryName"].ToString() + "</a>";
                //htmlStr += "</Li>";
            }
            //htmlStr += "</ul>";
            return htmlStr;
        }
        protected string getEmailTemplate(Int32 CmpId)
        {
            String strHtml = string.Empty;

            strHtml = strHtml + "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>";
            strHtml = strHtml + "<html xmlns='http://www.w3.org/1999/xhtml'>";
            strHtml = strHtml + "<head>";
            strHtml = strHtml + "<meta http-equiv=Content-Type content=text/html; charset=utf-8' />";
            strHtml = strHtml + "<meta name='viewport' content='width=device-width, initial-scale=1' />";
            strHtml = strHtml + "<title>Order Confirmation</title>";
            strHtml = strHtml + "<style type='text/css'>";

            /* Take care of image borders and formatting */

            strHtml = strHtml + "img {max-width: 600px;outline: none; text-decoration: none;-ms-interpolation-mode: bicubic;}";
            strHtml = strHtml + "a { border: 0; outline: none; }";
            strHtml = strHtml + "a img {border: none;}";
            /* General styling */

            strHtml = strHtml + "td, h1, h2, h3  {";
            strHtml = strHtml + "font-weight: 400;}";
            strHtml = strHtml + "td {";
            strHtml = strHtml + "font-size: 13px;";
            strHtml = strHtml + "line-height: 150%;";
            strHtml = strHtml + "text-align: left;}";
            strHtml = strHtml + "body {";
            strHtml = strHtml + "-webkit-font-smoothing:antialiased;";
            strHtml = strHtml + "-webkit-text-size-adjust:none;";
            strHtml = strHtml + "width: 100%;";
            strHtml = strHtml + "height: 100%;";
            strHtml = strHtml + "color: #37302d;";
            strHtml = strHtml + "background: #ffffff;";
            strHtml = strHtml + "font-family:eras-medium;}";
            strHtml = strHtml + "table {";
            strHtml = strHtml + "border-collapse: collapse !important;}";
            strHtml = strHtml + "table{border-color:#eee;font-size:14px;}";
            strHtml = strHtml + "td{padding:0px 10px;font-size:14px;}";
            strHtml = strHtml + "th{padding:2px 10px;font-size:14px;}";
            strHtml = strHtml + "h1, h2, h3 {";
            strHtml = strHtml + "padding: 0;";
            strHtml = strHtml + "margin: 0;";
            strHtml = strHtml + "color: #444444;";
            strHtml = strHtml + "font-weight: 400;";
            strHtml = strHtml + "line-height: 110%;}";

            strHtml = strHtml + "h1 {   font-size: 35px; }";
            strHtml = strHtml + "h2 { font-size: 30px;  }";
            strHtml = strHtml + "h3 {  font-size: 24px;}";
            strHtml = strHtml + "h4 {    font-size: 18px;    font-weight: normal;  }";
            strHtml = strHtml + ".important-font {   color: #21BEB4;  font-weight: bold;  }";
            strHtml = strHtml + ".hide {  display: none !important;  }";
            strHtml = strHtml + ".force-full-width { width: 100% !important; } @font-face {  font-family:'eras-medium';";
            strHtml = strHtml + "src: url(eras-medium-itc-58884e087f78c.ttf) format('trueType')}";
            strHtml = strHtml + "</style>";
            strHtml = strHtml + "<style type='text/css' media='screen'>";
            strHtml = strHtml + "@media screen {";
            strHtml = strHtml + "@import url(http://fonts.googleapis.com/css?family=Open+Sans:400)";

            /* Thanks Outlook 2013! */
            strHtml = strHtml + "td{";
            strHtml = strHtml + "}";
            strHtml = strHtml + "h1, h2, h3 {";
            strHtml = strHtml + "}";
            strHtml = strHtml + "}";
            strHtml = strHtml + "</style>";
            strHtml = strHtml + "<style type='text/css' media='only screen and (max-width: 600px)'>";
            /* Mobile styles */
            strHtml = strHtml + "@media only screen and (max-width: 600px) {";
            strHtml = strHtml + "table[class='w320'] {width: 320px !important;}";
            strHtml = strHtml + "table[class='w300'] {";
            strHtml = strHtml + "width: 300px !important;}";
            strHtml = strHtml + "table[class='w290'] {";
            strHtml = strHtml + "width: 290px !important;}";
            strHtml = strHtml + "td[class='w320'] {";
            strHtml = strHtml + "width: 320px !important;}";
            strHtml = strHtml + "td[class~='mobile-padding'] {";
            strHtml = strHtml + "padding-left: 14px !important;";
            strHtml = strHtml + "padding-right: 14px !important;}";
            strHtml = strHtml + "td[class*='mobile-padding-left'] {";
            strHtml = strHtml + "padding-left: 14px !important;}";
            strHtml = strHtml + "td[class*='mobile-padding-right'] {";
            strHtml = strHtml + "padding-right: 14px !important;}";

            strHtml = strHtml + "td[class*='mobile-block'] {";
            strHtml = strHtml + "display: block !important;";
            strHtml = strHtml + "width: 100% !important;";
            strHtml = strHtml + "text-align: left !important;";
            strHtml = strHtml + "padding-left: 0 !important;";
            strHtml = strHtml + "padding-right: 0 !important;";
            strHtml = strHtml + "padding-bottom: 15px !important;}";
            strHtml = strHtml + "td[class*='mobile-no-padding-bottom'] {";
            strHtml = strHtml + "padding-bottom: 0 !important;}";
            strHtml = strHtml + "td[class~='mobile-center'] {";
            strHtml = strHtml + "text-align: center !important;}";
            strHtml = strHtml + "table[class*='mobile-center-block'] {";
            strHtml = strHtml + "float: none !important;";
            strHtml = strHtml + "margin: 0 auto !important;}";
            strHtml = strHtml + "*[class*='mobile-hide'] {";
            strHtml = strHtml + "display: none !important;";
            strHtml = strHtml + "width: 0 !important;";
            strHtml = strHtml + "height: 0 !important;";
            strHtml = strHtml + "line-height: 0 !important;";
            strHtml = strHtml + "font-size: 0 !important;}";
            strHtml = strHtml + "td[class*='mobile-border'] {";
            strHtml = strHtml + "border: 0 !important;}}";
            strHtml = strHtml + "</style>";
            strHtml = strHtml + "</head>";
            strHtml = strHtml + "<body class='body' style='padding:0; margin:0; display:block; background:#ffffff; -webkit-text-size-adjust:none' bgcolor='#ffffff'>";
            strHtml = strHtml + "<table align='center' cellpadding='0' cellspacing='0' width='100%' height='100%'>";
            strHtml = strHtml + "<tr><td align='center' valign='top' bgcolor='#ffffff'  width='100%'>";
            strHtml = strHtml + "<table cellspacing='0' cellpadding='0' width='100%'>";
            strHtml = strHtml + "<tr><td width='100%'><center>";
            strHtml = strHtml + "<table cellspacing='0' style='border-top:solid 1px #ccc;border-left:solid 1px #ccc;border-right:solid 1px #ccc;' cellpadding='0' width='600' class='w320'>";
            strHtml = strHtml + "<tr style='border-bottom:solid 2px #21beb4;'>";
            strHtml = strHtml + "<td valign='top' class='mobile-block mobile-no-padding-bottom mobile-center' width='270' style='background:;padding:10px 10px 10px 20px;'>";
            strHtml = strHtml + "<a href='#' style='text-decoration:none;'>";
            strHtml = strHtml + "<img src='images/logo2.png' width='' style='background: #fff; padding: 5px;' height='' alt='Your Logo'/>";
            strHtml = strHtml + "</a>";
            strHtml = strHtml + "</td>";
            strHtml = strHtml + "<td valign='top' class='mobile-block mobile-center' width='270' style='background:;padding:10px 15px 10px 10px'>";
            strHtml = strHtml + "<table border='0' cellpadding='0' cellspacing='0' class='mobile-center-block' align='right'>";
            strHtml = strHtml + "<tr>";
            strHtml = strHtml + "<td align='right'>";
            strHtml = strHtml + "<a href='http://bachat.masuautomation.com/' target='blank'>";
            strHtml = strHtml + "<img src='images/logo2.png'  width='30' height='30' alt='social icon'/>";
            strHtml = strHtml + "</a>";
            strHtml = strHtml + "</td>";
            strHtml = strHtml + "</tr>";
            strHtml = strHtml + "</table>";
            strHtml = strHtml + "</td>";
            strHtml = strHtml + "</tr>";
            strHtml = strHtml + "</table>";
            strHtml = strHtml + "</center>";
            strHtml = strHtml + "</td>";
            strHtml = strHtml + "</tr>";
            strHtml = strHtml + "<tr>";
            strHtml = strHtml + "<td style=''>";
            strHtml = strHtml + "<center>";
            strHtml = strHtml + "<table width='100%'>";
            strHtml = strHtml + "<tr>";
            strHtml = strHtml + "<td align='left' class='mobile-padding' style='text-align: justify;padding:0px 20px;    background: url(back2.jpg);'>";
            strHtml = strHtml + "<br/>";
            strHtml = strHtml + "<h2 align='center' style='color: #247b96;'>Your Order Id - " + CmpId + " Generated!</h2><br/>";
            strHtml = strHtml + "<p><b>Dear Customer,</b></p><br/>";
            strHtml = strHtml + "<br> We would like to thanks for showing interest in Sakav.<br>Below is your order details :-";
            strHtml = strHtml + "<br/>";
            
            DataTable dt = MDC.getDataTable("select * from OrderDetail where FK_OrderId=" + CmpId);
            strHtml+= "<table style='width:680px;' border='1'>";
            strHtml+= "<tr><td>Image Name</td><td><b>Item Name</b></td><td><b>Date</b></td><td><b>Order Id</b></td><td><b>Qty</b></td><td><b>Amount</b></td></tr>";
           // DataTable dt = MDC.getDataTable("select * from OrderDetail where EmailId='" + strEmail + "'");
            foreach (DataRow dr in dt.Rows)
            {
                strHtml+= "<tr><td><img src='ProductImage/" + dr["ImageName"].ToString() + "'></td>";
                strHtml+= "<td>" + dr["ItemName"] + "</td>";
                strHtml+= "<td>" + dr["OrderDate"] + "</td>";
                strHtml+= "<td>" + dr["FK_OrderId"] + "</td>";
                strHtml+= "<td>" + dr["Qty"].ToString() + "</td>";
                strHtml+= "<td>" + dr["Amount"].ToString() + "</td></tr>";
            }
            strHtml+= "</table><br/>";
            strHtml += "<p>Regards<br/>Team Sakav<br/>" +
                "       7224813717</p>";

            return strHtml;

            //strHtml = strHtml + "<td>" + Subject + "</td>";
            //strHtml = strHtml + "</tr>";
            //strHtml = strHtml + "<tr>";
            //strHtml = strHtml + "<th width='40%'>Module</th>";
            //strHtml = strHtml + "<td>" + Module + "</td>";
            //strHtml = strHtml + "</tr>";
            //strHtml = strHtml + "<tr>";
            //strHtml = strHtml + "<th>Sub Module</th>";
            //strHtml = strHtml + "<td>" + SubModule + "</td>";
            //strHtml = strHtml + "</tr>";
            //strHtml = strHtml + "<tr>";
            //strHtml = strHtml + "<th>Specific Function</th>";
            //strHtml = strHtml + "<td>" + SpecificFunction + "</td>";
            //strHtml = strHtml + "</tr>";
            //strHtml = strHtml + "<tr>";
            //strHtml = strHtml + "<th>Any Other Module</th>";
            //strHtml = strHtml + "<td>" + AnyOtherModule + "</td>";
            //strHtml = strHtml + "</tr>";
            //strHtml = strHtml + "<tr>";
            //strHtml = strHtml + "<th>Complaint Description</th>";
            //strHtml = strHtml + "<td>" + ComplaintDescirption + "</td>";
            //strHtml = strHtml + "</tr>";
            //strHtml = strHtml + "<tr>";
            //strHtml = strHtml + "<th>Attachment</th>";
            //strHtml = strHtml + "<td>" + Attachment + "</td>";
            //strHtml = strHtml + "</tr>";
            //strHtml = strHtml + "<tr>";
            //strHtml = strHtml + "<th>Issue Type</th>";
            //strHtml = strHtml + "<td>" + IssueType + "</td>";
            //strHtml = strHtml + "</tr>";
            //strHtml = strHtml + "</table>";
            //strHtml = strHtml + "<br><br>";
            //strHtml = strHtml + "</td>";
            //strHtml = strHtml + "</tr>";
            //strHtml = strHtml + "</table>";
            //strHtml = strHtml + "</center>";
            //strHtml = strHtml + "</td>";
            //strHtml = strHtml + "</tr>";
            //strHtml = strHtml + "<tr>";
            //strHtml = strHtml + "<td valign='top' style='background-color:#;'>";
            //strHtml = strHtml + "<center>";
            //strHtml = strHtml + "<table border='0' cellpadding='0' cellspacing='0' width='600' class='w320'  style='height:100%;'>";
            //strHtml = strHtml + "<tr>";
            //strHtml = strHtml + "<td valign='top' class='mobile-padding' style='color: #fff; background: rgb(62, 157, 215);'>";
            //strHtml = strHtml + "<table cellspacing='0' cellpadding='0' width='100%'>";
            //strHtml = strHtml + "<tr>";
            //strHtml = strHtml + "<td style='padding-right:20px; text-align:justify;'><br>";
            //strHtml = strHtml + "We understand your immediate need of having the issue being resolved. We assure you that your ticket will be acknowledged by us as soon as possible.";
            ////strHtml = strHtml + "<br>Meanwhile, we request you to kindly check your case status via the case URL below:";
            //strHtml = strHtml + "<br>";
            ////strHtml = strHtml + "Meanwhile, please feel free to check your case status via the case URL below.";
            ////strHtml = strHtml + "<p><a style='color: #eee;' href='#'>http://bachat.masuautomation.com/</a></p>";
            //strHtml = strHtml + "Thank you for your patience.<br>";
            //strHtml = strHtml + "<b>ELI HEALTH SOLUTIONS PVT. LTD.</b><br>";
            ////strHtml=strHtml+"<b><a style='color: #fff;' href='skype:pawanchouhan@elihealthemr.com?call'><img src='https://cdn3.iconfinder.com/data/icons/free-social-icons/67/skype_circle_color-512.png' width='21' height='21' style='border-radius: 100px;  border: solid 1px #ccc; margin-right:5px; background: #fff;width: 21px;";
            ////strHtml=strHtml+"float: left;' height='' alt='Your Logo'/>pawanchouhan@elihealthemr.com </a></b><br><br>
            //strHtml = strHtml + "<img src='images/logo2.png' width='' style='margin-top:5px; padding: 10px;background: #fff;' height='' alt='Your Logo'/><br>";
            //strHtml = strHtml + "<br>";
            //strHtml = strHtml + "</td>";
            //strHtml = strHtml + "</tr>";
            //strHtml = strHtml + "</table>";
            //strHtml = strHtml + "</td>";
            //strHtml = strHtml + "</tr>";
            //strHtml = strHtml + "</table>";
            //strHtml = strHtml + "</center>";
            //strHtml = strHtml + "</td>";
            //strHtml = strHtml + "</tr>";
            //strHtml = strHtml + "<tr>";
            //strHtml = strHtml + "<td style='background-color:;'>";
            //strHtml = strHtml + "<center>";
            //strHtml = strHtml + "<table border='0' cellpadding='0' cellspacing='0' width='600' class='w320' style='height:100%;color:#ffffff' bgcolor='#1f1f1f'>";
            //strHtml = strHtml + "<tr>";
            //strHtml = strHtml + "<td align='right' valign='middle' class='mobile-padding' style='font-size:12px;padding:20px; background-color:#1f1f1f; color:#ffffff; text-align:left;'>";
            //strHtml = strHtml + "<a style='color:#ffffff;'  href='#'>Contact Us</a>&nbsp;&nbsp;|&nbsp;&nbsp;";
            //strHtml = strHtml + "<a style='color:#ffffff;' href='#'>Facebook</a>&nbsp;&nbsp;|&nbsp;&nbsp;";
            //strHtml = strHtml + "<a style='color:#ffffff;' href='#'>Twitter</a>&nbsp;&nbsp;|&nbsp;&nbsp;";
            //strHtml = strHtml + "<a style='color:#ffffff;' href='#'>Support</a>";
            //strHtml = strHtml + "</td>";
            //strHtml = strHtml + "</tr>";
            //strHtml = strHtml + "</table>";
            //strHtml = strHtml + "</center>";
            //strHtml = strHtml + "</td>";
            //strHtml = strHtml + "</tr>";
            //strHtml = strHtml + "</table>";
            //strHtml = strHtml + "</td>";
            //strHtml = strHtml + "</tr>";
            //strHtml = strHtml + "</table>";
            //strHtml = strHtml + "</body>";
            //strHtml = strHtml + "</html>";
            //return strHtml;

        }

        protected void SendMail(string ToMailId, int CmpId)
        {
            try
            {
                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                //mail.From = new MailAddress("  abc@gmail.com", "Sakav");
                mail.From = new MailAddress("viruplywood2017@gmail.com", "Sakav");


                        mail.To.Add(ToMailId);

                        //<Product Code>-<Clent Code>-<Ticket # Ref. ID>-<Description (15 word)>
                        mail.Bcc.Add("techmasu@gmail.com");
                        mail.Subject = "Your Order Id #- " + CmpId + ", Thanks for shopping at Sakav"; 
                        mail.IsBodyHtml = true;

                        mail.Body =  getEmailTemplate(CmpId);
                        SmtpServer.Port = 587;
                        SmtpServer.Credentials = new System.Net.NetworkCredential("viruplywood2017@gmail.com", "8982895999");
                        SmtpServer.EnableSsl = true;

                        SmtpServer.Send(mail);

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if(Session["confirm"].ToString() == "no")
                {
                    MessageBox.Show("Please Confirm Order First!");
                    return;
                }
                using (var cnt = ConnectionManager.Inst.CreateNewConnection())
                {
                    cnt.Open();
                    int x = 0;
                    da = new SqlDataAdapter("Select * from OrderMaster where Sno=0", cnt);
                    DataSet ds = new DataSet();
                    DataRow drw;

                    da.Fill(ds);
                    drw = ds.Tables[0].NewRow();
                    x = GetMaxNo();
                    drw["Sno"] = x;
                    drw["FullName"] = txtFullName.Value;
                    drw["AddressType"] = txtAddressType.Value;
                    drw["MobileNo"] = txtMobileNo.Value;
                    drw["EmailId"] = txtEmailId.Value;
                    drw["Address"] = txtAddress.Value;
                    drw["LandMark"] = txtLandMark.Value;
                    drw["City"] = txtCity.Value;
                    drw["OrderDate"] = System.DateTime.Now;
                    ds.Tables[0].Rows.Add(drw);

                    SqlDataAdapter daOrder = new SqlDataAdapter("select * from OrderDetail where Sno=0", cnt);
                    DataSet dsOrder = new DataSet();
                    daOrder.Fill(dsOrder);
                    int i = 0;
                    DataRow drOrder;
                    DataTable dtLocal =(DataTable)Session["dtLocal"];

                    string svt = dtLocal.Rows.Count.ToString();
                        

                    foreach(DataRow dr in dtLocal.Rows)
                    {
                       drOrder = dsOrder.Tables[0].NewRow();
                       drOrder["FK_OrderId"] = x;
                       drOrder["ItemName"] = dr["ItemName"].ToString();
                       drOrder["ItemId"] =Convert.ToInt32(dr["ItemId"].ToString()) ;
                       drOrder["Qty"] = Convert.ToDecimal(dr["Qty"].ToString()) ;
                       drOrder["Amount"] = Convert.ToDecimal(dr["Amount"].ToString()) ;
                       drOrder["EmailId"] = txtEmailId.Value;
                       drOrder["OrderDate"] = System.DateTime.Now;

                        DataTable dtImage = MDC.getDataTable("select * from ItemMaster where PK_ItemId=" + Convert.ToInt32(dr["ItemId"].ToString()) + "");
                        if (dtImage.Rows.Count > 0)
                        {
                            drOrder["ImageName"] = dtImage.Rows[0]["ImageName"].ToString();
                        }
                        dsOrder.Tables[0].Rows.Add(drOrder);  
                    }
                    SqlCommandBuilder cmbs = new SqlCommandBuilder(daOrder);
                    daOrder.Update(dsOrder);

                    SqlCommandBuilder cmb = new SqlCommandBuilder(da);
                    da.Update(ds);
                    SendMail(txtEmailId.Value, x);
                    MessageBox.Show("Thanks for shopping, your order will be delivered shortly...");
                    txtMobileNo.Value = "";
                    txtLandMark.Value = "";
                    txtAddress.Value = "";
                    txtAddressType.Value = "";
                    txtCity.Value = "";
                    txtEmailId.Value = "";
                    txtFullName.Value = "";
                }
            }
            catch (Exception ex)
            {

            }

        }
    }
}



