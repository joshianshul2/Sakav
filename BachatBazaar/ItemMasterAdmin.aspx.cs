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
    public partial class ItemMasterAdmin : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds;
        DataRow drw;
        MyDataConnection MDC = new MyDataConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillCategory();
                fillgird();
                FillItem();
            }
        }
     
        protected void FillItem()
        {
            Int32 k = 0;
            string strUser = Session["user"].ToString(); 
            DataTable dt = MDC.getDataTable("select * from ItemMaster order by ItemName");
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    drpItemName.Items.Add(dt.Rows[k]["ItemName"].ToString());
                    k = k + 1;
                }

            }
        }
        protected void FillCategory()
        {
            Int32 k = 0;
            DataTable dt = MDC.getDataTable("select * from CategoryMaster order by CategoryName");
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                   
                        drpCategory.Items.Add(dt.Rows[k]["CategoryName"].ToString());
                        drpCategorySearch.Items.Add(dt.Rows[k]["CategoryName"].ToString());


                    k = k + 1;
                }

            }



        }
        protected void FillSubCategorySearch()
        {
            if (drpCategory.Text.Length > 0)
            {
                Int32 k = 0;
                DataTable dt = MDC.getDataTable("select * from subCategoryMaster  Where CategoryName='" + drpCategorySearch.Text + "'  order by SubCategoryName");
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {

                        drpSubCategorySearch.Items.Add(dt.Rows[k]["SubCategoryName"].ToString());

                        k = k + 1;
                    }
                }
            }



        }
        protected void FillSubCategory()
        {
            if (drpCategory.Text.Length >0)
            { 
            Int32 k = 0;
            DataTable dt = MDC.getDataTable("select * from subCategoryMaster  Where CategoryName='"+drpCategory.Text+"'  order by SubCategoryName");
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {

                        drpSubCategory.Items.Add(dt.Rows[k]["SubCategoryName"].ToString());

                        k = k + 1;
                    }
                }
            }



        }
        protected void FillAllCategory()
        {
            if (drpCategory.Text.Length > 0)
            {
                Int32 k = 0;
                DataTable dt = MDC.getDataTable("select * from subCategoryMaster order by SubCategoryName");
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {

                        drpSubCategory.Items.Add(dt.Rows[k]["SubCategoryName"].ToString());

                        k = k + 1;
                    }
                }
            }



        }
        private void fillgridItem()
        {

            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {
                cnt.Open();
                string str3 = "select * from ItemMaster where ItemName='"+drpItemName.Text+"' and IsActive=1";
                //string str3 = "select PK_ID as ID ,CityName as City,DistrictName as District,StateName as State from CityMaster order by PK_ID ";
                SqlDataAdapter sda = new SqlDataAdapter(str3, cnt);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gvMenuTiming.DataSource = dt;
                gvMenuTiming.DataBind();
            }

        }
        private void fillgird()
        {

            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {
                cnt.Open();
                string str3 = "select * from ItemMaster";
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
                    SqlDataAdapter daSql = new SqlDataAdapter("select * from ItemMaster where PK_ItemId=" + Convert.ToInt32(dealId), cnt);
                    DataSet dsSql = new DataSet(); ; // 
                    daSql.Fill(dsSql);
                    if (dsSql.Tables[0].Rows.Count > 0)
                    {
                        FillCategory();
                        FillAllCategory(); 
                        txtSno.Text = dsSql.Tables[0].Rows[0]["PK_ItemId"].ToString();
                        drpCategory.Text = dsSql.Tables[0].Rows[0]["CategoryName"].ToString();
                        drpSubCategory.Text = dsSql.Tables[0].Rows[0]["SubCategoryName"].ToString();
                        txtItemName.Text = dsSql.Tables[0].Rows[0]["ItemName"].ToString();
                        txtDiscount.Text = dsSql.Tables[0].Rows[0]["Discount"].ToString()+"";
                        txtRate.Text = dsSql.Tables[0].Rows[0]["Rate"].ToString() + "";
                        txtOfferRate.Text = dsSql.Tables[0].Rows[0]["OfferRate"].ToString() + "";
                        txtQuantity.Text = dsSql.Tables[0].Rows[0]["Quantity"].ToString() + "";
                        //
                        chkIsCOD.Checked = Convert.ToBoolean(dsSql.Tables[0].Rows[0]["IsCOD"]);
                        chkIsFreeDelivery.Checked= Convert.ToBoolean(dsSql.Tables[0].Rows[0]["IsFreeDel"]);
                        chkIsFrontTop.Checked= Convert.ToBoolean(dsSql.Tables[0].Rows[0]["ShowFrontTop_3"]);
                        chkIsFrontMiddle.Checked= Convert.ToBoolean(dsSql.Tables[0].Rows[0]["ShowFrontMid_3"]);
                        chkIsFrontBottom3.Checked = Convert.ToBoolean(dsSql.Tables[0].Rows[0]["ShowFrontBottom_3"]);
                        chkIsFrontPageSlider.Checked = Convert.ToBoolean(dsSql.Tables[0].Rows[0]["ShowFrontSlider_10"]);
                        chkIsFrontLeftVerticle.Checked = Convert.ToBoolean(dsSql.Tables[0].Rows[0]["ShowLeftFront_5"]);

                        chkIsFrontSingle.Checked = Convert.ToBoolean(dsSql.Tables[0].Rows[0]["ShowFrontSingle_1"]);
                        chkIsTop3.Checked = Convert.ToBoolean(dsSql.Tables[0].Rows[0]["ShowTop3"]);
                        chkIsSliderImage.Checked = Convert.ToBoolean(dsSql.Tables[0].Rows[0]["ShowSlider9"]);
                        chkIsLeftSideVerticle.Checked = Convert.ToBoolean(dsSql.Tables[0].Rows[0]["ShowLeft5"]);
                        txtPosition.Text = dsSql.Tables[0].Rows[0]["Position"].ToString();
                        chkIsActive.Checked= Convert.ToBoolean(dsSql.Tables[0].Rows[0]["IsActive"]);
                        //



                        imgItem.ImageUrl = "~/ProductImage/" + dsSql.Tables[0].Rows[0]["ImageName"].ToString();
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
                            }
                    }

            }
        }
        protected void lblUpload_Click(object sender, EventArgs e)
        {
            string ssql = "";
            bool boolFront = false;
            bool boolProd = false;
            try
            {
                using (var cnt = ConnectionManager.Inst.CreateNewConnection())
                {
                    string FileName = "";
                    string strMemberId = "";
                    FileName = imgItem.ImageUrl;
                    string[] authorsList;
                    if (FileName.Length > 0)
                    {
                        authorsList = FileName.Split('/');
                        foreach (string author in authorsList)
                        {
                            FileName = author;
                        }
                    }
                    if (FileUpload1.HasFile)
                    {
                        FileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                        //   strMemberId = Request.QueryString["Id"].ToString();
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("/ProductImage/" + FileName));
                        MailAttachment attach = new MailAttachment(Server.MapPath("/ProductImage/" + FileName));
                        imgItem.ImageUrl = "~/ProductImage/" + System.IO.Path.GetFileName(FileName);
                    }

                    if (txtFrontPosition.Text.Trim().Length > 0)
                    {
                        if(txtFrontPosition.Text.Length <=0)
                        {
                            txtFrontPosition.Text = "0";
                        }
                        if (txtPosition.Text.Length <= 0)
                        {
                            txtPosition.Text = "0";
                        }
                        if (chkIsFrontTop.Checked == true)
                        {
                            ssql = "select * from ItemMaster where ShowFrontTop_3=1 and FrontPosition=" + Convert.ToInt32(txtFrontPosition.Text) + "";
                            boolFront = true;
                        }
                        if (chkIsFrontMiddle.Checked == true)
                        {
                            ssql = "select * from ItemMaster where ShowFrontMid_3=1 and FrontPosition=" + Convert.ToInt32(txtFrontPosition.Text) + "";
                            boolFront = true;
                        }
                        if (chkIsFrontBottom3.Checked == true)
                        {
                            ssql = "select * from ItemMaster where ShowFrontBottom_3=1 and FrontPosition=" + Convert.ToInt32(txtFrontPosition.Text) + "";
                            boolFront = true;
                        }
                        if (chkIsFrontLeftVerticle.Checked == true)
                        {
                            ssql = "select * from ItemMaster where ShowLeftFront_5=1 and FrontPosition=" + Convert.ToInt32(txtFrontPosition.Text) + "";
                            boolFront = true;
                        }
                        if (chkIsFrontPageSlider.Checked == true)
                        {
                            ssql = "select * from ItemMaster where ShowFrontSlider_10=1 and FrontPosition=" + Convert.ToInt32(txtFrontPosition.Text) + "";
                            boolFront = true;
                        }
                        if (chkIsTop3.Checked == true)
                        {
                            ssql = "select * from ItemMaster where ShowTop3=1 and Position=" + Convert.ToInt32(txtPosition.Text) + "";
                            boolProd = true;
                        }
                        if (chkIsLeftSideVerticle.Checked == true)
                        {
                            ssql = "select * from ItemMaster where ShowLeft5=1 and Position=" + Convert.ToInt32(txtPosition.Text) + "";
                            boolProd = true;
                        }
                        if (chkIsSliderImage.Checked == true)
                        {
                            ssql = "select * from ItemMaster where ShowSlider9=1 and Position=" + Convert.ToInt32(txtPosition.Text) + "";
                            boolProd = true;
                        }

                        if (ssql.Length > 0)
                        {
                            DataSet dss = new DataSet();
                            SqlDataAdapter daa = new SqlDataAdapter(ssql, cnt);
                            daa.Fill(dss);
                            if (dss.Tables[0].Rows.Count > 0)
                            {
                                foreach (DataRow drws in dss.Tables[0].Rows)
                                {
                                    if (boolProd == true)
                                    {
                       //                 drws["Position"] = 0;
                                    }
                                    if (boolFront  == true)
                                    {
                                        drws["FrontPosition"] = 0;
                                    }
                                }
                                    boolProd = false;
                                    boolFront =false;
                                //
                                SqlCommandBuilder cmbs = new SqlCommandBuilder(daa);
                                daa.Update(dss);
                            }
                        }
                    }
                    if (txtSno.Text.Trim().Length > 0)
                    {
                        da = new SqlDataAdapter("Select * from ItemMaster where PK_ItemId=" + Convert.ToInt32(txtSno.Text) + "", cnt);
                        ds = new DataSet();
                        da.Fill(ds);
                        foreach (DataRow drw in ds.Tables[0].Rows)
                        {
                            drw["SubCategoryName"] = drpSubCategory.Text;
                            drw["CategoryName"] = drpCategory.Text;
                            drw["ItemName"] = txtItemName.Text;
                            drw["ImageName"] = FileName;
                            drw["Rate"] = txtRate.Text;
                            drw["OfferRate"] = txtOfferRate.Text;
                            drw["Discount"] = txtDiscount.Text;
                            drw["Quantity"] = txtQuantity.Text;
                            drw["IsActive"] = chkIsActive.Checked;
                            drw["CreateDate"] = System.DateTime.Now;

                            drw["IsCOD"] = chkIsCOD.Checked;
                            drw["IsFreeDel"] = chkIsFreeDelivery.Checked;
                            drw["ShowFrontTop_3"] = chkIsFrontTop.Checked;
                            drw["ShowFrontMid_3"] = chkIsFrontMiddle.Checked;
                            drw["ShowFrontBottom_3"] = chkIsFrontBottom3.Checked;
                            drw["ShowFrontSlider_10"] = chkIsFrontPageSlider.Checked;
                            drw["ShowLeftFront_5"] = chkIsFrontLeftVerticle.Checked;
                            drw["ShowFrontSingle_1"] = chkIsFrontSingle.Checked;
                            drw["ShowTop3"] = chkIsTop3.Checked;
                            drw["ShowSlider9"] = chkIsSliderImage.Checked;
                            drw["ShowLeft5"] = chkIsLeftSideVerticle.Checked;
                            if (txtPosition.Text.Length <= 0)
                            {
                                txtPosition.Text = "0";
                            }
                            drw["Position"] = txtPosition.Text;
                            if (txtFrontPosition.Text.Length <= 0)
                            {
                                txtFrontPosition.Text = "0";
                            }
                            drw["FrontPosition"] = txtFrontPosition.Text;

                        }
                    }
                    else
                    {
                        da = new SqlDataAdapter("Select * from ItemMaster where PK_ItemId=0", cnt);
                        ds = new DataSet();

                        da.Fill(ds);
                        drw = ds.Tables[0].NewRow();
                        if (txtQuantity.Text.Length <= 0)
                        {
                            txtQuantity.Text = "0";
                        }
                        if (txtDiscount.Text.Length <= 0)
                        {
                            txtDiscount.Text = "0";
                        }
                        drw["SubCategoryName"] = drpSubCategory.Text;
                        drw["CategoryName"] = drpCategory.Text;
                        drw["ItemName"] = txtItemName.Text;
                        drw["ImageName"] = FileName;
                        drw["Rate"] = txtRate.Text;
                        drw["OfferRate"] = txtOfferRate.Text;
                        drw["Discount"] = txtDiscount.Text;
                        drw["Quantity"] = txtQuantity.Text;
                        drw["IsActive"] = chkIsActive.Checked;
                        drw["CreateDate"] = System.DateTime.Now;


                        drw["IsCOD"] = chkIsCOD.Checked;
                        drw["IsFreeDel"] = chkIsFreeDelivery.Checked;
                        drw["ShowFrontTop_3"] = chkIsFrontTop.Checked;
                        drw["ShowFrontMid_3"] = chkIsFrontMiddle.Checked;
                        drw["ShowFrontBottom_3"] = chkIsFrontBottom3.Checked;
                        drw["ShowFrontSlider_10"] = chkIsFrontPageSlider.Checked;
                        drw["ShowLeftFront_5"] = chkIsFrontPageSlider.Checked;
                        drw["ShowFrontSingle_1"] = chkIsFrontSingle.Checked;
                        drw["ShowTop3"] = chkIsTop3.Checked;
                        drw["ShowSlider9"] = chkIsSliderImage.Checked;
                        drw["ShowLeft5"] = chkIsLeftSideVerticle.Checked;

                        if (txtPosition.Text.Length <= 0)
                        {
                            txtPosition.Text = "0";
                        }
                        drw["Position"] = txtPosition.Text;

                        if (txtFrontPosition.Text.Length <= 0)
                        {
                            txtFrontPosition.Text = "0";
                        }
                        drw["FrontPosition"] = txtFrontPosition.Text;
                    }


                    if (txtSno.Text.Trim().Length <= 0)
                    {
                        ds.Tables[0].Rows.Add(drw);
                    }
                    SqlCommandBuilder cmb = new SqlCommandBuilder(da);
                    da.Update(ds);
                    MessageBox.Show("Record Saved Successfully...");
                    fillgird();






                }
            }
            catch(Exception ex)
            {

            }
        }

        protected void drpCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillSubCategory();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            
            fillgirdSearch();
        }
        private void fillgirdSearch()
        {

            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {
                cnt.Open();
                string str3 = "";
                if (chkPostion.Checked == true)
                {
                    str3 = "select * from ItemMaster Where "+ DrpPosition.Text.Trim()  + "=1 and CategoryName='" + drpCategorySearch.Text + "' and SubCategoryName='" + drpSubCategorySearch.Text + "'";
                }
                else
                {
                   str3 = "select * from ItemMaster Where CategoryName='" + drpCategorySearch.Text + "' and SubCategoryName='" + drpSubCategorySearch.Text + "'";
                }
                if(drpCategorySearch.Text =="SELECT" && drpSubCategorySearch.Text == "SELECT" && chkPostion.Checked ==true)
                {
                   str3 = "select* from ItemMaster Where "+ DrpPosition.Text.Trim()  + " = 1";
                }
                if (str3.Length > 0)
                {
                    //string str3 = "select PK_ID as ID ,CityName as City,DistrictName as District,StateName as State from CityMaster order by PK_ID ";
                    SqlDataAdapter sda = new SqlDataAdapter(str3, cnt);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    gvMenuTiming.DataSource = dt;
                    gvMenuTiming.DataBind();
                }
            }

        }

        protected void drpCategorySearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillSubCategorySearch();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            using (var cnt = ConnectionManager.Inst.CreateNewConnection())
            {
           
                foreach (GridViewRow gv in gvMenuTiming.Rows)
                {
                    LinkButton lblItemId = (LinkButton)gv.FindControl("lblItemId");
                    CheckBox IsApproved = gv.FindControl("chkIsActive") as CheckBox;
                    CheckBox chkIsCOD= gv.FindControl("chkIsCOD") as CheckBox;



                    if (lblItemId.Text.Length > 0)
                    {
                        //DataTable dt = MDC.getDataTable("select * from ItemMasterSakav where PK_ItemId=" + Convert.ToInt32(lblItemId.Text) + "");
                        SqlDataAdapter daSql = new SqlDataAdapter("select * from ItemMaster where PK_ItemId=" + Convert.ToInt32(lblItemId.Text) + "", cnt);
                        DataSet dsSql = new DataSet();
                        daSql.Fill(dsSql);
                        foreach (DataRow dr in dsSql.Tables[0].Rows)
                        {
                            if (IsApproved.Checked == true)
                            {
                                dr["IsActive"] = true;
                            }
                            else
                            {
                                dr["IsActive"] = false;
                            }
                        }

                        SqlCommandBuilder cmb = new SqlCommandBuilder(daSql);
                        daSql.Update(dsSql);

                    }
                }
                MessageBox.Show("Record Updated Successfully...");
                fillgird();
            }
            }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtDiscount.Text = "0";
            txtItemName.Text = "";
            txtOfferRate.Text = "0";
            txtQuantity.Text = "0";
            txtRate.Text = "0";
            txtSno.Text = "";
            drpCategory.Text = "SELECT";
            drpSubCategory.Text = "SELECT";
            imgItem.ImageUrl = "";
           
        }

        protected void drpItemName_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            if (drpItemName.Text.Trim().Length > 0 && chkPostion.Checked ==true)
            {

            }
           
                if (drpItemName.Text.Trim().Length > 0)
            {
                fillgridItem();
            }
        }
    }
}