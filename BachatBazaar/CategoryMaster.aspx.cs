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
    public partial class CategoryMaster : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds;
        DataRow drw;
        protected void Page_Load(object sender, EventArgs e)
        {
            fillgird();
        }
        private void fillgird()
        {

            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {
                cnt.Open();
                string str3 = "select * from CategoryMaster";
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
                Session["complaintid"] = dealId;
                //Response.Redirect("ActiveUser.aspx?id=" + dealId, false);
                using (var cnt = ConnectionManager.Inst.CreateNewConnection())
                {
                //    SqlDataAdapter daSql = new SqlDataAdapter("select * from Individual_App where PK_APP_ID=" + Convert.ToInt32(dealId), cnt);
                //    DataSet dsSql = new DataSet(); ; // 
                //    daSql.Fill(dsSql);
                //    if (dsSql.Tables[0].Rows.Count > 0)
                //    {
                //        if (dsSql.Tables[0].Rows[0]["TypeName"].ToString() == "Form_D_Society")
                //        {
                //            Response.Redirect("Edit_Form_D_Society.aspx?Id=" + dealId);
                //        }
                //        if (dsSql.Tables[0].Rows[0]["TypeName"].ToString() == "Form_D_Individual")
                //        {
                //            Response.Redirect("Edit_Form_D_Individual.aspx?Id=" + dealId);
                //        }
                //        if (dsSql.Tables[0].Rows[0]["TypeName"].ToString() == "Form_C_Society")
                //        {
                //            Response.Redirect("Edit_Form_C_Society.aspx?Id=" + dealId);
                //        }
                //        if (dsSql.Tables[0].Rows[0]["TypeName"].ToString() == "Form_C_Individual")
                //        {
                //            Response.Redirect("Edit_Form_C_Individual.aspx?Id=" + dealId);
                //        }
                //    }
                }

            }
        }
        protected void lblUpload_Click(object sender, EventArgs e)
        {
            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {
                da = new SqlDataAdapter("Select * from CategoryMaster where PK_CategoryId=0", cnt);
                ds = new DataSet();
                da.Fill(ds);
                drw = ds.Tables[0].NewRow();
               
                    drw["CategoryName"] = txtCategoryName.Text ;
                    drw["IsActive"] = chkIsActive.Checked  ;
                    drw["UserName"] = Session["UserName"].ToString();
                    drw["CreateDate"] = System.DateTime.Now;

                    ds.Tables[0].Rows.Add(drw);

                    SqlCommandBuilder cmb = new SqlCommandBuilder(da);
                    da.Update(ds);
                    MessageBox.Show("Record Saved Successfully...");

                fillgird();
                



            }
        }
    }
}