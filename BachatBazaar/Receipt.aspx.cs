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
    public partial class Receipt : System.Web.UI.Page
    {
        string htmlStr;
        protected void Page_Load(object sender, EventArgs e)
        {
          //  GetReceipt();


        }

     
        public string GetReceipt()
        {
            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {
                int n = 1;
                decimal dsAmt = 0;
                int id = Convert.ToInt32(Request.QueryString["Id"].ToString());
                //int ids = Convert.ToInt32(Request.QueryString["Ids"].ToString());
                SqlDataAdapter da = new SqlDataAdapter("select * from OrderMaster where Sno=" + id + "", cnt);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    SqlDataAdapter daPrint = new SqlDataAdapter("select * from OrderDetail where FK_OrderId=" + id, cnt);
                    DataSet dsPrint = new DataSet();
                    daPrint.Fill(dsPrint);
                    if (dsPrint.Tables[0].Rows.Count > 0)
                    {
                        htmlStr += "<table width=100% border='1' height='100px'><tr><td align=center><Strong>Sakav</Strong></td></tr>";
                        htmlStr += "<tr><td align=center><Strong>Sada Colony, Raghogarh</Strong></td></tr>";
                        htmlStr += "<tr><td align=center><Strong>Mob.-9691357461,8982895999, Email-Id:   abc@gmail.com</Strong></td></tr>";
                        htmlStr += "</table>"; 
                        htmlStr += "<table width=100% border='1'><tr><td align=center><Strong>Receipt</Strong></td></tr></table>";
                        htmlStr += "<table width=100% border='1'><tr><td height='400px' valign='top'>";
                        htmlStr += "<table style='padding:2px' width=100%><tr><td><Strong>Receipt No :</Strong></td><td>" + id + "</td><td><Strong>Date:</Strong></td><td>"+Convert.ToDateTime(System.DateTime.Now).ToString("dd/MM/yyyy")+ "</td><td><Strong>Delivery Boy:</Strong></td><td>" + ds.Tables[0].Rows[0]["DispatchBy"].ToString() + "</td></tr>";
                        if (ds.Tables[0].Rows[0]["DispatchDate"].ToString().Length > 0)
                        {
                            htmlStr += "<tr><td><Strong>Name :</Strong></td><td>" + ds.Tables[0].Rows[0]["FullName"].ToString() + "</td><td><Strong>City :</Strong></td><td>" + ds.Tables[0].Rows[0]["City"].ToString() + "</td><td><Strong>Dispatch Date:</Strong></td><td>" + Convert.ToDateTime(ds.Tables[0].Rows[0]["DispatchDate"].ToString()).ToString("dd/MM/yyyy") + "</td></tr>";
                        }
                        else
                        {
                            htmlStr += "<tr><td><Strong>Name :</Strong></td><td>" + ds.Tables[0].Rows[0]["FullName"].ToString() + "</td><td><Strong>City :</Strong></td><td>" + ds.Tables[0].Rows[0]["City"].ToString() + "</td><td><Strong>Dispatch Date:</Strong></td><td></td></tr>";
                        }

                        htmlStr += "<tr><td><Strong>Address :</Strong></td><td colspan='3'>" + ds.Tables[0].Rows[0]["Address"].ToString() + "</td><td><Strong>Mobile No :</Strong></td><td colspan='2'>" + ds.Tables[0].Rows[0]["MobileNo"].ToString() + "</td></tr>";

                        htmlStr += "<table width=100% border='1'><tr><td align=left><Strong>SN.</Strong></td><td align=left><Strong>Item Name</Strong></td><td align=right><Strong>Qty</Strong></td><td align=right><Strong>Amount</Strong></td></tr>";
                        foreach (DataRow dr in dsPrint.Tables[0].Rows)
                        {
                            htmlStr += "<tr><td align=left valign='top'>"+n+"</td><td align=left valign='top'>"+dr["ItemName"]+ "</td><td align=right valign='top'>" + dsPrint.Tables[0].Rows[0]["Qty"].ToString() + "</td><td align=right valign='top'>" + dsPrint.Tables[0].Rows[0]["Amount"].ToString() + "</td></tr>";
                            dsAmt = dsAmt + Convert.ToDecimal(dsPrint.Tables[0].Rows[0]["Amount"].ToString());
                            n = n + 1;
                        }
                        
                        htmlStr += "<tr><td align='right' valign='top' colspan='2'>TOTAL :</td><td></td><td align=right valign='top'>" + dsAmt + "</td></tr>";
                        htmlStr += "</table>";
                        htmlStr += "<table width=100% border='1'><tr><td align='right' height='100px' valign='bottom' style='padding:2px'><Strong>Admin</Strong></td></tr></table>";

                    }
                }
            }
            return htmlStr;
        }
    }
}