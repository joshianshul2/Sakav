using System;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;

namespace BachatBazaar
{

    public partial class Contact : System.Web.UI.Page
    {
        MyDataConnection MDC = new MyDataConnection();
        SqlDataAdapter da;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        //protected void btnSubmit_Click2(object sender, EventArgs e)
        //{
        //    DataTable dt = MDC.getDataTable("select * from UserMaster where UserName='" + txtUserName.Value + "' and Password='" + txtPaasword.Value + "' and UserType='admin'");
        //    if (dt.Rows.Count > 0)
        //    {
        //        Response.Redirect("AdminPanel.aspx");
        //    }
        //    else
        //    {
        //        Response.Redirect("Dashboard.aspx");
        //    }
        //}
        public string MainMenu()
        {
            int i = 1;
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select * from SubCategoryMaster where CategoryName='KITCHEN'");
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

        public string MainMenu1()
        {
            int i = 1;
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select * from SubCategoryMaster where CategoryName='Personal Care'");
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {

                using (var cnt = ConnectionManager.Inst.CreateNewConnection())
                {
                    cnt.Open();

                    da = new SqlDataAdapter("Select * from ContactUs where Sno=0", cnt);
                    DataSet ds = new DataSet();
                    DataRow drw;

                    da.Fill(ds);
                    drw = ds.Tables[0].NewRow();
                    drw["Name"] = txtName.Value;
                    drw["Email"] = txtEmail.Value;
                    drw["MobileNo"] = txtMobile.Value;
                    drw["Message"] = txtMessage.Value;
                    drw["Subject"] = txtSubject.Value;
                    ds.Tables[0].Rows.Add(drw);


                    SqlCommandBuilder cmb = new SqlCommandBuilder(da);
                    da.Update(ds);
                    MessageBox.Show("Record Saved Successfully...");



                }
            }
            catch(Exception ex)
            {

            }
        }
    }
}
