using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BachatBazaar
{
    public partial class Popup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getData();
            }
        }
        protected void getData()
        {
            string Id = Request.QueryString["Id"].ToString();
            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from OrderMaster where Sno=" + Convert.ToInt32(Id) + "", cnt);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (ds.Tables[0].Rows[0]["DispatchDate"].ToString().Length>0)
                    { 
                        txtDispatchDate.Text = Convert.ToDateTime(ds.Tables[0].Rows[0]["DispatchDate"].ToString()).ToString("dd/MM/yyyy");
                    }
                    drpDeliveryBoy.Text = ds.Tables[0].Rows[0]["DispatchBy"].ToString() + "";
                    drpStatus.Text = ds.Tables[0].Rows[0]["Status"].ToString() + "";

                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string Id = Request.QueryString["Id"].ToString();
            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from OrderMaster where Sno=" + Convert.ToInt32(Id) + "", cnt);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    ds.Tables[0].Rows[0]["DispatchDate"] = txtDispatchDate.Text;
                    ds.Tables[0].Rows[0]["DispatchBy"] = drpDeliveryBoy.Text;
                    ds.Tables[0].Rows[0]["Status"] = drpStatus.Text;
                }
                SqlCommandBuilder cmb = new SqlCommandBuilder(da);
                da.Update(ds);
                MessageBox.Show("Record Saved Successfully...");
            }
        }
    }
}