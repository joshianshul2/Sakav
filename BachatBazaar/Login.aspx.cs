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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hdDateVal.Value = "ops";
                Session["username"] = "";
               // getCount();
            //    txtMessDate.Text = Convert.ToDateTime(System.DateTime.Now.ToString()).ToString("dd/MM/yyyy");   
            }
         
        }

       

   
        protected void btnLogin_Click(object sender, EventArgs e)
        {

            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {

                cnt.Open();

              

                if (txtUserName.Text == "" || txtPassword.Text == "")
                {
                    MessageBox.Show("Please enter user id/password");
                    return;
                }
                if (drpLoginType.Text == "SELECT")
                {
                    MessageBox.Show("Please Select Login Type!");
                    return;
                }

                //if (drpLoginWith.SelectedValue != "0")
                //{

                string str = "";
                //                    string str = "select * from HospitalMaster where UserName='" + txtUserName.Text.Trim() + "' and Password = '" + txtPassword.Text.Trim() + "' and UserType=" + Convert.ToInt32(drpLoginWith.SelectedValue) + "";
                if (drpLoginType.SelectedValue == "SAKAV")
                {
                   str = "select * from UserMaster where UserName='" + txtUserName.Text.Trim() + "' and Password = '" + txtPassword.Text.Trim() + "'";
                }
                else 
                {
                    str = "select * from Individual_APP where UserName='" + txtUserName.Text.Trim() + "' and Password = '" + txtPassword.Text.Trim() + "' and IsApproved=1";
                }
                SqlCommand cmd = new SqlCommand(str, cnt);
                SqlDataReader rs = cmd.ExecuteReader();
                if (rs.HasRows)
                {
                   GlobalVariables.boolLogin = true;
                
                    rs.Read();
                    if (drpLoginType.SelectedValue == "SAKAV")
                    {
                        Response.Redirect("MemberList.aspx");
                    }
                    else
                    {
                        Response.Redirect("MyDashboard.aspx");
                    }
                }
                else
                {
                    MessageBox.Show("Invalid Username or Password");
                    GlobalVariables.boolLogin = false;
                    GlobalVariables.strDate = "";
                    GlobalVariables.strShift = "";  
                }
                // }
            }
        }

       
    }
}