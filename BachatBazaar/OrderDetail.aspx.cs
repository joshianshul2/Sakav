

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
    public partial class OrderDetail : System.Web.UI.Page
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
                int detailId = 0;
                detailId = Convert.ToInt32(Session["OrderId"].ToString());
                cnt.Open();
                string str3 = "select * from OrderDetail where FK_OrderId="+detailId ;
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
            if (e.CommandName == "order")
            {
                LinkButton lnkOrder = (LinkButton)e.CommandSource;
                string dealId = lnkOrder.CommandArgument;
              //  Response.Redirect("Receipt.aspx?Id=" + dealId + "");

                string url = "Popup.aspx?Id="+dealId;
                string s = "window.open('" + url + "', 'popup_window', 'width=500,height=200,left=0,top=0,resizable=yes');";
                ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);

            }
                if (e.CommandName == "Show")
            {

                LinkButton lnkView = (LinkButton)e.CommandSource;
                string dealId = lnkView.CommandArgument;
                Session["complaintid"] = dealId;
                //Response.Redirect("ActiveUser.aspx?id=" + dealId, false);
                using (var cnt = ConnectionManager.Inst.CreateNewConnection())
                {
                    SqlDataAdapter daSql = new SqlDataAdapter("select * from OrderMaster where Sno=" + Convert.ToInt32(dealId), cnt);
                    DataSet dsSql = new DataSet(); ; // 
                    daSql.Fill(dsSql);
                    if (dsSql.Tables[0].Rows.Count > 0)
                    {

                        //  txtSno.Text = dsSql.Tables[0].Rows[0]["PK_ItemId"].ToString();
                        // drpCategory.Text = dsSql.Tables[0].Rows[0]["CategoryName"].ToString();
                        //drpSubCategory.Text = dsSql.Tables[0].Rows[0]["SubCategoryName"].ToString();
                        //txtFullName.Text = dsSql.Tables[0].Rows[0]["ItemName"].ToString();
                        //txtDiscount.Text = dsSql.Tables[0].Rows[0]["Discount"].ToString() + "";
                        //txtRate.Text = dsSql.Tables[0].Rows[0]["Rate"].ToString() + "";
                        //txtOfferRate.Text = dsSql.Tables[0].Rows[0]["OfferRate"].ToString() + "";
                        //txtQuantity.Text = dsSql.Tables[0].Rows[0]["Quantity"].ToString() + "";
                        ////
                        //chkIsCOD.Checked = Convert.ToBoolean(dsSql.Tables[0].Rows[0]["IsCOD"]);
                        //chkIsFreeDelivery.Checked = Convert.ToBoolean(dsSql.Tables[0].Rows[0]["IsFreeDel"]);
                        //chkIsFrontTop.Checked = Convert.ToBoolean(dsSql.Tables[0].Rows[0]["ShowFrontTop_3"]);
                        //chkIsFrontMiddle.Checked = Convert.ToBoolean(dsSql.Tables[0].Rows[0]["ShowFrontMid_3"]);
                        //chkIsFrontBottom3.Checked = Convert.ToBoolean(dsSql.Tables[0].Rows[0]["ShowFrontBottom_3"]);
                        //chkIsFrontPageSlider.Checked = Convert.ToBoolean(dsSql.Tables[0].Rows[0]["ShowFrontSlider_10"]);
                        //chkIsFrontLeftVerticle.Checked = Convert.ToBoolean(dsSql.Tables[0].Rows[0]["ShowLeftFront_5"]);
                        Response.Redirect("Receipt.aspx?Id="+dealId+"");
                    }
                }

            }
        }
       


               




            }
    

       
    }
