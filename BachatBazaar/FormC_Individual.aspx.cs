using System;
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
using System.IO;

namespace BachatBazaar
{
    public partial class FormC_Individual : System.Web.UI.Page
    {
      

            DataTable dt;
            DataRow dr;
            bool isSave = false;
            MyDataConnection MDC = new MyDataConnection();
            protected void Page_Load(object sender, EventArgs e)
            {
                   getRegNo();
            if (!IsPostBack)
            {
                GetState();
            }
            }
        protected void GetState()
        {
            DataTable dt = MDC.getDataTable("select distinct State from RTO");
            if (dt.Rows.Count > 0)
            {
                DrpState.DataSource = dt;
                DrpState.DataTextField = "State";
                DrpState.DataValueField = "State";
                DrpState.DataBind();
            }
        }
        protected void GetPinCode()
        {
            DataTable dt = MDC.getDataTable("select distinct PinCode from Pincode where State='"+DrpState.Text+"' and City='"+DrpCity.Text+"'");
            if (dt.Rows.Count > 0)
            {
                DrpPinCode.DataSource = dt;
                DrpPinCode.DataTextField = "Pincode";
                DrpPinCode.DataValueField = "Pincode";
                DrpPinCode.DataBind();
            }
        }
        protected void GetJila()
        {
            DataTable dt = MDC.getDataTable("select distinct DistrictsName from Pincode where State='" + DrpState.Text + "' and City='" + DrpCity.Text + "'");
            if (dt.Rows.Count > 0)
            {
                txtJilaEnglish.Text = dt.Rows[0][0].ToString(); 
            }
        }
        protected void getRegNo()
        {
            DataTable dt = MDC.getDataTable("select max(PK_APP_ID) from Individual_App");
            if (dt.Rows.Count > 0)
            {
                txtRegNo.Text = Convert.ToInt32(Convert.ToInt32(dt.Rows[0][0].ToString()) + 1).ToString();
            }


        }
        protected void Upload(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Files/");

            string strPath = FileUpload1.FileName.ToString();

            string[] authorsList = strPath.Split('.');
            string fName = "";
            string fExt = "";
            int i = 0;
            foreach (string author in authorsList)
            {
                //   Console.WriteLine(author);
                if (i<=0)
                {
                    fName = author.ToString();
                }
                else
                {
                    fExt = author.ToString();

                }
                i = i + 1;
            }

            strPath = txtRegNo.Text+"."+fExt;

            fName = strPath; 
            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            //FileUpload1.SaveAs(folderPath +System.IO.Path.GetFileName(FileUpload1.FileName));
            FileUpload1.SaveAs(folderPath + System.IO.Path.GetFileName(fName));

            //Display the Picture in Image control.
          //  imgPhoto.ImageUrl = "~/Files/" + System.IO.Path.GetFileName(FileUpload1.FileName);
            imgPhoto.ImageUrl = "~/Files/" + System.IO.Path.GetFileName(fName);
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
            {
                // dt=MDC.getDataTable("select * from ")
                //string ttx = TranslateText("Hello");
                string ssql = "";
            //ssql = "select * from Society_App_FormC where PK_APP_IDFromC=0";
            //DataTable dt = MDC.getDataTable("Select * from Society_App_FormC where PK_APP_IDFromC=0");

            if (drpRefMember.Text == "SELECT")
            {
                MessageBox.Show("Please Select Reference Member!");
                return;

            }
            if (txtEnglishName.Text.Length<=0)
            {
                MessageBox.Show("Please Enter Name!");
                return;

            }
          
           if (txtEnglishSurname.Text.Length <= 0)
            {
                MessageBox.Show("Please Enter SurName!");
                return;

            }
            if (txtFatherEnglishName.Text.Length <= 0)
            {
                MessageBox.Show("Please Enter Father's Name!");
                return;

            }
            if (txtNames.Text.Length <= 0)
            {
                MessageBox.Show("Please Enter Name!");
                return;

            }
            if (txtAddressEnglish.Text.Length <= 0)
            {
                MessageBox.Show("Please Enter Address!");
                return;

            }
            if (txtBuildingEnglishName.Text.Length <= 0)
            {
                MessageBox.Show("Please Enter Building Name !");
                return;

            }
            if (txtMargEnglish.Text.Length <= 0)
            {
                MessageBox.Show("Please Enter Area!");
                return;

            }
            if (txtMohallaEnglish.Text.Length <= 0)
            {
                MessageBox.Show("Please Enter Colony!");
                return;

            }
            if (txtLandMarkEnglish.Text.Length <= 0)
            {
                MessageBox.Show("Please Enter Land Mark!");
                return;

            }
          
            if (txtBlockEnglish.Text.Length <= 0)
            {
                MessageBox.Show("Please Enter Tehsil!");
                return;

            }
           
            if (txtMobile.Text.Length <= 0)
            {
                MessageBox.Show("Please Enter Mobile!");
                return;

            }
            if (txtPhone.Text.Length <= 0)
            {
                MessageBox.Show("Please Enter STD Phone!");
                return;

            }
            if (txtEmail.Text.Length <= 0)
            {
                MessageBox.Show("Please Enter Email ID !");
                return;

            }
            if (txtPANno.Text.Length <= 0)
            {
                MessageBox.Show("Please Enter PAN CARD !");
                return;

            }
      
            if (txtAdhaarNo.Text.Length <= 0)
            {
                MessageBox.Show("Please Enter Aadhar No!");
                return;

            }
           
            //if (Button2.Text.Length <= 0)
            //{
            //    MessageBox.Show("Please Upload Image!");
            //    return;

            //}

            if (txtConfirmPassword.Text != txtPassword.Text)
            {
                MessageBox.Show("Password & Confirm Password must be same");
                return;
            }
            if (txtChequeNo.Value.Length <= 0)
            {
                MessageBox.Show("Please Enter Cheque No!");
                return;

            }
            if (txtBankName.Value.Length <= 0)
            {
                MessageBox.Show("Please Enter Bank Name!");
                return;

            }
            if (txtChequeDate.Value.Length <= 0)
            {
                MessageBox.Show("Please Enter Date !");
                return;

            }



            //Anji
            ssql = "select * from Individual_App where PK_APP_ID=0";
            DataTable dt = MDC.getDataTable("select * from Individual_App where PK_APP_ID=0");


            DataRow dr;
                dr = dt.NewRow();

            //            PK_C_ID int Unchecked
            //TypeId  int Unchecked
            //TypeName nvarchar(100)	Unchecked
           // dr["PK_APP_ID"] = txtRegNo.Text;
            dr["TypeName"] = "Form_C_Individual";
            dr["UpperNameEnglish"] = txtNames.Text; //  nvarchar(20t0)   Unchecked
            dr["UpperNameHindi"] = txtHindi.Text; //     nvarchar(200)   Checked
            dr["SurNameEng"] = txtEnglishSurname.Text;
            dr["SurNameHindi"] = txtHindiSurname.Text;
            dr["State"] = DrpState.Text;
            dr["Address"] = txtAddressEnglish.Text; //  nvarchar(20t0)   Unchecked
            dr["AddressHindi"] = txtAddressHindi.Text; //     nvarchar(200)   Checked
            dr["Address1"] = txtBuildingEnglishName.Text; //  nvarchar(20t0)   Unchecked
            dr["AddressHindi1"] = txtBuildingHindiName.Text; //     nvarchar(200)   Checked
            dr["Address2"] = txtMargEnglish.Text; //  nvarchar(20t0)   Unchecked
            dr["AddressHindi2"] = txtMargHindi.Text; //     nvarchar(200)   Checked
            dr["Address3"] = txtMohallaEnglish.Text; //  nvarchar(20t0)   Unchecked
            dr["AddressHindi3"] = txtMohallaHindi.Text; //     nvarchar(200)   Checked
            dr["Address4"] = txtLandMarkEnglish.Text; //  nvarchar(20t0)   Unchecked
            dr["AddressHindi4"] = txtLandMarkHindi.Text; //     nvarchar(200)   Checked
 
            dr["Tehsil"] = txtBlockEnglish.Text;
      
            dr["TehsilHindi"] = txtBlockHindi.Text;
            dr["PIN"] = DrpPinCode.Text;  

        
            dr["RefMember"] = drpRefMember.Text;
            dr["City"] = DrpCity.Text;
            //dr["CityHindi"] = txtCityHindi.Text;   // nvarchar(50)    Checked

            dr["Landmark"] = txtLandMarkEnglish.Text; //     nvarchar(200)   Checked
                dr["LandmarkHindi"] = txtLandMarkHindi.Text; //    nvarchar(200)   Checked
                dr["ChequeNo"] = txtChequeNo.Value; //    nvarchar(200)   Checked
                dr["BankName"] = txtBankName.Value; //    nvarchar(200)   Checked
                dr["IsApproved"] = false; //    nvarchar(200)   Checked
               // dr["City"] = DrpCity.Text;

            if (txtChequeDate.Value.Length > 0)
                {
                    dr["ChequeDate"] = Convert.ToDateTime(txtChequeDate.Value);                                   //District    nvarchar(50)    Checked
                }
                                                //DistrictHindi   nvarchar(50)    Checked
                                                //Tehsil  nvarchar(50)    Checked
                                                //TehsilHindi nvarchar(50)    Checked
                                                //StateiId    int Checked
                                                //CountryId   int Checked
            dr["MailId"] = txtEmail.Text;
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
            dr["SurNameHindi1"] = txtSurnameHindi.Text;
            dr["SurNameEng1"] = txtSurnameEng.Text;
                dr["FatherName"] = txtFatherEnglishName.Text;
                dr["FatherNameHindi"] = txtFatherHindiName.Text;
                dr["UserName"] = txtUserName.Text;
                dr["Password"] = txtPassword.Text;
            dr["District"] = txtJilaEnglish.Text;
            dr["DistrictHindi"] = txtJilaHindi.Text;


            dt.Rows.Add(dr);

                if (MDC.InsertData(dt, dr, ssql) == true)
                {
                    MessageBox.Show("Record Saved Successfully...");
                clearAll(); 
                }

            }
        protected void clearAll()
        {
            txtRegNo.Text = "";
            txtNames.Text = "";
            txtHindi.Text = "";
            txtSurnameHindi.Text = "";
            txtAddressEnglish.Text = "";
            txtHindiSurname.Text = "";
            txtSurnameEng.Text = "";
            txtEnglishSurname.Text = "";
            txtAddressHindi.Text = "";
            txtJilaEnglish.Text = "";
            txtJilaHindi.Text = "";
            txtBuildingEnglishName.Text = "";
            txtBuildingHindiName.Text = "";
            txtMargEnglish.Text = "";
            txtMargHindi.Text = "";
            txtMohallaEnglish.Text = "";
            txtMohallaHindi.Text = "";
            //DrpState.Text = "SELECT";
            //DrpCity.Text = "SELECT";
            //DrpPinCode.Text = "SELECT";
            txtLandMarkEnglish.Text = "";
            txtLandMarkHindi.Text = "";
            txtHindiName.Text = "";
            txtBlockEnglish.Text = "";
            txtPin.Text = "";
            txtBlockHindi.Text = "";
            txtHindiName.Text = "";
            txtUserName.Text = "";
            drpRefMember.Text = "";
            txtMobile.Text = "";
            txtPANno.Text = "";
            txtPhone.Text = "";
            txtUserName.Text = "";
            txtCityEnglish.Text = "";
            txtCityHindi.Text = "";
            txtMobile.Text = "";
            txtPANno.Text = "";
            txtPhone.Text = "";
            txtAdhaarNo.Text = "";
            txtLandMarkEnglish.Text = "";
            //
            txtEnglishName.Text = "";
            txtHindiName.Text = "";
            txtUserName.Text = "";
            txtFatherEnglishName.Text = "";
            txtFatherHindiName.Text = "";
            //
            txtRegNo.Text = "";
            txtChequeNo.Value= "";
            txtChequeDate.Value = "";
            txtEmail.Text = "";
            txtBankName.Value = "";
            imgPhoto.ImageUrl = "";
            drpRefMember.Text = "SELECT";
            //DrpState.Text = "SELECT";

         




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

    
            protected void txtNames_TextChanged(object sender, EventArgs e)
            {
                if (txtNames.Text.Length > 0)
                {
                    txtEnglishName.Text = txtNames.Text;   
                    txtHindi.Text = TranslateText(txtNames.Text);
                    txtHindiName.Text = txtHindi.Text;
                }

            }

        protected void txtConfirmPassword_TextChanged(object sender, EventArgs e)
        {
            if (txtConfirmPassword.Text != txtPassword.Text)
            {
                MessageBox.Show("Password & Confirm Password must be same");
                return; 

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

        protected void txtEnglishSurname_TextChanged(object sender, EventArgs e)
        {
            if (txtEnglishSurname.Text.Length > 0)
            {
                
                txtHindiSurname.Text = TranslateText(txtEnglishSurname.Text);
               
            }

        }

        protected void txtSurnameEng_TextChanged(object sender, EventArgs e)
        {
            if (txtSurnameEng.Text.Length > 0)
            {
               
                txtEnglishSurname.Text = txtSurnameEng.Text;
                txtSurnameHindi.Text = TranslateText(txtSurnameEng.Text);
                txtHindiSurname.Text = txtSurnameHindi.Text;
                // txtHindiName.Text = txtSurnameHindi.Text;
            }

        }

        protected void DrpCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DrpCity.Text.Length>0 && DrpState.Text.Length>0)
            {
                GetPinCode();
                GetJila();
                DataTable dt = MDC.getDataTable("select distinct CityCode from RTO where City='" + DrpCity.Text.Trim() + "'");
                if (dt.Rows.Count > 0)
                {
                    // txtUserName.Text = "CI"  +  dt.Rows[0]["CityCode"].ToString() +  txtRegNo.Text;
                    txtUserName.Text = "CI" + "-" + dt.Rows[0]["CityCode"].ToString() + "-" + txtRegNo.Text;
                }

            }
        }

        protected void DrpState_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DrpState.Text.Length > 0)
            {
                DataTable dt = MDC.getDataTable("select distinct City from RTO where State='" + DrpState.Text + "'");
                if (dt.Rows.Count > 0)
                {
                    DrpCity.DataSource = dt;
                    DrpCity.DataTextField = "City";
                    DrpCity.DataValueField = "City";
                    DrpCity.DataBind();
                    
                }
            }
        }

        protected void txtSurnameHindi_TextChanged(object sender, EventArgs e)
        {

        }

    
    }
    }


