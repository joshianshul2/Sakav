using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Data;
using System.Data.SqlClient; 

namespace NeuroGyan
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
          

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {
                cnt.Open();
                DataSet ds = new DataSet();

                SqlDataAdapter da = new SqlDataAdapter("Select * from TempOrderList where PK_OrderId=0",cnt);
                da.Fill(ds);
                Session["ds"] = ds;
            }

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}