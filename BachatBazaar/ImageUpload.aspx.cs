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
    public partial class ImageUpload : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds;
        DataRow drw;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lblUpload_Click(object sender, EventArgs e)
        {
            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {
                da = new SqlDataAdapter("Select * from ProductList where PK_ImageId=0", cnt);
                da.Fill(ds);
                drw = ds.Tables[0].NewRow();
                if (FileUpload1.HasFile)
                {
                    string FileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                    string strMemberId = Request.QueryString["Id"].ToString();
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("/ImageFront/" + FileName));
                    MailAttachment attach = new MailAttachment(Server.MapPath("/ImageFront/" + FileName));

                    drw["ImageName"] = FileName;
                    drw["CreateDate"] = System.DateTime.Now;
                    if (strMemberId.Length > 0)
                    {
                        drw["MemberId"] = Convert.ToInt32(strMemberId);
                    }
                    ds.Tables[0].Rows.Add(drw);

                    SqlCommandBuilder cmb = new SqlCommandBuilder(da);
                    da.Update(ds);
                    MessageBox.Show("Image Uploaded Successfully...");


                }




            }
        }
    }
}