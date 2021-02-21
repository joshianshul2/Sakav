using System;
using System.Data;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mail;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BachatBazaar
{
    public partial class MyOrder : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds;
        DataRow drw;
        MyDataConnection MDC = new MyDataConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
             
                fillgird();
               
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
                    if (strText.Length<=0)
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
                    gvMenuTiming.DataSource = dt;
                    gvMenuTiming.DataBind();
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
        }
     
    }
