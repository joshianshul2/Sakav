using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace BachatBazaar
{
    public partial class DashboardCustomer : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds;
        DataRow drw;
        MyDataConnection MDC = new MyDataConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

             //   fillgird();

            }
        }

        private void fillgird()
        {

            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {
                cnt.Open();
                string strText = "";
                string strMob = "";
                string str3 = "";
                if (!string.IsNullOrEmpty(Session["email"].ToString()) || !string.IsNullOrEmpty(Session["MobileNo"].ToString()))
                {
                    strText = Session["email"].ToString() + "";
                    if (strText.Length <= 0)
                    {
                        strMob = Session["MobileNo"].ToString() + "";
                    }
                }

                if (strText.Length > 0)
                {
                    str3 = "select * from OrderMaster where EmailId='" + strText + "'";
                }
                else
                {
                    str3 = "select * from OrderMaster where MobileNo='" + strMob + "'";
                }
                //string str3 = "select PK_ID as ID ,CityName as City,DistrictName as District,StateName as State from CityMaster order by PK_ID ";
                SqlDataAdapter sda = new SqlDataAdapter(str3, cnt);
                DataTable dt = new DataTable();
                sda.Fill(dt);
           //     gvMenuTiming.DataSource = dt;
           //     gvMenuTiming.DataBind();
            }


        }
        protected void gvMenuTiming_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Show")
            {

                LinkButton lnkView = (LinkButton)e.CommandSource;
                string dealId = lnkView.CommandArgument;
                Session["OrderId"] = dealId;
                if (Session["usertype"].ToString() == "admin")
                {
                    Response.Redirect("OrderDetail.aspx?Id=" + dealId, false);
                }
                else
                {
                    Response.Redirect("MyOrderDetail.aspx?Id=" + dealId, false);
                }
            }

        }

        public string GetOrder()
        {
            string htmlStr = "";
            string strEmail = Session["email"].ToString();
            htmlStr = "<table style='width:700px;' border='1'>";
            htmlStr += "<tr><td><b>Image</b></td><td><b>Date</b></td><td><b>Order Id</b></td><td><b>Name</b></td><td><b>Qty</b></td><td><b>Amount</b></td></tr>";
            DataTable dt=MDC.getDataTable("select * from OrderDetail where EmailId='"+strEmail+"'"); 
            foreach(DataRow dr in dt.Rows)
            {
                htmlStr += "<tr><td><a href='Receipt.aspx?Id="+ dr["FK_OrderId"].ToString()+"'><img src='ProductImage/" + dr["ImageName"].ToString() + "' height='165' width='115'></a></td><td>" + Convert.ToDateTime(dr["OrderDate"].ToString()).ToString("dd/MM/yyyy") + "</td><td>" + dr["FK_OrderId"].ToString() + "</td>";
                htmlStr += "<td>" + dr["ItemName"] + "</td>";
                htmlStr += "<td>" + dr["Qty"].ToString() + "</td>";
                htmlStr += "<td>" + dr["Amount"].ToString() + "</td></tr>";
            }
            return htmlStr;
        }
    }
}