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
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {

                cnt.Open();
                SqlDataAdapter da = new SqlDataAdapter("select * from Enquiry where PK_EnquiryId=0", cnt);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DataRow dr;
                dr = ds.Tables[0].NewRow();
                dr["MemberName"] = txtMember.Text;
                dr["MobileNo"] = txtMobileNo.Text;
                dr["Address"] = txtAddress.Text;
                dr["City"] = txtCity.Text;
                dr["MessTime"] = drpTime.Text;
                dr["JoiningDate"] = Convert.ToDateTime(txtDate.Text);
                dr["CreateDate"] = System.DateTime.Now;

                ds.Tables[0].Rows.Add(dr);
                SqlCommandBuilder cmb = new SqlCommandBuilder(da);
                da.Update(ds);
                txtMember.Text = "";
                txtMobileNo.Text = "";
                txtAddress.Text = "";
                txtCity.Text = "";
                txtDate.Text = "";
                drpTime.Text = "";


                MessageBox.Show("Eqnuiry has been saved. We will get back to you shortly...");

            }
        }

        protected void Img_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible == false)
            {
                Calendar1.Visible = true;
            }
            else
            {
                Calendar1.Visible = false;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = Convert.ToDateTime(Calendar1.SelectedDate.ToString()).ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }
    }
}