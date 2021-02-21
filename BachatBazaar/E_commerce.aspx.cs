using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace BachatBazaar
{
    public partial class E_commerce : System.Web.UI.Page
    {
        public int Id=0;
        //topLV1
        public string strTopLV1ImageHeading = "";
        public string strTopLV1Rate = "";
        public string strTopLV1Disc = "";
        //New
        public string strTopLV1SaveRate = "";
        public string strTopLV1Category = "";

        //topLV2
        public string strTopLV2ImageHeading = "";
        public string strTopLV2Rate = "";
        public string strTopLV2Disc = "";
        public string strTopLV2SaveRate = "";
        public string strTopLV2Category = "";

        //topLV3
        public string strTopLV3ImageHeading = "";
        public string strTopLV3Rate = "";
        public string strTopLV3Disc = "";
        public string strTopLV3SaveRate = "";
        public string strTopLV3Category = "";


        //topLV4
        public string strTopLV4ImageHeading = "";
        public string strTopLV4Rate = "";
        public string strTopLV4Disc = "";
        public string strTopLV4SaveRate = "";
        public string strTopLV4Category = "";

        //topLV5
        public string strTopLV5ImageHeading = "";
        public string strTopLV5Rate = "";
        public string strTopLV5Disc = "";
        public string strTopLV5SaveRate = "";
        public string strTopLV5Category = "";


        //top1
        public string strTop1ImageHeading = "";
        public string strTop1Rate = "";
        public string strTop1Disc = "";
      
        //New
        public string strTop1SaveRate = "";
        public string strTop1Category = "";

        //top2
        public string strTop2ImageHeading = "";
        public string strTop2Rate = "";
        public string strTop2Disc = "";

        //New
        public string strTop2SaveRate = "";
        public string strTop2Category = "";


        //top3
        public string strTop3ImageHeading = "";
        public string strTop3Rate = "";
        public string strTop3Disc = "";

        //New 
        public string strTop3SaveRate = "";
        public string strTop3Category = "";
    
        //Middle1
        public string strMiddle1ImageHeading = "";
        public string strMiddle1Rate = "";
        public string strMiddle1Disc = "";
        public string strMiddle1SaveRate = "";
        public string strMiddle1Category = "";


        //Middle2
        public string strMiddle2ImageHeading = "";
        public string strMiddle2Rate = "";
        public string strMiddle2Disc = "";
        public string strMiddle2SaveRate = "";
        public string strMiddle2Category = "";


        //Middle3
        public string strMiddle3ImageHeading = "";
        public string strMiddle3Rate = "";
        public string strMiddle3Disc = "";
        public string strMiddle3SaveRate = "";
        public string strMiddle3Category = "";


        //Bottom1
        public string strBottom1ImageHeading = "";
        public string strBottom1Rate = "";
        public string strBottom1Disc = "";
        public string strBottom1SaveRate = "";
        public string strBottom1Category = "";


        //Bottom2
        public string strBottom2ImageHeading = "";
        public string strBottom2Rate = "";
        public string strBottom2Disc = "";
        public string strBottom2SaveRate = "";
        public string strBottom2Category = "";

        //Bottom3
        public string strBottom3ImageHeading = "";
        public string strBottom3Rate = "";
        public string strBottom3Disc = "";
        public string strBottom3SaveRate = "";
        public string strBottom3Category = "";


        //Slider1
        public string strSlider1ImageHeading = "";
        public string strSlider1Rate = "";
        public string strSlider1Disc = "";
        public int strSl1 = 0;
        public string strSlider1SaveRate = "";
        public string strSlider1Category = "";

        //Slider2
        public string strSlider2ImageHeading = "";
        public string strSlider2Rate = "";
        public string strSlider2Disc = "";
        public int strSl2 = 0;
        public string strSlider2SaveRate = "";
        public string strSlider2Category = "";

        //Slider3
        public string strSlider3ImageHeading = "";
        public string strSlider3Rate = "";
        public string strSlider3Disc = "";
        public int strSl3 = 0;
        public string strSlider3SaveRate = "";
        public string strSlider3Category = "";

        //Slider4
        public string strSlider4ImageHeading = "";
        public string strSlider4Rate = "";
        public string strSlider4Disc = "";
        public int strSl4 = 0;
        public string strSlider4SaveRate = "";
        public string strSlider4Category = "";

        //Slider5
        public string strSlider5ImageHeading = "";
        public string strSlider5Rate = "";
        public string strSlider5Disc = "";
        public int strSl5 = 0;
        public string strSlider5SaveRate = "";
        public string strSlider5Category = "";
        //Slider6
        public string strSlider6ImageHeading = "";
        public string strSlider6Rate = "";
        public string strSlider6Disc = "";
        public int strSl6 = 0;
        public string strSlider6SaveRate = "";
        public string strSlider6Category = "";
        //Slider7
        public string strSlider7ImageHeading = "";
        public string strSlider7Rate = "";
        public string strSlider7Disc = "";
        public int strSl7 = 0;
        public string strSlider7SaveRate = "";
        public string strSlider7Category = "";
        //Slider8
        public string strSlider8ImageHeading = "";
        public string strSlider8Rate = "";
        public string strSlider8Disc = "";
        public int strSl8 = 0;
        public string strSlider8SaveRate = "";
        public string strSlider8Category = "";

        MyDataConnection MDC = new MyDataConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string SetAllItems()

        {
            string htmlStr = "";
            DataTable dt = MDC.getDataTable("Select * from ItemMaster where IsActive=1 order by ItemName");
            //htmlStr += "<ul>";
            foreach (DataRow dr in dt.Rows)
            {
                htmlStr += "<option value = 'Single.aspx?Id=" + dr["PK_ItemId"].ToString() + "'>" + dr["ItemName"].ToString() + "</option>";
                //htmlStr += "<Li>";
                //htmlStr += "<a href='Product.aspx?txt=" + dr["SubCategoryName"].ToString() + "'>" + dr["SubCategoryName"].ToString() + "</a>";
                //htmlStr += "</Li>";
            }
            //htmlStr += "</ul>";
            return htmlStr;
        }
        public string SetAllCategories()

        {
            string htmlStr = "";
            DataTable dt = MDC.getDataTable("Select * from SubCategoryMaster where IsActive=1");
            //htmlStr += "<ul>";
            foreach (DataRow dr in dt.Rows)
            {
                htmlStr += "<option value = 'Product.aspx?txt=" + dr["SubCategoryName"].ToString() + "'>" + dr["SubCategoryName"].ToString() +"</option>";
                //htmlStr += "<Li>";
                //htmlStr += "<a href='Product.aspx?txt=" + dr["SubCategoryName"].ToString() + "'>" + dr["SubCategoryName"].ToString() + "</a>";
                //htmlStr += "</Li>";
            }
            //htmlStr += "</ul>";
            return htmlStr;
        }
        public string LoadImgSingle()
        {
            string strHtml = "";


            // DataTable dt = MDC.getDataTable("select * from ProductList where Position=1 and Location='Top'");

            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where ShowFrontSingle_1=1 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strHtml = "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt =''  height='225' width='190'>";
                //lblTop1.Text = dt.Rows[0]["ItemName"].ToString();
              //  lblSaveTop1.Text = dt.Rows[0]["Rate"].ToString();
//                lblRateTop1.Text = dt.Rows[0]["OfferRate"].ToString();
                Id = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());
               // strTop1ImageHeading = lblTop1.Text;
  //              strTop1Rate = lblRateTop1.Text;
                strTop1Disc = dt.Rows[0]["Discount"].ToString();
                //New
    //            strTop1SaveRate = lblSaveTop1.Text;
                strTop1Category = dt.Rows[0]["CategoryName"].ToString() + "";


            }
            return strHtml;
        }

        public string LoadTopLV2Image()
        {
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where FrontPosition=2 and ShowLeftFront_5=1 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strTopLV2Category = dt.Rows[0]["SubCategoryName"].ToString() + "";
                strHtml += "<a href = 'Product.aspx?txt=" + strTopLV2Category + "'>";

                strHtml += "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' style='margin-left:35px' height='190' width='150'>";
               // lblTopLV2Name.Text = dt.Rows[0]["ItemName"].ToString();
               // lblTopLV2Rate.Text = dt.Rows[0]["Rate"].ToString();
               // lblTopV2OfferRate.Text  = dt.Rows[0]["OfferRate"].ToString();
                Id = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());
                //lblSaveTop1.Text = dt.Rows[0]["SaveRate"].ToString();
              
               // strTopLV2SaveRate = lblSaveTopLV2.Text;
//                strTopLV2Category = dt.Rows[0]["SubCategoryNam
               // strTopLV2ImageHeading = lblTopLV2Name.Text;
               // strTopLV2Rate = lblTopLV2Rate.Text;
               // strTopLV2Disc = dt.Rows[0]["Discount"].ToString();
                //Newe"].ToString() + "";
            }
            return strHtml;
        }
        public string LoadTopLV3Image()
        {
            string strHtml = "";
            //DataTable dt = MDC.getDataTable("select TOP 1 * from ProductList where Position=3 and Location='LV'");
            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where FrontPosition=3 and ShowLeftFront_5=1 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strTopLV3Category = dt.Rows[0]["SubCategoryName"].ToString() + "";
                strHtml += "<a href = 'Product.aspx?txt=" + strTopLV3Category + "'>";

                strHtml += "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' style='margin-left:35px'  height='190' width='150'>";
                //lblTopLV3Name.Text = dt.Rows[0]["ItemName"].ToString();
                //lblTopLV3Rate.Text = dt.Rows[0]["Rate"].ToString();
                //lblTopV3OfferRate.Text = dt.Rows[0]["OfferRate"].ToString();
                Id = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());
                //lblSaveTop1.Text = dt.Rows[0]["SaveRate"].ToString();

                //strTopLV3ImageHeading = lblTopLV3Name.Text;
                //strTopLV3Rate = lblTopLV3Rate.Text;
                strTopLV3Disc = dt.Rows[0]["Discount"].ToString();
                //New
                // strTopLV3SaveRate = lblSaveTopLV3.Text;
                
            }
            return strHtml;
        }
        public string LoadTopLV4Image()
        {
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where FrontPosition=4 and ShowLeftFront_5=1 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strTopLV4Category = dt.Rows[0]["SubCategoryName"].ToString() + "";
                strHtml += "<a href = 'Product.aspx?txt=" + strTopLV4Category + "'>";
                strHtml += "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' style='margin-left:35px' height='190' width='150'>";
                //lblTopLV4Name.Text = dt.Rows[0]["ItemName"].ToString();
                //lblTopLV4Rate.Text = dt.Rows[0]["Rate"].ToString();
                //lblTopV4OfferRate.Text = dt.Rows[0]["OfferRate"].ToString();
                Id = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());
                //lblSaveTop1.Text = dt.Rows[0]["SaveRate"].ToString();

                //strTopLV4ImageHeading = lblTopLV4Name.Text;
                //strTopLV4Rate = lblTopLV4Rate.Text;
                strTopLV4Disc = dt.Rows[0]["Discount"].ToString();
                //New
                // strTopLV2SaveRate = lblSaveTopLV2.Text;
                
            }
            return strHtml;
        }
        public string LoadTopLV5Image()
        {
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where FrontPosition=5 and ShowLeftFront_5=1 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strTopLV5Category = dt.Rows[0]["SubCategoryName"].ToString() + "";
                strHtml += "<a href = 'Product.aspx?txt=" + strTopLV5Category + "'>";
                strHtml += "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' style='margin-left:35px'  height='190' width='150'>";
                //lblTopLV5Name.Text = dt.Rows[0]["ItemName"].ToString();
                //lblTopLV5Rate.Text = dt.Rows[0]["Rate"].ToString();
                //lblTopV5OfferRate.Text = dt.Rows[0]["OfferRate"].ToString();
                Id = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());
                //lblSaveTop1.Text = dt.Rows[0]["SaveRate"].ToString();

                //strTopLV5ImageHeading = lblTopLV5Name.Text;
                //strTopLV5Rate = lblTopLV5Rate.Text;
                strTopLV5Disc = dt.Rows[0]["Discount"].ToString();
                //New
                // strTopLV2SaveRate = lblSaveTopLV2.Text;
                
            }
            return strHtml;
        }
        public string LoadTopLV1Image()
        {
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where FrontPosition=1 and ShowLeftFront_5=1 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strTopLV1Category = dt.Rows[0]["SubCategoryName"].ToString() + "";
                strHtml += "<a href = 'Product.aspx?txt=" + strTopLV1Category + "'>";
                strHtml += "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' style='margin-left:35px'  height='190' width='150'>";
                strHtml += "</a>";
                // lblTopLV1Name.Text = dt.Rows[0]["ItemName"].ToString();
                // lblTopLV1Rate.Text = dt.Rows[0]["Rate"].ToString();
                // lblTopV1OfferRate.Text= dt.Rows[0]["OfferRate"].ToString();
                Id = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());
                //lblSaveTop1.Text = dt.Rows[0]["SaveRate"].ToString();

               // strTopLV1ImageHeading = lblTopLV1Name.Text;
               // strTopLV1Rate = lblTopLV1Rate.Text;
                strTopLV1Disc = dt.Rows[0]["Discount"].ToString();
                //New
                // strTopLV2SaveRate = lblSaveTopLV2.Text;
                
            }
            return strHtml;
        }
        [WebMethod]
        public static string saveFunction(string Name, string Email, string Mobile, string Password,  string ConfirmPassword)
        {
            string x = "";


            DataSet dss = new DataSet();
            try
            {
                using (var cnt = ConnectionManager.Inst.CreateNewConnection())
                {

                    SqlDataAdapter da = new SqlDataAdapter("Select * from UserMaster where PK_UserId=0", cnt);
                    DataSet dsOrder = new DataSet();
                    da.Fill(dsOrder);
                    DataRow dr;
                    dr = dsOrder.Tables[0].NewRow();

                    dr["UserName"] = Name;
                    dr["Email"] = Email;
                    dr["Mobile"] = Mobile;
                    dr["Password"] = Password;
                    dr["ConfirmPassword"] = ConfirmPassword;
                    dr["UserType"] = "customer";

                    dsOrder.Tables[0].Rows.Add(dr);
                    SqlCommandBuilder cmb = new SqlCommandBuilder(da);
                    da.Update(dsOrder);
                }
            }
            catch(Exception ex)
            {

            }
            return x;
        }
        [WebMethod]
        public static string CallFunction(string ImageId, string ImageName,string Location, string Rate,string SaveRate,string Category)
        {
            string x = "";

            DataSet dss = new DataSet();

            DataSet dsOrder = new DataSet();
            dss = (DataSet)HttpContext.Current.Session["ds"];
            dsOrder = dss.Copy();
            DataRow dr;
            dr = dsOrder.Tables[0].NewRow();
            dr["ImageId"] = ImageId;
            dr["ImageName"] = ImageName;
            dr["Qty"] = 1;
            dr["Rate"] = Rate;
            dr["SaveRate"] = SaveRate;
            dr["Category"] = Category;
            dsOrder.Tables[0].Rows.Add(dr);
            HttpContext.Current.Session["ds"] = dsOrder;
            return x;
        }
            public string LoadTop1()
        {
            string strHtml = "";


           // DataTable dt = MDC.getDataTable("select TOP 1 * from ProductList where Position=1 and Location='Top'");

            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where ShowFrontTop_3=1 and FrontPosition=1 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strTop1Category = dt.Rows[0]["SubCategoryName"].ToString() + "";
                strHtml += "<a href='Product.aspx?txt=" + strTop1Category + "'>";
                strHtml += "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt =''  height='225' width='190'>";
               // strHtml += "<img src='ProductImage/oilll.jpg' alt =''  height='225' width='180'>";

                strHtml += "</a>";
                //lblTop1.Text = dt.Rows[0]["ItemName"].ToString();
                // lblSaveTop1.Text =  dt.Rows[0]["Rate"].ToString();
                // lblRateTop1.Text = dt.Rows[0]["OfferRate"].ToString();
                Id = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());
                strTop1ImageHeading = dt.Rows[0]["ImageName"].ToString();
               // strTop1Rate = lblRateTop1.Text;
                strTop1Disc = dt.Rows[0]["Discount"].ToString()+"%";
                //New
               // strTop1SaveRate = lblSaveTop1.Text;
                //strTop1Category = dt.Rows[0]["CategoryName"].ToString()+"";
               // strTop1Category = dt.Rows[0]["SubCategoryName"].ToString() + "";


            }
            return strHtml;
        }
        public string LoadTop2()
        {
            string strHtml = "";
            //strHtml="<img src = 'images/nut1.png' alt =''>";
            // DataTable dt = MDC.getDataTable("select TOP 1 * from ProductList where Position=2 and Location='Top'");

            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where ShowFrontTop_3=1 and FrontPosition=2 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                //strHtml += "<img src='ProductImage/oilll.jpg' alt =''  height='225' width='180'>";
                strHtml = "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt =''  height='225' width='190'>";
                //lblTop2.Text = dt.Rows[0]["ItemName"].ToString();
                //lblSaveTop2.Text = dt.Rows[0]["Rate"].ToString();
                //lblRateTop2.Text = dt.Rows[0]["OfferRate"].ToString();
                Id = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());

              //  strTop2ImageHeading = lblTop2.Text;
               // strTop2Rate = lblRateTop2.Text;
                strTop2Disc = dt.Rows[0]["Discount"].ToString();

               // strTop2SaveRate = lblSaveTop2.Text;
                strTop2Category = dt.Rows[0]["SubCategoryName"].ToString() + "";

            }
            return strHtml;
        }
        public string LoadTop3()
        {
            string strHtml = "";
            // DataTable dt = MDC.getDataTable("select TOP 1 * from ProductList where Position=3 and Location='Top'");

            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where ShowFrontTop_3=1 and FrontPosition=3 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                //strHtml += "<img src='ProductImage/oilll.jpg' alt =''  height='225' width=180'>";
                strHtml = "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt =''  height='225' width='190'>";

                //                strHtml = "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt =''  height='225' width='190'>";
                //lblTop3.Text = dt.Rows[0]["ItemName"].ToString();
                //lblSaveTop3.Text  = dt.Rows[0]["Rate"].ToString();
                //lblRateTop3.Text = dt.Rows[0]["OfferRate"].ToString();
                Id = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());

                strTop3ImageHeading = dt.Rows[0]["ImageName"].ToString();// lblTop3.Text;
                //strTop3Rate = lblRateTop3.Text;
                strTop3Disc = dt.Rows[0]["Discount"].ToString();

                //strTop3SaveRate = lblSaveTop3.Text;
                strTop3Category = dt.Rows[0]["SubCategoryName"].ToString() + "";
            }
            return strHtml;
        }
        
       public string LoadMiddle1()
       {
            string strHtml = "";
            // DataTable dt = MDC.getDataTable("select TOP 1 * from ProductList where Position=1 and Location='Middle'");

            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where ShowFrontMid_3=1 and FrontPosition=1 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strHtml = "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt =''  height='225' width='190'>";
              //  lblMiddle1.Text = dt.Rows[0]["ItemName"].ToString();
                //lblSaveMiddle1.Text  = dt.Rows[0]["Rate"].ToString();
               // lblRateMiddle1.Text = dt.Rows[0]["OfferRate"].ToString();
                Id = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());

                //strMiddle1ImageHeading = lblMiddle1.Text;
                //strMiddle1Rate  = lblRateMiddle1.Text;
                strMiddle1Disc  = dt.Rows[0]["Discount"].ToString();


                //strMiddle1SaveRate  = lblSaveMiddle1.Text;
                strMiddle1Category = dt.Rows[0]["SubCategoryName"].ToString() + "";


            }
            return strHtml;
        }
        public string LoadMiddle2()
        {
            string strHtml = "";
            //strHtml="<img src = 'images/nut1.png' alt =''>";
            // DataTable dt = MDC.getDataTable("select TOP 1 * from ProductList where Position=2 and Location='Middle'");
            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where ShowFrontMid_3=1 and FrontPosition=2 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strHtml = "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt =''  height='225' width='190'>";
                //lblMiddle2.Text = dt.Rows[0]["ItemName"].ToString();
                //lblSaveMiddle2.Text = dt.Rows[0]["Rate"].ToString();
                //lblRateMiddle2.Text  = dt.Rows[0]["OfferRate"].ToString();
                Id = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());

               // strMiddle2ImageHeading = lblMiddle2.Text;
               // strMiddle2Rate = lblRateMiddle2.Text;
                strMiddle2Disc = dt.Rows[0]["Discount"].ToString();
                //strMiddle2SaveRate = lblSaveMiddle2.Text;
                strMiddle2Category = dt.Rows[0]["SubCategoryName"].ToString() + "";

            }
            return strHtml;
        }
        public string LoadMiddle3()
        {
            string strHtml = "";
            // DataTable dt = MDC.getDataTable("select TOP 1 * from ProductList where Position=3 and Location='Middle'");
            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where ShowFrontMid_3=1 and FrontPosition=3 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strHtml = "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt =''  height='225' width='190'>";
                //lblMiddle3.Text = dt.Rows[0]["ItemName"].ToString();
                //lblSaveMiddle3.Text  = dt.Rows[0]["Rate"].ToString();
                //lblRateMiddle3.Text = dt.Rows[0]["OfferRate"].ToString();
                Id = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());

                //strMiddle3ImageHeading = lblMiddle3.Text;
                //strMiddle3Rate = lblRateMiddle3.Text;
                strMiddle3Disc = dt.Rows[0]["Discount"].ToString();
                //strMiddle3SaveRate = lblSaveMiddle3.Text;
                strMiddle3Category = dt.Rows[0]["SubCategoryName"].ToString() + "";

            }
            return strHtml;
        }
        

        public string LoadBottom1()
        {
            string strHtml = "";
            // DataTable dt = MDC.getDataTable("select TOP 1 * from ProductList where Position=1 and Location='Bottom'");
            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where ShowFrontBottom_3=1 and FrontPosition=1 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strHtml = "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt =''  height='225' width='190'>";
              //  lblBottom1.Text = dt.Rows[0]["ItemName"].ToString();
              //  lblSaveBottom1.Text = dt.Rows[0]["Rate"].ToString();
              //  lblRateBottom1.Text = dt.Rows[0]["OfferRate"].ToString();
                Id = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());

              //  strBottom1ImageHeading = lblBottom1.Text;
              //  strBottom1Rate = lblRateBottom1.Text;
                strBottom1Disc = dt.Rows[0]["Discount"].ToString();
              //  strBottom1SaveRate = lblSaveBottom1.Text;
                strBottom1Category = dt.Rows[0]["SubCategoryName"].ToString() + "";
            }
            return strHtml;
        }
        public string LoadBottom2()
        {
            string strHtml = "";
            //strHtml="<img src = 'images/nut1.png' alt =''>";
            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where ShowFrontBottom_3=1 and FrontPosition=2 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strHtml = "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt =''  height='225' width='190'>";
                //lblBottom2.Text = dt.Rows[0]["ItemName"].ToString();
                //lblSaveBottom2.Text = dt.Rows[0]["Rate"].ToString();
                //lblRateBottom2.Text = dt.Rows[0]["OfferRate"].ToString();
                Id = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());

                //strBottom2ImageHeading = lblBottom2.Text;
                //strBottom2Rate = lblRateBottom2.Text;// lblBottom2.Text;
                strBottom2Disc = dt.Rows[0]["Discount"].ToString();
                //strBottom2SaveRate = lblSaveBottom2.Text;
                strBottom2Category = dt.Rows[0]["SubCategoryName"].ToString() + "";
            }
            return strHtml;
        }
        public string LoadBottom3()
        {
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where ShowFrontBottom_3=1 and FrontPosition=3 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strHtml = "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt =''  height='225' width='190'>";
                //lblBottom3.Text = dt.Rows[0]["ItemName"].ToString();
                //lblSaveBottom3.Text = dt.Rows[0]["Rate"].ToString();
                //lblRateBottom3.Text = dt.Rows[0]["OfferRate"].ToString();
                Id = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());

                //strBottom3ImageHeading =  lblBottom3.Text;
                //strBottom3Rate = lblRateBottom3.Text; // lblBottom3.Text;
                strBottom3Disc = dt.Rows[0]["Discount"].ToString();
                //strBottom3SaveRate = lblSaveBottom3.Text;
                strBottom3Category = dt.Rows[0]["SubCategoryName"].ToString() + "";
            }
            return strHtml;
        }
        public string LoadSlider1()
        {
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where ShowFrontSlider_10=1 and FrontPosition=1 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strSlider1Category = dt.Rows[0]["SubCategoryName"].ToString() + "";
                strHtml += "<a href = 'Product.aspx?txt=" + strSlider1Category + "'>";
                strHtml += "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' width='190' height='225'>";
                strHtml += "</a>";
                //strHtml = "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' width='190' height='225'>";
                //lblSlider1.Text = dt.Rows[0]["ItemName"].ToString();
               // lblRateTop1.Text = dt.Rows[0]["Rate"].ToString();
                //lblSaveSlider1.Text = dt.Rows[0]["Rate"].ToString();
                //lblRateSlider1.Text = dt.Rows[0]["OfferRate"].ToString();
                strSl1  = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());

                //strSlider1ImageHeading = lblSlider1.Text;
                //strSlider1Rate = lblRateSlider1.Text;
                strSlider1Disc = dt.Rows[0]["Discount"].ToString();
                //strSlider1SaveRate = lblSaveSlider1.Text;
                strSlider1Category = dt.Rows[0]["SubCategoryName"].ToString() + "";
            }
            return strHtml;
        }
        public string LoadSlider2()
        {
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where ShowFrontSlider_10=1 and FrontPosition=2 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strSlider2Category = dt.Rows[0]["SubCategoryName"].ToString() + "";
                strHtml += "<a href = 'Product.aspx?txt=" + strSlider2Category + "'>";
                strHtml += "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' width='190' height='225'>";
                strHtml += "</a>";
            //    strHtml = "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' width='190' height='225'>";
                //lblSlider2.Text = dt.Rows[0]["ItemName"].ToString();
                //lblSaveSlider2.Text = dt.Rows[0]["Rate"].ToString();
                //lblRateSlider2.Text = dt.Rows[0]["OfferRate"].ToString();
                strSl2= Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());

                //strSlider2ImageHeading = lblSlider2.Text;
                //strSlider2Rate = lblRateSlider2.Text;
                strSlider2Disc = dt.Rows[0]["Discount"].ToString();
                //strSlider2SaveRate = lblSaveSlider2.Text;
               
            }
            return strHtml;
        }
        public string LoadSlider3()
        {
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where ShowFrontSlider_10=1 and FrontPosition=3 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strSlider3Category = dt.Rows[0]["SubCategoryName"].ToString() + "";

                strHtml += "<a href = 'Product.aspx?txt="+ strSlider3Category + "'>";
                strHtml+="<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' width='190' height='225'>";
                strHtml += "</a>";

                //lblSlider3.Text = dt.Rows[0]["ItemName"].ToString();
                //lblSaveSlider3.Text = dt.Rows[0]["Rate"].ToString();
                //lblRateSlider3.Text = dt.Rows[0]["OfferRate"].ToString();
                strSl3  = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());

                //strSlider3ImageHeading = lblSlider3.Text;
                //strSlider3Rate = lblRateSlider3.Text;
                //strSlider3Disc = dt.Rows[0]["Discount"].ToString();
                //strSlider3SaveRate = lblSaveSlider3.Text;
                
            }
            return strHtml;
        }
        public string LoadSlider4()
        {
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where ShowFrontSlider_10=1 and FrontPosition=4 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strSlider4Category = dt.Rows[0]["SubCategoryName"].ToString() + "";
                strHtml += "<a href = 'Product.aspx?txt=" + strSlider4Category + "'>";
                strHtml += "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' width='190' height='225'>";
                strHtml += "</a>";
                //strHtml = "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' width='190' height='225'>";
                //lblSlider4.Text = dt.Rows[0]["ItemName"].ToString();
                //lblSaveSlider4.Text = dt.Rows[0]["Rate"].ToString();
                //lblRateSlider4.Text = dt.Rows[0]["OfferRate"].ToString();
                strSl4  = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());
                //strSlider4ImageHeading = lblSlider4.Text;
                //strSlider4Rate = lblRateSlider4.Text;
                strSlider4Disc = dt.Rows[0]["Discount"].ToString();
                //strSlider4SaveRate = lblSaveSlider4.Text;
                
            }
            return strHtml;
        }
        public string LoadSlider5()
        {
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select TOP 1 * from ItemMaster where ShowFrontSlider_10=1 and FrontPosition=5 and IsActive=1");
            if (dt.Rows.Count > 0)
            {

                strSlider5Category = dt.Rows[0]["SubCategoryName"].ToString() + "";
                strHtml += "<a href = 'Product.aspx?txt=" + strSlider5Category + "'>";
                strHtml += "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' width='190' height='225'>";
                strHtml += "</a>";
                //strHtml = "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' width='190' height='225'>";
                //lblSlider5.Text = dt.Rows[0]["ItemName"].ToString();
                //lblSaveSlider5.Text = dt.Rows[0]["Rate"].ToString();
                //lblRateSlider5.Text = dt.Rows[0]["OfferRate"].ToString();
                strSl5  = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());

                //strSlider5ImageHeading = lblSlider5.Text;
                //strSlider5Rate = lblRateSlider5.Text;
                strSlider5Disc = dt.Rows[0]["Discount"].ToString();
                //strSlider5SaveRate = lblSaveSlider5.Text;
                
            }
            return strHtml;
        }
        public string LoadSlider6()
        {
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select * from ItemMaster where ShowFrontSlider_10=1 and FrontPosition=6 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strSlider6Category = dt.Rows[0]["SubCategoryName"].ToString() + "";

                strHtml += "<a href = 'Product.aspx?txt=" + strSlider6Category + "'>";
                strHtml += "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' width='190' height='225'>";
                strHtml += "</a>";
                //   strHtml = "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' width='190' height='225'>";
                //lblSlider6.Text = dt.Rows[0]["ItemName"].ToString();
                //lblSaveSlider6.Text = dt.Rows[0]["Rate"].ToString();
                //lblRateSlider6.Text = dt.Rows[0]["OfferRate"].ToString();
                strSl6  = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());


                //strSlider6ImageHeading = lblSlider6.Text;
                //strSlider6Rate = lblRateSlider6.Text;
                strSlider6Disc = dt.Rows[0]["Discount"].ToString();
                //strSlider6SaveRate = lblSaveSlider6.Text;
                strSlider6Category = dt.Rows[0]["SubCategoryName"].ToString() + "";
            }
            return strHtml;
        }
        public string LoadSlider7()
        {
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select * from ItemMaster where ShowFrontSlider_10=1 and FrontPosition=7 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strSlider7Category = dt.Rows[0]["SubCategoryName"].ToString() + "";

                strHtml += "<a href = 'Product.aspx?txt=" + strSlider7Category + "'>";
                strHtml += "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' width='190' height='225'>";
                strHtml += "</a>";
                //strHtml = "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' width='190' height='225'>";
              //  lblSlider7.Text = dt.Rows[0]["ItemName"].ToString();
               // lblSaveSlider7.Text = dt.Rows[0]["Rate"].ToString();
               // lblRateSlider7.Text = dt.Rows[0]["OfferRate"].ToString();
                strSl7  = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());

               // strSlider7ImageHeading = lblSlider7.Text;
                //strSlider7Rate = lblRateSlider7.Text;
                strSlider7Disc = dt.Rows[0]["Discount"].ToString();
                //strSlider7SaveRate = lblSaveSlider7.Text;
             
            }
            return strHtml;
        }
        public string LoadSlider8()
        {
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select * from ItemMaster where ShowFrontSlider_10=1 and FrontPosition=8 and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strSlider8Category = dt.Rows[0]["SubCategoryName"].ToString() + "";
                strHtml += "<a href = 'Product.aspx?txt=" + strSlider8Category + "'>";
                strHtml += "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' width='190' height='225'>";
                strHtml += "</a>";
                //strHtml = "<img src='ProductImage/" + dt.Rows[0]["ImageName"].ToString() + "' alt ='' width='190' height='225'>";
                //lblSlider8.Text = dt.Rows[0]["ItemName"].ToString();
                //lblSaveSlider8.Text = dt.Rows[0]["Rate"].ToString();
                //lblRateSlider8.Text = dt.Rows[0]["OfferRate"].ToString();
                strSl8  = Convert.ToInt32(dt.Rows[0]["PK_ItemId"].ToString());

                //strSlider8ImageHeading = lblSlider8.Text;
                //strSlider8Rate = lblRateSlider8.Text;
                strSlider8Disc = dt.Rows[0]["Discount"].ToString();
                //strSlider8SaveRate = lblSaveSlider8.Text;
                //strSlider8Category = dt.Rows[0]["CategoryName"].ToString() + "";
            }
            return strHtml;
        }
        
        public string MainMenu()
        {
            int i = 1;
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select distinct SubCategoryName from SubCategoryMaster where CategoryName='KITCHEN' and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                    strHtml += "<li class='dropdown'>";
                    strHtml += "<a href = '#' class='dropdown-toggle nav-stylehead' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>KITCHEN";
                    strHtml += "<span class='caret'></span></a>";
                    strHtml += "<ul class='dropdown-menu multi-column columns-3'>";
                    strHtml += "<div class='agile_inner_drop_nav_info'>";

                //  < div class="col-sm-6 multi-gd-img">
                //                 <ul class="multi-column-dropdown">
                strHtml += "<div class='col-sm-4 multi-gd-img'>";
                strHtml += "<ul class='multi-column-dropdown'>";

                int k = 1;         
                foreach (DataRow dr in dt.Rows)
                {

                    strHtml += "<li>" +
                        "<a href = 'Product.aspx?txt="+ dr["SubCategoryName"].ToString() +"'>"+dr["SubCategoryName"].ToString()+"</a>";
                    strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href='Product.aspx'>Baking Supplies</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'> Coffee, Tea & Beverages</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'> Dried Fruits, Nuts</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'> Sweets, Chocolate</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Spices & Masalas</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href= 'Product.aspx'>Jams, Honey & Spreads</a>";
                    //strHtml += "</li>";
                    ////if (i == 11)
                    //{
                    //    strHtml += "</ul>";
                    //    strHtml += "</div>";
                    //    strHtml += "<div class='col-sm-4 multi-gd-img'>";
                    //    strHtml += "<ul class='multi-column-dropdown'>";

                    //}
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Pickles</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href='Product.aspx'>Pasta & Noodles</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Rice, Flour & Pulses</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Sauces & Cooking Pastes</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Snack Foods</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Oils, Vinegars</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Meat, Poultry & Seafood</a>";
                    //strHtml += "</li>";
                    k = k + 1;
                    if(k==11)
                    {
                        strHtml += "</ul>";
                        strHtml += "</div>";
                        strHtml += "<div class='col-sm-4 multi-gd-img'>";
                        strHtml += "<ul class='multi-column-dropdown'>";

                    }

                }
            }
            strHtml += "</ul>";
            strHtml += "</div>";
            strHtml += "<div class='col-sm-4 multi-gd-img'>";
            strHtml += "<img src = 'images/nav.png' alt=''>";
            strHtml += "</div>";
            strHtml += "<div class='clearfix'></div>";
            strHtml += "</div>";
            strHtml += "</ul>";
            strHtml += "</li>";
            return strHtml;

            }

        public string MainMenu1()
        {
            int i = 1;
            string strHtml = "";
            DataTable dt = MDC.getDataTable("select Distinct SubCategoryName from SubCategoryMaster where CategoryName='Personal Care' and IsActive=1");
            if (dt.Rows.Count > 0)
            {
                strHtml += "<li class='dropdown'>";
                strHtml += "<a href = '#' class='dropdown-toggle nav-stylehead' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>Personal Care";
                strHtml += "<span class='caret'></span></a>";
                strHtml += "<ul class='dropdown-menu multi-column columns-3'>";
                strHtml += "<div class='agile_inner_drop_nav_info'>";

                //  < div class="col-sm-6 multi-gd-img">
                //                 <ul class="multi-column-dropdown">
                strHtml += "<div class='col-sm-4 multi-gd-img'>";
                strHtml += "<ul class='multi-column-dropdown'>";

                int k = 1;
                foreach (DataRow dr in dt.Rows)
                {

                    strHtml += "<li>" +
                        "<a href = 'Product.aspx?txt=" + dr["SubCategoryName"].ToString() + "'>" + dr["SubCategoryName"].ToString() + "</a>";
                    strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href='Product.aspx'>Baking Supplies</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'> Coffee, Tea & Beverages</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'> Dried Fruits, Nuts</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'> Sweets, Chocolate</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Spices & Masalas</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href= 'Product.aspx'>Jams, Honey & Spreads</a>";
                    //strHtml += "</li>";
                    ////if (i == 11)
                    //{
                    //    strHtml += "</ul>";
                    //    strHtml += "</div>";
                    //    strHtml += "<div class='col-sm-4 multi-gd-img'>";
                    //    strHtml += "<ul class='multi-column-dropdown'>";

                    //}
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Pickles</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href='Product.aspx'>Pasta & Noodles</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Rice, Flour & Pulses</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Sauces & Cooking Pastes</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Snack Foods</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Oils, Vinegars</a>";
                    //strHtml += "</li>";
                    //strHtml += "<li>";
                    //strHtml += "<a href = 'Product.aspx'>Meat, Poultry & Seafood</a>";
                    //strHtml += "</li>";
                    k = k + 1;
                    if (k == 11)
                    {
                        strHtml += "</ul>";
                        strHtml += "</div>";
                        strHtml += "<div class='col-sm-4 multi-gd-img'>";
                        strHtml += "<ul class='multi-column-dropdown'>";

                    }

                }
            }
            strHtml += "</ul>";
            strHtml += "</div>";
            strHtml += "<div class='col-sm-4 multi-gd-img'>";
            strHtml += "<img src = 'images/nav.png' alt=''>";
            strHtml += "</div>";
            strHtml += "<div class='clearfix'></div>";
            strHtml += "</div>";
            strHtml += "</ul>";
            strHtml += "</li>";
            return strHtml;

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DataTable dt = MDC.getDataTable("select * from UserMaster where UserName='"+txtUserName.Value+"' and Password='"+txtPaasword.Value+"'");
            if(dt.Rows.Count>0)
            {
                if (dt.Rows[0]["UserType"].ToString() == "admin")
                {
                    Response.Redirect("AdminPanel.aspx");
                    Session["usertype"] = "admin";
                }
                if (dt.Rows[0]["UserType"].ToString() == "delear")
                {
                    Session["UserName"] = dt.Rows[0]["UserName"].ToString();
                    Session["mobile"] = dt.Rows[0]["Mobile"].ToString();
                    Session["usertype"] = "delear";
                 
                    Response.Redirect("AdminPanel.aspx");
                }
                if (dt.Rows[0]["UserType"].ToString() == "customer")
                {
                    Session["UserName"] = dt.Rows[0]["UserName"].ToString();
                    Session["mobile"] = dt.Rows[0]["Mobile"].ToString();
                    Session["usertype"] = "customer";
                    Response.Redirect("DashboardCustomer.aspx");
                 
                }
            }
        }
    }
}