using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BachatBazaar
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (GlobalVariables.boolLogin == true)
            {
                //lnkLogin.Text = "LogOut"; 
            }
            else
            {
                //lnkLogin.Text = "Login";
            }
        }

        protected void lnkReg_Click(object sender, EventArgs e)
        {

        }

        protected void lnkLogin_Click(object sender, EventArgs e)
        {
            //if (lnkLogin.Text == "LogOut")
            //{
            //    GlobalVariables.boolLogin = false;
            //    lnkLogin.Text = "Login";

            //}
            //if (lnkLogin.Text == "Login")
            //{
            //    Response.Redirect("Login.aspx");  
            //}
        }
    }
}