using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Drawing;


namespace BachatBazaar
{
    public partial class MemberList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (GlobalVariables.boolLogin == false)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                fillgird();
                btnAdd_Click(sender, e);
            }
        }

        private void fillgird()
        {

            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {
                cnt.Open();
                string str3 = "select * from Individual_App";
                //string str3 = "select PK_ID as ID ,CityName as City,DistrictName as District,StateName as State from CityMaster order by PK_ID ";
                SqlDataAdapter sda = new SqlDataAdapter(str3, cnt);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gvMenuTiming.DataSource = dt;
                gvMenuTiming.DataBind();
            }

        }
        public string maxnum(string tblname, string fldname)
        {
            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {

                cnt.Open();
                int maxno;

                string str = "select max(" + fldname + ") as maxno1 from " + tblname + " ";
                SqlCommand cmd = new SqlCommand(str, cnt);
                SqlDataReader rs = cmd.ExecuteReader();
                rs.Read();

                if (rs.HasRows)
                {

                    if (!Convert.IsDBNull(rs["maxno1"]))
                    {
                        maxno = Convert.ToInt16(rs["maxno1"]) + 1;


                    }
                    else

                        maxno = 1;

                    return Convert.ToString(maxno);
                }
                else

                    maxno = 1;

                return Convert.ToString(maxno);
            }


        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            GlobalVarNE.GlobalValueNE = "NEW";
            GlobalVarNE.GlobalBooleanNE = true;

            //btnSave.Enabled = true;






         //   txtID.Text = maxnum("MenuItemMaster", "PK_MenuId");
         //   txtMenuItem.Focus();
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
                    SqlDataAdapter daSql = new SqlDataAdapter("select * from Individual_App where PK_APP_ID=" + Convert.ToInt32(dealId), cnt);
                    DataSet dsSql = new DataSet(); ; // 
                    daSql.Fill(dsSql);
                    if (dsSql.Tables[0].Rows.Count > 0)
                    {
                       if (dsSql.Tables[0].Rows[0]["TypeName"].ToString()== "Form_D_Society")
                        {
                            Response.Redirect("Edit_Form_D_Society.aspx?Id="+dealId);
                        }
                        if (dsSql.Tables[0].Rows[0]["TypeName"].ToString() == "Form_D_Individual")
                        {
                            Response.Redirect("Edit_Form_D_Individual.aspx?Id=" + dealId);
                        }
                        if (dsSql.Tables[0].Rows[0]["TypeName"].ToString() == "Form_C_Society")
                        {
                            Response.Redirect("Edit_Form_C_Society.aspx?Id=" + dealId);
                        }
                        if (dsSql.Tables[0].Rows[0]["TypeName"].ToString() == "Form_C_Individual")
                        {
                            Response.Redirect("Edit_Form_C_Individual.aspx?Id=" + dealId);
                        }
                    }
                }

            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            bool IsTrue = false;
            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {
                foreach (GridViewRow gv in gvMenuTiming.Rows)
                {
                    LinkButton lblID = (LinkButton)gv.FindControl("lblSno");
                    CheckBox IsApproved = gv.FindControl("IsApproved") as CheckBox;


                    if (lblID.Text.Length > 0)
                    {
                        SqlDataAdapter daSql = new SqlDataAdapter("select * from Individual_App where PK_APP_ID=" + Convert.ToInt32(lblID.Text) + "", cnt);
                        DataSet dsSql = new DataSet();
                        daSql.Fill(dsSql);
                        foreach (DataRow dr in dsSql.Tables[0].Rows)
                        {
                            if (IsApproved.Checked  == true)
                            {
                                dr["IsApproved"] = true;
                                IsTrue = true; 
                            }
                        }
                        SqlCommandBuilder cmb = new SqlCommandBuilder(daSql);
                        daSql.Update(dsSql);

                    }
                }

                if(IsTrue ==true)
                {
                    fillgird();
                    MessageBox.Show("Record Updated Successfully...");
                }
            }
        }
    }
}