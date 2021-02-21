

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
    public partial class OrderMaster : System.Web.UI.Page
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
                string str3 = "select * from OrderMaster";
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
                Response.Redirect("OrderDetail.aspx?Id=" + dealId, false);
              

            }
        }
       


               




            }
    

       
    }
