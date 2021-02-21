
   <%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/Site1.Master" CodeBehind="FormC_Individual.aspx.cs" Inherits="BachatBazaar.FormC_Individual" %>



<asp:Content ID ="contents" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">
	<!-- //Web-Fonts -->
     
      <link href="Scripts/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="Scripts/jquery.min.js" ></script>
    <script src="Scripts/jquery-ui.min.js" ></script>
    <link href="Scripts/jquery-ui.css" rel="stylesheet" type="text/css" />
   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  
    <script type="text/javascript">  
        $(document).ready(function () {  
            $('#show_password').hover(function show() {  
                //Change the attribute to text  
                $('#txtPassword1').attr('type', 'text');  
                $('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');  
            },  
            function () {  
                //Change the attribute back to password  
                $('#txtPassword1').attr('type', 'password');  
                $('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');  
            });  
            //CheckBox Show Password  
            $('#ShowPassword').click(function () {  
                $('#Password').attr('type', $(this).is(':checked') ? 'text' : 'password');  
            });  
        });  
   
   
          function GetImage() {
             
             var x = document.getElementById("<%=txtRegNo.ClientID%>").value;
         
           window.open("ImageUploadReg.aspx?Id="+x,"_blank", "WIDTH=1080,HEIGHT=790,scrollbars=no, menubar=no,resizable=yes,directories=no,location=no");  
       }
       function doConfirm(){
           if (confirm("Are you sure you want to continue?")) {
               return true;

           }
           else {
               return false;
           }

}
   </script>
     <script type="text/javascript">
         $(function () {
             $("[id$=txtMenuDate]").datepicker({
                 showOn: 'button',
                 buttonImageOnly: true,
                 buttonImage: 'img/cal-icon.png',
                 dateFormat: "dd/mm/yy",
                 padding:'20px'

             });
          
         });
    </script>
    <style>
 
        .auto-style3 {
            height: 166px;
        }
 
        </style>

	<div class="mian-content">
		<!-- header -->
	
		<!-- //header -->

		<!-- banner 2 -->
		<div class="container-fluid">

            <img src="images/2a.jpg" width="100%" class="auto-style3" />
		</div>
		<!-- //banner 2 -->
	</div>
	<!-- main -->
	<!-- page details -->
	<div class="breadcrumb-agile container-fluid">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb m-0">
				<li class="breadcrumb-item">
					<a href="Default.aspx">Home</a>
				</li>
				<li class="breadcrumb-item active" aria-current="page">Registration</li>
			</ol>
		</nav>
	</div>
	<!-- //page details -->

	<!-- gallery page -->
	<div class="gallery py-5">
		
			<div class="title text-center mb-3" >
				<b><h3 style="color:black;">Registration - Form C Individual/Coordinator</h3></b>
			</div>
             
                <div style="margin-left:400px;" ><h3>प्रपत्र  <b>"C"</b>  आवेदन समन्यवक </h3></div>
        <br />
               <asp:UpdatePanel ID="updMenu" runat ="server" UpdateMode ="Conditional">
            <ContentTemplate>  
                       <div  style="margin-left:25px;">नोट :- सदयस्ता हेतु धनादेश " साकव सेवा संस्था " के नाम से दये होगा | <br />
फोटो,रसीद,आधार कार्ड, पेन कार्ड व स्वय 
के बकैं खाते का एक केंसल चेक सलग्न आवश्यक है |
                           <br />
                           इन सभी की सॉफ्ट कॉपी साथ में लेकर बैठे। अपलोड करते समय परेशानी नहीं हो।  
                          </div>
            
         <table style="width :150%" >
            <tr>
                <td valign="top" style ="padding-left :20px">
                    Reg No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtRegNo" runat ="server" Enabled ="false" ></asp:TextBox>
                    <br />
                    <br />
                        Ref. Member &nbsp;
                                        <asp:DropDownList ID="drpRefMember" runat="server">
                                            <asp:ListItem Text="SELECT" Value="SELECT"></asp:ListItem>
                                            <asp:ListItem Text="Sanket Joshi" Value="Sanket Joshi"></asp:ListItem>
                                            <asp:ListItem Text="Milind Karandekar" Value="Milind Karandekar"></asp:ListItem>
                                            <asp:ListItem Text="Sunil Thosre" Value="Sunil Thosre"></asp:ListItem>
                                            <asp:ListItem Text="Mrs. Poonam Kulkarni" Value="Mrs. Poonam Kulkarni"></asp:ListItem>
                                             <asp:ListItem Text="Rajshri Apte" Value="Rajshri Apte"></asp:ListItem>
                                            <asp:ListItem Text="Harshida Kapure" Value="Harshida Kapure"></asp:ListItem>
                                            <asp:ListItem Text="Praveen Salkade" Value="Praveen Salkade"></asp:ListItem>
                                            <asp:ListItem Text="Sushila Thosre" Value="Sushila Thosre"></asp:ListItem>
                                            <asp:ListItem Text="Mrudula Karandikar" Value="Mrudula Karandikar"></asp:ListItem>
                                            <asp:ListItem Text="Ujwala Karpe" Value="Ujwala Karpe"></asp:ListItem>
                                            <asp:ListItem Text="Mrunalini Kumbhojkar" Value="Mrunalini Kumbhojkar"></asp:ListItem>
                                            <asp:ListItem Text="Kanishka Joshi" Value="Kanishka Joshi"></asp:ListItem>
                                            <asp:ListItem Text="Mrs. Bakre Shubhda" Value="Mrs. Bakre Shubhda"></asp:ListItem>
                                            <asp:ListItem Text="Mr. Kulkarni " Value="Mr. Kulkarni"></asp:ListItem>
                                            <asp:ListItem Text="Amita Zare" Value="Amita Zare"></asp:ListItem>
                                        </asp:DropDownList>
                    <br />
                </td>
               
                </tr> 
                       
                      
                      </table> 
         <table  style ="padding-left :20px; width: 100%;" >
                   <tr>
                       <td width="40%" style ="padding-left :20px" >
                            प्रति, <br />
                           <br />
 &nbsp&nbsp&nbsp&nbsp&nbsp अध्यक्ष / सचिव  "साकव"
                           <br />
                           <br />
   मान्यवर,
                           <br />
          <br />
                        
                     नाम अंगरेजी मे 
                        <asp:TextBox class="form-control" ID="txtNames"  width="290px" runat ="server" OnTextChanged="txtNames_TextChanged" AutoPostBack ="true"  ></asp:TextBox>
                            उपनाम अंगरेजी मे
                            <asp:TextBox ID="txtSurnameEng" runat="server" AutoPostBack="true" class="form-control" OnTextChanged="txtSurnameEng_TextChanged" width="290px"></asp:TextBox>
                    </td>
                       <td width="60%">
                            <asp:Image ID="imgPhoto"  runat ="server" Height ="150px" Width ="120px" />
                            &nbsp;Photo<br />
                    
                             <asp:FileUpload ID="FileUpload1" runat="server"  />
                     <br />
                      <br />
                    <asp:Button ID="btnUpload" runat="server" Text="Upload"  OnClick="Upload" />
                       </td>
                
                </tr>
                    <tr style="margin-left:20px;" width="60%">
                                    
                                    <td>
                                        &nbsp;</td>
                                 
                                </tr>
                <tr>
                   
                      <td style ="padding-left :20px" >
              
                             नाम हिन्दी मे
       
                        <asp:TextBox class="form-control" ID="txtHindi"  width="290px" runat ="server" ></asp:TextBox>
                             उपनाम हिन्दी मे
                             <asp:TextBox ID="txtSurnameHindi" runat="server" class="form-control" width="290px" OnTextChanged="txtSurnameHindi_TextChanged"></asp:TextBox>
                    </td>
                   
                </tr>


                 </table>
                <br />
         <table width="100%" style="margin-left:20px;">
                               
                <tr>
                    <td>
                    
                        मै संस्था &quot;साकव&quot; की वार्षिक सदस्यता प्रवज्ञ &quot;C&quot; श्रेणी (समन्यवक) की सदस्यता प्राप्त करने हेतु आवेदन कर रहा/रही&nbsp; हु |&nbsp; मैने<br /> सदस्यता सम्बंधित सर्वे कर्तव्य ,&nbsp; अधिकार व&nbsp; नियम पढ़ लिए है व वे मुझे मान्य है और समय समय&nbsp; पर किये गए संशोधित
                        <br />
                        कर्तव्य, अधिकार व नियम मुझे मान्य होंगे&nbsp; व&nbsp; मेरे द्वारा दी गई&nbsp;&nbsp; जानकारी सत्य है&nbsp; इस के लिए मै&nbsp; पूर्ण रूप&nbsp; से जिम्मेदार
                        <br />
                        रहूँगा/ रहूंगी यदि जानकारी असत्य&nbsp; हुई तो&nbsp; संस्था द्वारा लिया गया निर्णय मुझे बंधनकारक होगा व उसके विरुद्ध&nbsp; मै कोई वाद<br /> उत्पन्नय नहीं करुगा/करुँगी व ऐसा कोई कार्य नहीं करुगा/करुँगी&nbsp;&nbsp; जो संस्था के व उसके कार्य&nbsp; के विरुद्ध हो |&nbsp; अत: इस हेतु मै<br /> निर्धारिक सदस्यता शुल्क रूपये 1000/- वार्षिक प्रपत्र &quot;C&quot; श्रेणी समन्यवक के लिए राशी नगद / ड्राफ्ट /चेक क्रमांक |<br />
                        <br />
                        <input  name="text" style="width:170px;"  runat="server" id="txtChequeNo"> के &nbsp; &nbsp; बैंक / शाखा
                        <input id="txtBankName"  style="width:170px; text-transform:uppercase;" runat ="server"  name="text"> के &nbsp; दिनांक
                        <input id="txtChequeDate" runat ="server"  name="text" placeholder="dd/mm/yyyy" style="width:170px;" > के द्वारा<br />
                        <br />
                        जमा कर रहा / रही हु | </input></input></input></div>
                   </td>
                    </tr> 
                        <caption>
                            <br />
                            <br />
                            <table style="margin-left:10px;" width="100%">
                                <tr>
                                    <td style="height: 28px" width="20%">विवरण </td>
                                    <td style="height: 28px" width="20%">इंग्लिश कैपिटल लेटर्स में </td>
                                    <td style="height: 28px" width="40%">हिन्दी में </td>
                                </tr>
                                <tr>
                                    <td>नाम </td>
                                    <td>
                                        <asp:TextBox ID="txtEnglishName" runat="server" AutoPostBack="true" class="form-control" OnTextChanged="txtEnglishName_TextChanged" width="190px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtHindiName" runat="server" class="form-control" width="190px"></asp:TextBox>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>उपनाम </td>
                                    <td>
                                        <asp:TextBox ID="txtEnglishSurname" runat="server" AutoPostBack="true" class="form-control" OnTextChanged="txtEnglishSurname_TextChanged" width="190px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtHindiSurname" runat="server" class="form-control" width="190px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>पिता/पति का नाम </td>
                                    <td>
                                        <asp:TextBox ID="txtFatherEnglishName" runat="server" AutoPostBack="true" class="form-control" OnTextChanged="txtFatherEnglishName_TextChanged" width="190px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtFatherHindiName" runat="server" class="form-control" width="190px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>पता घर क्र. </td>
                                    <td>
                                        <asp:TextBox ID="txtAddressEnglish" runat="server" AutoPostBack="true" class="form-control" OnTextChanged="txtAddressEnglish_TextChanged" width="190px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtAddressHindi" runat="server" class="form-control" width="190px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>घर/बिल्डिंग का नाम </td>
                                    <td>
                                        <asp:TextBox ID="txtBuildingEnglishName" runat="server" AutoPostBack="true" class="form-control" OnTextChanged="txtBuildingEnglishName_TextChanged" width="190px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBuildingHindiName" runat="server" class="form-control" width="190px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>मार्ग क्र. / नाम </td>
                                    <td>
                                        <asp:TextBox ID="txtMargEnglish" runat="server" AutoPostBack="true" class="form-control" OnTextChanged="txtMargEnglish_TextChanged" width="190px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtMargHindi" runat="server" class="form-control" width="190px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>मोहल्ला/ कॉलोनी </td>
                                    <td>
                                        <asp:TextBox ID="txtMohallaEnglish" runat="server" AutoPostBack="true" class="form-control" OnTextChanged="txtMohallaEnglish_TextChanged" width="190px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtMohallaHindi" runat="server" class="form-control" width="190px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>लैंडमार्क / एरिया </td>
                                    <td>
                                        <asp:TextBox ID="txtLandMarkEnglish" runat="server" AutoPostBack="true" class="form-control" OnTextChanged="txtLandMarkEnglish_TextChanged" width="190px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtLandMarkHindi" runat="server" class="form-control" width="190px"></asp:TextBox>
                                    </td>
                                </tr>
                                 <tr>
                    <td>
                        
                        राज्य   
                    </td>
                    <td>
                         

            <asp:DropDownList ID="DrpState" class="dropdown-toggle" style="width:200px;" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DrpState_SelectedIndexChanged">
                                        </asp:DropDownList>
                        <%--<asp:TextBox class="form-control" ID="txtStateEnglish"  width="190px" runat ="server" OnTextChanged="txtStateEnglish_TextChanged" AutoPostBack ="true"></asp:TextBox>--%>
                    </td>
                    <td>
                        <%--<asp:TextBox class="form-control" ID="txtStateHindi"  width="190px"  runat ="server" ></asp:TextBox>--%>     
                    </td>
                </tr>
                                <tr>
                                    <td>शहर </td>
                                    <td>
                                          <asp:DropDownList ID="DrpCity"   style="width:200px;" runat="server" OnSelectedIndexChanged="DrpCity_SelectedIndexChanged" AutoPostBack="true">
                                        
                                        </asp:DropDownList>
                                        <asp:TextBox ID="txtCityEnglish" runat="server" Visible="false" AutoPostBack="true" class="form-control" OnTextChanged="txtCityEnglish_TextChanged" width="190px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtCityHindi" runat="server" Visible="false" class="form-control" width="190px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>तहसील </td>
                                    <td>
                                        <asp:TextBox ID="txtBlockEnglish" runat="server" AutoPostBack="true" class="form-control" OnTextChanged="txtBlockEnglish_TextChanged" width="190px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtBlockHindi" runat="server" class="form-control" width="190px"></asp:TextBox>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>जिला </td>
                                    <td>
                                        
                                        <asp:TextBox ID="txtJilaEnglish" runat="server"  AutoPostBack="true" class="form-control" OnTextChanged="txtJilaEnglish_TextChanged" width="190px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtJilaHindi" runat="server" Visible="false" class="form-control" width="190px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>पिन </td>
                                    <td>
                                         <asp:DropDownList  style="width:100px;" ID="DrpPinCode" runat="server" >
                                        </asp:DropDownList>
                                        <asp:TextBox ID="txtPin" runat="server" Visible="false" class="form-control" width="190px"></asp:TextBox>
                                    </td>
                                    <td><%--<asp:TextBox ID="TextBox2" runat ="server" ></asp:TextBox>--%></td>
                                </tr>
                                <tr>
                                    <td colspan="3"></td>
                                </tr>
                                <caption>
                                    <br />
                                    <table style="margin-left:0px;" width="78%">
                                        <tr>
                                            <td>मोबाईल </td>
                                            <td>
                                                <asp:TextBox ID="txtMobile" runat="server" class="form-control" width="190px"></asp:TextBox>
                                            </td>
                                            <td>फ़ोन एस टी डी </td>
                                            <td>
                                                <asp:TextBox ID="txtPhone" runat="server" class="form-control" width="190px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>ईमेल आय डी </td>
                                            <td colspan="3">
                                                <asp:TextBox ID="txtEmail" runat="server" class="form-control" width="350px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>पेन क्रमांक </td>
                                            <td>
                                                <asp:TextBox ID="txtPANno" runat="server" class="form-control" width="190px"></asp:TextBox>
                                            </td>
                                            <td>आधार क्र </td>
                                            <td>
                                                <asp:TextBox ID="txtAdhaarNo" runat="server" class="form-control" width="190px"></asp:TextBox>
                                            </td>
                                        </tr>
                                       
                                        <caption>
                                            <br />
                                            <tr>
                                                <td>Username 
                                                    &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtUserName" runat="server" placeholder="User Name" ></asp:TextBox>
                                                </td>
                                                <td>
                                                    Password
                                                    &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtPassword" Type="password" runat="server" placeholder="Password" TextMode="Password" onclick="myFunction();" ></asp:TextBox>
                                                   <%-- <asp:CheckBox ID="chkShowPWD" runat ="server" AutoPostBack ="true" Text="view" OnCheckedChanged="chkShowPWD_CheckedChanged" /> --%>
                                                    <input type="checkbox" id="pass" onclick="showpass(this);" />
           
            <script type="text/javascript">
                function showpass(check_box) {
                    var spass = document.getElementById("<%=txtPassword.ClientID%>");
                    if (check_box.checked)
                        spass.setAttribute("type", "text");
                    else
                        spass.setAttribute("type", "password");
                }
           </script>
                                               
                                                </td>
                                           
                                                <td>Confirm Password&nbsp;
                                                    <asp:TextBox ID="txtConfirmPassword" runat="server" OnTextChanged="txtConfirmPassword_TextChanged" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                                </td>
                                                <caption>
                                                    
                                                    <tr>
                                                        <td align="left">&nbsp;</td>
                                                    </tr>
                                                </caption>
                                            </tr>
                                        </caption>
                                    </table>
                                </caption>
                            </table>
                            </td>
                </caption>
            </table>
                
         <%--  <div>
      
 </div>--%>
             </ContentTemplate>
                    <Triggers>
        <asp:PostBackTrigger ControlID = "btnUpload" />
    </Triggers>
     </asp:UpdatePanel> 
        
        <%-- <div  style="margin-left:135px;">नोट :- सदयस्ता हेतु धनादेश " साकव सेवा संस्था " के नाम से दये होगा | <br />
आधार कार्ड, पने कार्ड की स्पष्ट फोटो कॉपी व स्वय 
के बकैं खाते का एक केंसल चेक सलग्न आवश्यक है  <br />
                          </div>--%>
     
        <div align="right" style=" width:80%">हस्ताक्षर

                 
         <table width="100%">
              <tr>
                                            <td>
                                                <button id="btnUploading" runat="server" name="Upload" onclick="GetImage();" type="button">
                                                    Upload Images  </tr>
             </button>
              <tr>
                                <td colspan ="8" align="center">
                                  
                                 <asp:Button type="button" class="btn btn-primary" ID="btnSubmit" OnClientClick ="return doConfirm();" runat ="server"  Text ="SUBMIT" OnClick="btnSubmit_Click"/>

                                </td>
                            </tr>

        </table>
	</div>
    <%--  <script>
		$('.navicon').on('click', function (e) {
			e.preventDefault();
			$(this).toggleClass('navicon--active');
			$('.toggle').toggleClass('toggle--active');
		});
	</script>--%>
	<!-- //menu-js -->

	<!-- smooth scrolling -->
    <%--<script src="js/SmoothScroll.min.js"></script>
	<!-- move-top -->
	<script src="js/move-top.js"></script>
	<!-- easing -->
	<script src="js/easing.js"></script>
	<!--  necessary snippets for few javascript files -->
	<script src="js/cakes-bakery.js"></script>
    <script src="js/bootstrap.js"></script>--%>
   </asp:Content> 