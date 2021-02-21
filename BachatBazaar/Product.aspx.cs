using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;

namespace BachatBazaar
{

    public partial class Product : System.Web.UI.Page
    {
        MyDataConnection MDC = new MyDataConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string PelFunction(string ImageId)
        {
            string x = "";
            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from ItemMaster where PK_ItemId=" + Convert.ToInt32(ImageId) + "",cnt);
                DataSet dst = new DataSet();
                da.Fill(dst);

                if (dst.Tables[0].Rows.Count > 0)
                {
                    DataSet dss = new DataSet();

                    DataSet dsOrder = new DataSet();
                    dss = (DataSet)HttpContext.Current.Session["ds"];
                    dsOrder = dss.Copy();
                    DataRow dr;
                    dr = dsOrder.Tables[0].NewRow();
                    dr["ImageId"] = ImageId;
                    dr["ImageName"] = dst.Tables[0].Rows[0]["ImageName"].ToString();
                    dr["Qty"] = 1;
                    dr["Rate"] = dst.Tables[0].Rows[0]["Rate"].ToString(); ;
                    dr["SaveRate"] = dst.Tables[0].Rows[0]["OfferRate"].ToString(); 
                    dr["Category"] = dst.Tables[0].Rows[0]["CategoryName"].ToString();
                    dsOrder.Tables[0].Rows.Add(dr);
                    HttpContext.Current.Session["ds"] = dsOrder;
                    return x;
                }
            }
            return x;
        }


        public string GetTops()
        {
            string strHtml = "";
            int k = 1;
            string txt = Request.QueryString["txt"].ToString(); 
            //DataTable dt = MDC.getDataTable("Select * from ProductList where Category='KITCHEN'");
            //DataTable dt = MDC.getDataTable("Select * from ItemMaster where SubCategoryName='"+txt+ "' and IsActive=1 and ShowTop3=1 and Position>0");
            DataTable dt = MDC.getDataTable("Select * from ItemMaster where SubCategoryName='" + txt + "' and IsActive=1 and ShowTop3=1");
            //DataTable dt = MDC.getDataTable("select* from ItemMaster where ShowSlider9 = 1 and Position> 0 and SubCategoryName='" + txt + "' and IsActive=1"
            //  DataTable dt = MDC.getDataTable("Select * from ItemMaster where SubCategoryName='" + txt + "'");

            // strHtml = "<div class='wrapper'>";


            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    if (Convert.ToBoolean(dr["ShowTop3"]) == true)
                    {
                        //
                        //  strHtml = "<div class='agileinfo-ads-display col-md-9 w3l-rightpro'>";
                        // strHtml += "<div class='wrapper'>";
                        //	<!-- first section -->
//                        if (k == 1 || k == 4 || k == 8 || k == 12 || k == 16 || k == 20 || k == 24 || k == 28 || k == 32 || k == 36 || k == 40 || k == 44 || k == 48 || k == 52)
                            if (k == 1 || k == 4 || k == 7 || k == 10 || k == 13 || k == 16 || k == 19 || k == 22 || k == 25 || k == 28 || k == 31 || k == 34 || k == 37 || k == 40|| k == 43 || k == 46 || k == 49 || k == 52 || k == 55 || k == 58 || k == 61 || k == 64 || k == 67 || k == 70 || k == 73|| k == 76 || k == 79 || k == 82 || k == 85 || k == 88 || k == 91 || k == 94 || k == 97 || k == 100
                       || k == 103 || k == 106 || k == 109 || k == 112)

                            {
                                strHtml += "<div class='product-sec1'>";
                        }
                        strHtml += "<div class='col-xs-4 product-men'>";
                        strHtml += "<div class='men-pro-item simpleCart_shelfItem'>";
                        strHtml += "<div class='men-thumb-item'>";
                        //strHtml += "<img src = 'images/k" + k + ".jpg' alt=''>";
                        if (dr["ImageName"].ToString().Length > 0)
                        {
                            strHtml += "<img src = 'ProductImage/" + dr["ImageName"].ToString().Trim() + "' alt='' height='166' width='150'>";
                        }
                        strHtml += "<div class='men-cart-pro'>";
                        strHtml += "<div class='inner-men-cart-pro'>";

                        //strHtml += "<a href = 'Single.aspx?Id=" + dr["PK_ImageId"].ToString() + "' class='link-product-add-cart'>Quick View</a>";
                        strHtml += "<a href = 'Single.aspx?Id=" + dr["PK_ItemId"].ToString() + "' class='link-product-add-cart'>Quick View</a>";
                        //strHtml += "<a href = 'Single.aspx?Id=" + dt.Rows[0]["PK_ImageId"].ToString() + "' class='link-product-add-cart'>Quick View</a>";
                        strHtml += "</div>";
                        strHtml += "</div>";
                        strHtml += "<span class='product-new-top'>"+ dr["Discount"].ToString() +"%</span>";
                        strHtml += "</div>";
                        strHtml += "<div class='item-info-product'>";
                        strHtml += "<h4>";
                        strHtml += "<a href = 'Single.aspx?Id=" + dr["PK_ItemId"].ToString() + "'>" + dr["ItemName"].ToString() + "</a>";
                        // strHtml += "<a href = 'single.html'>" + dt.Rows[0]["ImageHeading"].ToString() + "</a>";

                        strHtml += "</h4>";
                        strHtml += "<div class='info-product-price'>";
                        strHtml += "<span class='item_price'><i style='padding-left:20px;' class='fa fa-inr'></i>&nbsp;&nbsp;" + dr["OfferRate"].ToString() + "</span>";
                        // strHtml += "<span class='item_price'>" + dt.Rows[0]["Rate"].ToString() + "</span>";

                        //strHtml += "<del>" + dr["SaveRate"].ToString() + "</del>";
                        strHtml += "<i style='padding-left:20px;' class='fa fa-inr'></i><del>" + dr["Rate"].ToString() + "</del>";
                        strHtml += "</div>";
                        strHtml += "<div class='snipcart-details top_brand_home_details item_add single-item hvr-outline-out'>";
                        strHtml += "<form action = '#' method='post'>";
                        strHtml += "<fieldset>";
                        strHtml += "<input type = 'hidden' name='cmd' value='_cart' />";
                        strHtml += "<input type = 'hidden' name='add' value='1' />";
                        strHtml += "<input type = 'hidden' name='business' value=''/>";
                        //strHtml += "<input type = 'hidden' name='item_name' value='" + dr["ImageHeading"].ToString() + "' />";

                        strHtml += "<input type = 'hidden' name='item_name' value='" + dr["ItemName"].ToString() + "' />";
                        //strHtml += "<input type = 'hidden' name='item_name' value='" + dt.Rows[0]["ImageHeading"].ToString() + "' />";
                        strHtml += "<input type = 'hidden' name='amount' value='" + dr["OfferRate"].ToString() + "' />";

                        // strHtml += "<input type = 'hidden' name='amount' value='" + dt.Rows[0]["Rate"].ToString() + "' />";

                        //strHtml += "<input type = 'hidden' name='discount_amount' value='" + dr["Discount"].ToString() + "' />";
                        strHtml += "<input type = 'hidden' name='discount_amount' value='0' />";
                        //strHtml += "<input type = 'hidden' name='discount_amount' value='" + dt.Rows[0]["Discount"].ToString() + "' />";

                        strHtml += "<input type = 'hidden' name='currency_code' value='INR' />";
                        strHtml += "<input type = 'hidden' name='return' value=' ' />";
                        strHtml += "<input type = 'hidden' name='cancel_return' value=' '/>";
                       // strHtml += "<input type = 'submit' name='submit' value='Add to cart' onclick='getData("+dr["PK_ItemId"] + ",'" + dr["ItemName"].ToString() + "','Top','" + dr["Rate"].ToString() + "','" + dr["OfferRate"].ToString() + "','" + dr["SubCategoryName"].ToString() + "')' class='button'/>";
                        strHtml += "<input type = 'submit' name='submit' value='Add to cart' onclick='PelData(" + dr["PK_ItemId"] + ");' class='button'/>";

                        strHtml += "</fieldset>";
                        strHtml += "</form>";
                        strHtml += "</div>";
                        strHtml += "</div>";
                        strHtml += "</div>";
                        strHtml += "</div>";
                        if (k == 3 || k == 6 || k == 9 || k == 12 || k == 15 || k == 18 || k == 21 || k == 24 || k == 27 || k == 30 || k == 33 || k == 36 || k == 39 || k == 42 || k == 45 || k == 48 || k == 51
                            || k == 54 || k == 57 || k == 60 || k == 63 || k == 66 || k == 69 || k == 72 || k == 75 || k == 78
                            || k == 81 || k == 84 || k == 87 || k == 90 || k == 93 || k == 96 || k == 99 || k == 102 || k == 105 || k == 108 || k == 111 || k == 114
                            )
                        {

                            strHtml += "<div class='clearfix'></div>";
                            strHtml += "</div>";
                        }
                        //if (k == 12)
                        //{
                        //    break;
                        //}
                    }
                    k = k + 1;
                }
                //if (k%5==0)
                //{
                //    strHtml += "<div class=''>";
                //}

                //
            }
            //<!-- //4th section  -->

            //  strHtml += "</div>";
            //strHtml += "</div>";
            return strHtml;
        }
        public string MainMenu1()
        {
            int i = 1;
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select distinct SubCategoryName from SubCategoryMaster where CategoryName='Personal Care' and IsActive=1");
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
        public string MainMenu()
        {
            int i = 1;
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select SubCategoryName from SubCategoryMaster where CategoryName='KITCHEN' and IsActive=1");
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
        public string GetSlider()
        {
            string strHtml = "";
            int s = 1;
            //DataTable dt = MDC.getDataTable("Select * from ProductList where Category='KITCHEN'");
            string txt = Request.QueryString["txt"].ToString();

            //DataTable dt = MDC.getDataTable("Select * from ItemMaster where SubCategoryName='" + txt + "' and IsActive=1");
            //DataTable dt = MDC.getDataTable("select* from ItemMaster where ShowSlider9 = 1 and Position> 0 and SubCategoryName='" + txt + "' and IsActive=1");
            DataTable dt = MDC.getDataTable("select* from ItemMaster where ShowSlider9 = 1 and SubCategoryName='" + txt + "' and IsActive=1");

            if (dt.Rows.Count > 0)
            {
                //strHtml = "<div class='content-bottom-in'>";
                foreach (DataRow dr in dt.Rows)
                {

                    if (Convert.ToBoolean(dr["ShowSlider9"]) == true)
                    {
                       //strHtml += "<ul id ='flexiselDemo1'>";
                        strHtml += "<li>";
                        strHtml += "<div class='w3l-specilamk'>";
                        strHtml += "<div class='speioffer-agile'>";
                        strHtml += "<a href = 'Single.aspx?Id=" + dr["PK_ItemId"].ToString() + "'>";
                        //strHtml += "<img src = 'images/s" + s + ".jpg' alt=''>";
                        strHtml += "<img src = 'ProductImage/" + dr["ImageName"].ToString() + "' alt='' height='166' width='150'>";
                        strHtml += "</a>";
                        strHtml += "</div>";
                        strHtml += "<div class='product-name-w3l'>";
                        strHtml += "<h4>";
                        strHtml += "<a href = 'Single.aspx?Id=" + dr["PK_ItemId"].ToString() + "'>" + dr["ItemName"].ToString() + "</a>";
                        strHtml += "</h4>";
                        strHtml += "<div class='w3l-pricehkj'>";
                        strHtml += "<h6><i class='fa fa-inr'></i>&nbsp;" + dr["Rate"].ToString() + "</h6>";
                        strHtml += "<p>Offer &nbsp;<i class='fa fa-inr'></i>&nbsp;" + dr["OfferRate"].ToString() + "</p>";
                        strHtml += "</div>";
                        strHtml += "<div class='snipcart-details top_brand_home_details item_add single-item hvr-outline-out'>";
                        strHtml += "<form action = '#' method='post'>";
                        strHtml += "<fieldset>";
                        strHtml += "<input type = 'hidden' name='cmd' value='_cart' />";
                        strHtml += "<input type = 'hidden' name='add' value='1' />";
                        strHtml += "<input type = 'hidden' name='business' value=' ' />";
                        strHtml += "<input type = 'hidden' name='item_name' value='" + dr["ItemName"].ToString() + "' />";
                        strHtml += "<input type = 'hidden' name='amount' value='" + dr["Rate"].ToString() + "' />";
                        strHtml += "<input type = 'hidden' name='discount_amount' value='"+ dr["Discount"].ToString() +"' />";
                        strHtml += "<input type = 'hidden' name='currency_code' value='INR' />";
                        strHtml += "<input type = 'hidden' name='return' value = '' />";
                        strHtml += "<input type = 'hidden' name='cancel_return' value = '' />";
                        strHtml += "<input type = 'submit' name='submit' value='Add to cart' class='button' />";
                        strHtml += "</fieldset>";
                        strHtml += "</form>";
                        strHtml += "</div>";
                        strHtml += "</div>";
                        strHtml += "</div>";
                        strHtml += "</li>";

                        s = s + 1;
                        //if (s == 10)
                        //{
                        //    break;
                        //}
                    }
                }
            }
            return strHtml;
            //}
        }

        public string GetLeft()
        {
            string strHtml = "";
            int d = 1;
            //DataTable dt = MDC.getDataTable("Select * from ProductList where Category='KITCHEN'");

            string txt = Request.QueryString["txt"].ToString();

            DataTable dt = MDC.getDataTable("Select * from ItemMaster where SubCategoryName='" + txt + "' and IsActive=1 and ShowLeft5=1");

           
            if (dt.Rows.Count > 0)
            {

                foreach (DataRow dr in dt.Rows)
                {
                    if (Convert.ToBoolean(dr["ShowLeft5"]) == true)
                    {

                        strHtml += "<div class='special-sec1'>";
                        strHtml += "<div class='col-xs-4 img-deals'>";
                        strHtml += "&nbsp;&nbsp;&nbsp;<img src = 'ProductImage/" + dr["ImageName"].ToString()  + "' alt=''  height='80' width='60'>";
                        strHtml += "</div>";
                        strHtml += "<div class='col-xs-8 img-deal1'>";
                        strHtml += "<h3><a href = 'Single.aspx?Id=" + dr["PK_ItemId"].ToString() + "'>" + dr["ItemName"].ToString() + "<br/><br/>Offer Rate-" + dr["OfferRate"].ToString() + "</a></h3>";
                        strHtml += "<h6><i class='fa fa-inr'></i>" + dr["Rate"].ToString() + "</h6>";
                        strHtml += "<span class='product-new-top' style='margin-top:80px;'>" + dr["Discount"].ToString() + "%</span>";

                        strHtml += "</div><br/>";
                        //strHtml += "<span class='product-new-top'>" + dr["Discount"].ToString() + "%</span>";

                        strHtml += "<div class='clearfix'></div>";
                        strHtml += "</div><br/>";

                        d = d + 1;
                        //if (d == 8)
                        //{
                        //    break;
                        //}
                    }
                }
            }
            return strHtml;
        }


    }
}