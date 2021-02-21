﻿using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Collections;
using System.Web.Script.Serialization;

namespace BachatBazaar
{
    public partial class Edit_Form_C_Society : System.Web.UI.Page
    {

        DataTable dt;
        DataRow dr;
        bool isSave = false;
        MyDataConnection MDC = new MyDataConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
            getImage();
        }
        protected void getImage()
        { int x = 0;
            string strId = Request.QueryString["Id"].ToString();
            if (strId.Length > 0)
            {
                DataTable dt = MDC.getDataTable("select * from MainImage where MemberId="+Convert.ToInt32(strId));
                if (dt.Rows.Count > 0)
                {
                    gvMenuTiming.DataSource = dt;
                    gvMenuTiming.DataBind();

                    foreach (GridViewRow gv in gvMenuTiming.Rows)
                    {
                        Label lblMemberId = (Label)gv.FindControl("lblMemberId");
                        Image Img = (Image)gv.FindControl("Img");

                        if (lblMemberId.Text.Length >0)
                        {
                            Img.ImageUrl = "~/neuroimg/" + dt.Rows[x]["ImageName"].ToString();  
                        }
                        x = x + 1;
                    }
                }
            }
        }
        protected void GetData()
        {
            int Id = Convert.ToInt32(Request["Id"].ToString());

            string ssql = "";

            if (Id > 0)
            {
                ssql = "select * from Individual_App where PK_APP_ID=" + Id;
                DataTable dt = MDC.getDataTable("select * from Individual_App where PK_APP_ID=" + Id);

                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        txtAddressEnglish.Text = dr["Address"].ToString(); //  nvarchar(20t0)   Unchecked
                        txtAddressHindi.Text = dr["AddressHindi"].ToString(); //     nvarchar(200)   Checked
                        txtBlockEnglish.Text = dr["Tehsil"].ToString();
                        txtBlockHindi.Text = dr["TehsilHindi"].ToString();

                        drpRefMembers.Text = dr["RefMember"].ToString();
                        txtCityHindi.Text = dr["CityHindi"].ToString();   // nvarchar(50)    Checked
                        txtLandMarkEnglish.Text = dr["Landmark"].ToString(); //     nvarchar(200)   Checked
                        txtLandMarkHindi.Text = dr["LandmarkHindi"].ToString(); //    nvarchar(200)   Checked
                        // Anji
                      //  txtRegNo.Text = dr["PK_APP_ID"].ToString();
                        txtNames.Text = dr["UpperNameEnglish"].ToString(); //  nvarchar(20t0)   Unchecked
                        txtHindi.Text = dr["UpperNameHindi"].ToString(); //     nvarchar(200)   Checked
                        txtAddressEnglish.Text = dr["Address"].ToString(); //  nvarchar(20t0)   Unchecked
                        txtAddressHindi.Text = dr["AddressHindi"].ToString(); //     nvarchar(200)   Checked
                        txtBuildingEnglishName.Text = dr["Address1"].ToString(); //  nvarchar(20t0)   Unchecked
                        txtBuildingHindiName.Text = dr["AddressHindi1"].ToString();
                        txtMargEnglish.Text = dr["Address2"].ToString(); //  nvarchar(20t0)   Unchecked
                        txtMargHindi.Text = dr["AddressHindi2"].ToString();
                        txtMohallaEnglish.Text = dr["Address3"].ToString(); //  nvarchar(20t0)   Unchecked
                        txtMohallaHindi.Text = dr["AddressHindi3"].ToString();
                        txtLandMarkEnglish.Text = dr["Address4"].ToString(); //  nvarchar(20t0)   Unchecked
                        txtLandMarkHindi.Text = dr["AddressHindi4"].ToString();
                        txtBlockEnglish.Text = dr["Tehsil"].ToString();
                        txtBlockHindi.Text = dr["TehsilHindi"].ToString();
                        txtCity.Text = dr["City"].ToString();
                        txtPinCode.Text = dr["PIN"].ToString();
                        txtState.Text = dr["State"].ToString();


                        drpRefMembers.Text = dr["RefMember"].ToString();
                        txtCityHindi.Text = dr["CityHindi"].ToString();   // nvarchar(50)    Checked
                        txtCityEnglish.Text = dr["CityEnglish"].ToString();
                        txtLandMarkEnglish.Text = dr["Landmark"].ToString(); //     nvarchar(200)   Checked
                        txtLandMarkHindi.Text = dr["LandmarkHindi"].ToString();
                        txtChequeNo.Value = dr["ChequeNo"].ToString();  //    nvarchar(200)   Checked
                        txtBankName.Value = dr["BankName"].ToString();//    nvarchar(200)   Checked
                        txtChequeDate.Value = dr["ChequeDate"].ToString();
                       
                        txtEmail.Text = dr["MailId"].ToString();
                        txtMobile.Text = dr["MobileNo"].ToString();//    int Unchecked
                        TextBox3.Text = dr["MobileNo2"].ToString();
                        TextBox4.Text = dr["StdCode2"].ToString();//    int Unchecked
                       
                        txtPANno.Text = dr["PaNNo"].ToString(); // nvarchar(50)	Unchecked
                        txtPhone.Text = dr["TelephoneNo"].ToString();
                        txtAdhaarNo.Text = dr["AdharNo"].ToString();//  nvarchar(50)    Unchecked
                                                                    //VoterId nvarchar(50)    Unchecked
                        txtEnglishName.Text = dr["Name"].ToString();
                        txtHindiName.Text = dr["NameHindi"].ToString();
                        txtFatherEnglishName.Text = dr["FatherName"].ToString();
                        txtFatherHindiName.Text = dr["FatherNameHindi"].ToString();
                        txtFatherHindiName.Text = dr["FatherNameHindi"].ToString();
                       // txtUserName.Text = dr["UserName"].ToString();
                       // txtPassword.Text = dr["Password"].ToString();



                        // sm
                        txtMobile.Text = dr["MailId"].ToString();
                        txtMobile.Text = dr["MobileNo"].ToString();//    int Unchecked
                        txtPANno.Text = dr["PaNNo"].ToString(); // nvarchar(50)	Unchecked
                        txtPhone.Text = dr["TelephoneNo"].ToString();
                        txtAdhaarNo.Text = dr["AdharNo"].ToString();//  nvarchar(50)    Unchecked
                                                                    //VoterId nvarchar(50)    Unchecked
                        txtEnglishName.Text = dr["Name"].ToString();
                        txtHindiName.Text = dr["NameHindi"].ToString();
                        txtFatherEnglishName.Text = dr["FatherName"].ToString();
                        txtFatherHindiName.Text = dr["FatherNameHindi"].ToString();
                        txtFatherHindiName.Text = dr["FatherNameHindi"].ToString();
                        txtJilaEnglish.Text = dr["District"].ToString();
                        txtJilaHindi.Text = dr["DistrictHindi"].ToString();
                        txtChequeNo.Value= dr["ChequeNo"].ToString();  //    nvarchar(200)   Checked
                        txtBankName.Value=dr["BankName"].ToString(); 
                    }
                }
            }

        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            // dt=MDC.getDataTable("select * from ")
            //string ttx = TranslateText("Hello");
            string ssql = "";
            // ssql = "select * from Society_App_FormC where PK_APP_IDFromC=0";
            // DataTable dt = MDC.getDataTable("Select * from Society_App_FormC where PK_APP_IDFromC=0");

            ssql = "select * from Individual_App where PK_APP_ID=0";
            DataTable dt = MDC.getDataTable("select * from Individual_App where PK_APP_ID=0");

            DataRow dr;
            dr = dt.NewRow();

            //            PK_C_ID int Unchecked
            //TypeId  int Unchecked
            //TypeName nvarchar(100)	Unchecked
            dr["TypeName"] = "Form_C_Society";
            dr["Address"] = txtAddressEnglish.Text; //  nvarchar(20t0)   Unchecked
            dr["AddressHindi"] = txtAddressHindi.Text; //     nvarchar(200)   Checked
            dr["Tehsil"] = txtBlockEnglish.Text;
            dr["TehsilHindi"] = txtBlockHindi.Text;

            //Address1    nvarchar(200)   Checked
            //AddressHindi1   nvarchar(200)   Unchecked
            //Address2    nvarchar(200)   Unchecked
            //AddressHindi2   nvarchar(200)   Unchecked= 
            //Address3    nvarchar(200)   Unchecked
            //AddressHindi3   nvarchar(200)   Checked
            //Address4    nvarchar(200)   Checked
            //AddressHindi4   nvarchar(200)   Unchecked
            //FK_CityId   nvarchar(50)    Checked
            dr["RefMember"] = drpRefMembers.Text;
            dr["CityHindi"] = txtCityHindi.Text;   // nvarchar(50)    Checked
            dr["Landmark"] = txtLandMarkEnglish.Text; //     nvarchar(200)   Checked
            dr["LandmarkHindi"] = txtLandMarkHindi.Text; //    nvarchar(200)   Checked
                                                         //District    nvarchar(50)    Checked
                                                         //DistrictHindi   nvarchar(50)    Checked
                                                         //Tehsil  nvarchar(50)    Checked
                                                         //TehsilHindi nvarchar(50)    Checked
                                                         //StateiId    int Checked
                                                         //CountryId   int Checked
            dr["RegNo"] = 0;
            dr["MailId"] = txtMobile.Text;
            dr["MobileNo"] = txtMobile.Text;//    int Unchecked
            dr["PaNNo"] = txtPANno.Text;// nvarchar(50)	Unchecked
            dr["TelephoneNo"] = txtPhone.Text;
            dr["AdharNo"] = txtAdhaarNo.Text;//  nvarchar(50)    Unchecked
            //VoterId nvarchar(50)    Unchecked
            dr["CreateDate"] = System.DateTime.Now;//   date Unchecked
            dr["UpdateDate"] = System.DateTime.Now; //date    Unchecked
            dr["IsActive"] = true; //    bit Unchecked
            dr["Name"] = txtEnglishName.Text;
            dr["NameHindi"] = txtHindiName.Text;
            dr["FatherName"] = txtFatherEnglishName.Text;
            dr["FatherNameHindi"] = txtFatherHindiName.Text;
            dr["FatherNameHindi"] = txtFatherHindiName.Text;

           // dr["Establish"] = ChkSthapna.Checked;
          //  dr["Gst"] = chkGST.Checked;
            // dr["Gumasta"] = chkGumasta.Checked;
           // dr["Other"] = chkOther.Checked;
            //dr["Firm"] = txtFirm.Text;
            //dr["FirmAddress"] = txtFirm.Text;
            //dr["AnnualSale"] = txtAnnualSale.Text;
            //dr["WorkArea"] = txtWorkArea.Text;
            //dr["WorkArea"] = txtWorkArea.Text;
            dt.Rows.Add(dr);

            if (MDC.InsertData(dt, dr, ssql) == true)
            {
                MessageBox.Show("Record Saved Successfully...");
            }

        }
        public string TranslateText(string input)
        {
            // Set the language from/to in the url (or pass it into this function)
            string url = String.Format
            ("https://translate.googleapis.com/translate_a/single?client=gtx&sl={0}&tl={1}&dt=t&q={2}",
             "en", "hi", Uri.EscapeUriString(input));
            HttpClient httpClient = new HttpClient();
            string result = httpClient.GetStringAsync(url).Result;

            // Get all json data
            var jsonData = new JavaScriptSerializer().Deserialize<List<dynamic>>(result);

            // Extract just the first array element (This is the only data we are interested in)
            var translationItems = jsonData[0];

            // Translation Data
            string translation = "";

            // Loop through the collection extracting the translated objects
            foreach (object item in translationItems)
            {
                // Convert the item array to IEnumerable
                IEnumerable translationLineObject = item as IEnumerable;

                // Convert the IEnumerable translationLineObject to a IEnumerator
                IEnumerator translationLineString = translationLineObject.GetEnumerator();

                // Get first object in IEnumerator
                translationLineString.MoveNext();

                // Save its value (translated text)
                translation += string.Format(" {0}", Convert.ToString(translationLineString.Current));
            }

            // Remove first blank character
            if (translation.Length > 1) { translation = translation.Substring(1); };

            // Return translation
            return translation;
        }

        protected void txtEnglishName_TextChanged(object sender, EventArgs e)
        {
            if (txtEnglishName.Text.Length > 0)
            {
                txtHindiName.Text = TranslateText(txtEnglishName.Text);
            }
        }

        protected void txtFatherEnglishName_TextChanged(object sender, EventArgs e)
        {
            if (txtFatherEnglishName.Text.Length > 0)
            {
                txtFatherHindiName.Text = TranslateText(txtFatherEnglishName.Text);
            }
        }

        protected void txtAddressEnglish_TextChanged(object sender, EventArgs e)
        {
            if (txtAddressEnglish.Text.Length > 0)
            {
                txtAddressHindi.Text = TranslateText(txtAddressEnglish.Text);
            }

        }

        protected void txtBuildingEnglishName_TextChanged(object sender, EventArgs e)
        {
            if (txtBuildingEnglishName.Text.Length > 0)
            {
                txtBuildingHindiName.Text = TranslateText(txtBuildingEnglishName.Text);
            }
        }

        protected void txtMargEnglish_TextChanged(object sender, EventArgs e)
        {
            if (txtMargEnglish.Text.Length > 0)
            {
                txtMargHindi.Text = TranslateText(txtMargEnglish.Text);
            }
        }

        protected void txtMohallaEnglish_TextChanged(object sender, EventArgs e)
        {
            if (txtMohallaEnglish.Text.Length > 0)
            {
                txtMohallaHindi.Text = TranslateText(txtMohallaEnglish.Text);
            }
        }

        protected void txtLandMarkEnglish_TextChanged(object sender, EventArgs e)
        {
            if (txtLandMarkEnglish.Text.Length > 0)
            {
                txtLandMarkHindi.Text = TranslateText(txtLandMarkEnglish.Text);
            }
        }

        protected void txtCityEnglish_TextChanged(object sender, EventArgs e)
        {
            if (txtCityEnglish.Text.Length > 0)
            {
                txtCityHindi.Text = TranslateText(txtCityEnglish.Text);
            }
        }

        protected void txtBlockEnglish_TextChanged(object sender, EventArgs e)
        {
            if (txtBlockEnglish.Text.Length > 0)
            {
                txtBlockHindi.Text = TranslateText(txtBlockEnglish.Text);
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void txtNames_TextChanged(object sender, EventArgs e)
        {
            if (txtNames.Text.Length > 0)
            {
                txtHindi.Text = TranslateText(txtNames.Text);
            }
        }
        protected void txtJilaEnglish_TextChanged(object sender, EventArgs e)
        {
            if (txtJilaEnglish.Text.Length > 0)
            {
                txtEnglishName.Text = txtJilaEnglish.Text;
                txtHindi.Text = TranslateText(txtJilaEnglish.Text);
                txtJilaHindi.Text = txtHindi.Text;
            }

        }
    }
}