
<%@ Page Language="C#" AutoEventWireup="True" MasterPageFile ="~/Site1.Master" CodeBehind="Form_C_Society.aspx.cs" Inherits="BachatBazaar.Form_C_Society" %>



<asp:Content ID ="contents" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- //Web-Fonts -->
    <%--  <link href="Scripts/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="Scripts/jquery.min.js" ></script>
    <script src="Scripts/jquery-ui.min.js" ></script>
    <link href="Scripts/jquery-ui.css" rel="stylesheet" type="text/css" />

   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>--%>
     <script>
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
 
  
	<div class="mian-content">
		<!-- header -->
	
		<!-- //header -->

		<!-- banner 2 -->
		<div class="container">
              <img src="images/2a.jpg"  class="img-fluid" style="height:250px;"  width="100%"  />
        <%--    <img src="images/5.jpg"  height="269" class="img-fluid"  >--%>
		</div>
		<!-- //banner 2 -->
	</div>
	<!-- main -->
	<!-- page details -->
	<div class="breadcrumb-agile">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb m-0">
				<li class="breadcrumb-item">
					<a href="Default.aspx">Home</a>
				</li>
				<li class="breadcrumb-item active" aria-current="page">Registration - Form C Society</li>
			</ol>
		</nav>
	</div>
	<!-- //page details -->

	<!-- gallery page -->
	<div class="gallery py-5">
		
			<div class="title text-center mb-5">
				<h2 class="text-dark mb-2">Registration - Form C Society</h2>
                <h4 class="text-dark mb-2">प्रपत्र <b>"C"</b> आवेदन समन्यवक  
                      </h4>
			</div>
         <div style="margin-left:10px;">
          नोट:- सदस्यता हेतु  धनादशे " साकव सेवा  संस्था " के नाम से देय होगा | <br />
1. संस्था पंजीकरण &nbsp&nbsp&nbsp 2. सदस्यता लेने हेतु संस्था के ठराव की प्रत &nbsp&nbsp&nbsp 3. कायगकारणी सूचि<br />
 4. प्रतिनिधियों  के आधार कार्ड फोटो कॉपी&nbsp&nbsp&nbsp 5. एक केंसल चेक  &nbsp&nbsp&nbsp 6. पेन कार्ड की फोटोकॉपी <br />
            इन सभी की सॉफ्ट कॉपी साथ में लेकर बैठे। अपलोड करते समय परेशानी नहीं हो।  
                    </div>
        
               <asp:UpdatePanel ID="updMenuaaa" runat ="server" UpdateMode ="Conditional">
            <ContentTemplate> 
                <table>
            <tr>
                <td>
                    Reg No.;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtRegNo" runat ="server" Enabled ="false" ></asp:TextBox>
                </td>
            </tr>
        </table>
                <br />
        
                <table style="width :100%"; style ="margin-left :5px">
                  
                    <tr>
                                  
                                    <td colspan="2" style ="padding-left :10px">
                                            Ref. Member
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
                                    </td>
                                </tr>
                    </table>
                          

               
                  <div style="margin-left:450px;">  
                      <br />
                    <br />

            
                        </div>
              
                    
                  
                 <table width="100%" style="margin-left:5px;" >
                   <tr>
                       <td>
                            प्रति, <br />
                           <br />
 &nbsp&nbsp&nbsp&nbsp&nbsp अध्यक्ष / सचिव "साकव"
                           <br />
                           <br />
   मान्यवर,
                           <br />
                            <br />
                         संस्था का नाम अंगरेजी मे
                        
                        <asp:TextBox class="form-control" ID="txtNames"   runat ="server" OnTextChanged ="txtNames_TextChanged" AutoPostBack ="true"  style="width:420px;"></asp:TextBox>
                    </td>
                
                </tr>
                <tr>
                   
                      <td>
                           संस्था का नाम हिन्दी मे
       
                        <asp:TextBox class="form-control" ID="txtHindi"  width="790px" runat ="server" style="width:420px;" ></asp:TextBox>
                    </td>
                   
                </tr>

                 </table>
                    <br>
            <table width="100%" style="margin-left:0px;">
                <tr>
                    <td>
                <br />
               <div style="margin-left:10px;">        मै संस्था "साकव" की वार्षिक  सदस्यता प्रवज्ञ "C" श्रेणी (समन्यवक) की सदस्यता प्राप्त करने हेतु आवेदन कर रहा/रही हु| मैने 
सदस्यता सम्बंधित <br /> सर्वे  कर्तव्य , अधिकार  व नियम पढ़ लिए  है व वे मुझे मान्य है और समय समय पर किये गए संशोधित 
कर्तव्य, अधिकार व नियम मुझे मान्य होंगे<br /> व मेरे द्वारा दी गई जानकारी सत्य है इस के लिए मै पूर्ण रूप से जिम्मेदार रहूँगा/
 रहूंगी यदि जानकारी असत्य हुई तो संस्था द्वारा लिया गया निर्णय <br /> मुझे बंधनकारक होगा व उसके विरुद्ध मै कोई वाद उत्पन्नय
नहीं करुगा/करुँगी व ऐसा कोई कार्य नहीं करुगा/करुँगी जो  संस्था के व उसके कार्य के <br />विरुद्ध हो | अत: इस हेतु मै निर्धारिक 
सदस्यता शुल्क रूपये 1000/- वार्षिक प्रपत्र "C" श्रेणी समन्यवक के लिए राशी नगद / ड्राफ्ट /चेक क्र<br />    
                   <br />
                   <input  name="text" style="width:170px;"  runat="server" id="txtChequeNo"> के &nbsp; &nbsp; बैंक / शाखा
                        <input id="txtBankName" style="width:170px; text-transform:uppercase;" runat ="server"  name="text" > के &nbsp; दिनांक
                        <input id="txtChequeDate" runat ="server"  name="text" placeholder="dd/mm/yyyy" style="width:170px;" >  के द्वारा<br /> 
                   <br />
                   जमा कर रहा / रही हु |

               </div>
                        </td>
                    </tr>

                </table> 
                   <br />
                <br />
                 <table width="100%" style="margin-left:10px;">
                <tr>
                    <td width="30%" style="height: 28px">
                        विवरण
                    </td>
                    <td width="30%" style="height: 28px">
                        इंग्लिश कैपिटल लेटर्स में 
                    </td>
                    <td width="40%" style="height: 28px">
                          हिन्दी में
                    </td>
                </tr>
                <tr>
                    <td>
                        नाम प्रतिनिधि  क्र 1
                    </td>
                    <td>

     
                        
                        <asp:TextBox class="form-control" ID="txtEnglishName"   width="190px" runat ="server" OnTextChanged="txtEnglishName_TextChanged" AutoPostBack ="true"  ></asp:TextBox>
                    </td>
                    <td>
                                       
                        <asp:TextBox class="form-control" ID="txtHindiName"  width="190px" runat ="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        नाम प्रतिनिधि  क्र 2
                    </td>
                    <td>
       
                        <asp:TextBox class="form-control" ID="txtFatherEnglishName"  width="190px" runat ="server" OnTextChanged="txtFatherEnglishName_TextChanged" AutoPostBack ="true"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="txtFatherHindiName"  width="190px" runat ="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        पता संस्था का घर क्र. 
                    </td>
                    <td>
                <asp:TextBox class="form-control" ID="txtAddressEnglish"  width="190px" runat ="server" OnTextChanged="txtAddressEnglish_TextChanged" AutoPostBack ="true"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="txtAddressHindi"  width="190px" runat ="server" ></asp:TextBox>                        
                    </td>
                </tr>
                 <tr>
                    <td>
                        घर/बिल्डिंग का नाम 
                    </td>
                    <td>
                      <asp:TextBox class="form-control" ID="txtBuildingEnglishName"  width="190px" runat ="server" OnTextChanged="txtBuildingEnglishName_TextChanged" AutoPostBack ="true"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox  class="form-control" ID="txtBuildingHindiName"  width="190px" runat ="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        मार्ग क्र. / नाम 
                    </td>
                    <td>
       
                     <asp:TextBox class="form-control" ID="txtMargEnglish"  width="190px" runat ="server" OnTextChanged="txtMargEnglish_TextChanged" AutoPostBack ="true"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="txtMargHindi"  width="190px" runat ="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        मोहल्ला/ कॉलोनी  
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="txtMohallaEnglish"  width="190px" runat ="server" OnTextChanged="txtMohallaEnglish_TextChanged" AutoPostBack ="true"></asp:TextBox>
                        
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="txtMohallaHindi"  width="190px" runat ="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        लैंडमार्क / एरिया   
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="txtLandMarkEnglish"  width="190px" runat ="server" OnTextChanged="txtLandMarkEnglish_TextChanged" AutoPostBack ="true"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="txtLandMarkHindi"  width="190px" runat ="server" ></asp:TextBox>  
                    </td>
                </tr>
                      <tr>
                    <td>
                        
                        राज्य   
                    </td>
                    <td>
                        
          <asp:DropDownList ID="DrpState" runat="server" Width="180" AutoPostBack="true" OnSelectedIndexChanged="DrpState_SelectedIndexChanged">
                                        </asp:DropDownList>
                        <%--<asp:TextBox class="form-control" ID="txtStateEnglish"  width="190px" runat ="server" OnTextChanged="txtStateEnglish_TextChanged" AutoPostBack ="true"></asp:TextBox>--%>
                    </td>
                    <td>
                        <%--<asp:TextBox class="form-control" ID="txtStateHindi"  width="190px"  runat ="server" ></asp:TextBox>--%>     
                    </td>
                </tr>
                <tr>
                    <td>
                        शहर   
                    </td>
                    <td>
                        <asp:DropDownList ID="DrpCity" runat="server" Width="180" OnSelectedIndexChanged="DrpCity_SelectedIndexChanged" AutoPostBack="true">
                                        
                                        </asp:DropDownList>
                           
                                       
                        <asp:TextBox class="form-control" ID="txtCityEnglish" Visible="false" width="190px" runat ="server" OnTextChanged="txtCityEnglish_TextChanged" AutoPostBack ="true"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="txtCityHindi" Visible="false" width="190px"  runat ="server" ></asp:TextBox>     
                    </td>
                </tr>
                <tr>
                    <td>
                        तहसील    
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="txtBlockEnglish"  width="190px" runat ="server" OnTextChanged="txtBlockEnglish_TextChanged" AutoPostBack ="true"></asp:TextBox>
                        
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="txtBlockHindi"  width="190px" runat ="server" ></asp:TextBox>
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
                    <td>
                        पिन    
                    </td>
                    <td>
                              <asp:DropDownList ID="DrpPinCode" runat="server">
                                        </asp:DropDownList>
                        <asp:TextBox class="form-control" ID="txtPin" Visible="false"  width="190px" runat ="server" ></asp:TextBox>
                    </td>
                    <td>
                        <%--<asp:TextBox ID="TextBox2" runat ="server" ></asp:TextBox>--%>
                    </td>
                </tr>
                  <tr>
                    <td colspan ="3">
                    <table width="90%" style="margin-left:0px;">
                        <tr>
                            <td>
                             मो.प्रतिनिधि  1  
                            </td>
                            <td>
                                <asp:TextBox class="form-control" ID="txtMobile"  width="190px" runat ="server" ></asp:TextBox>
                            </td>
                            <td>
                                फ़ोन एस टी डी 
                            </td>
                            <td>
                                 <asp:TextBox class="form-control" ID="txtPhone"  width="190px" runat ="server" ></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                              मो.प्रतिनिधि  2  
                            </td>
                            <td>
                                <asp:TextBox class="form-control" ID="TextBox3"  width="190px" runat ="server" ></asp:TextBox>
                            </td>
                            <td>
                                फ़ोन एस टी डी 
                            </td>
                            <td>
                                 <asp:TextBox class="form-control" ID="TextBox4"  width="190px" runat ="server" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                ईमेल आय डी 
                            </td>
                            <td colspan ="3">
                                <asp:TextBox class="form-control" ID="txtEmail"  width="190px" runat ="server" ></asp:TextBox>
                            </td>
                         </tr>
                        <tr>
                            <td>
                              पेन क्रमांक
                            </td>
                            <td>
                                <asp:TextBox class="form-control" ID="txtPANno"  width="190px" runat ="server" ></asp:TextBox>
                            </td>
                            <td>
                               संस्था रजिस्रेशन क्रमांक
                            </td>
                            <td>
                                
                                 <asp:TextBox class="form-control" ID="txtAdhaarNo"  width="190px" runat ="server" ></asp:TextBox>
                            </td>
                        </tr>
                    </table>        </td>
                </tr>
            </table>
                   
             
          
                
      
         <table width="100%" style="margin-left:30px;">
            
  
    <tr style="padding-left:10px;">
        <td>
           Username
        </td>
        <td>
            <asp:TextBox ID="txtUserName" runat ="server" placeholder="User Name" ></asp:TextBox>
        </td>
        <td>
            Password
        </td>
        <td>
           
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
        <td> 
     
            Confirm Password
            <asp:TextBox ID="txtConfirmPassword" runat ="server"  placeholder="Confirm Password" TextMode ="Password" OnTextChanged="txtConfirmPassword_TextChanged" ></asp:TextBox>
            </td> 
    </tr>
             </table> 
                   </div>
       
</ContentTemplate>
     </asp:UpdatePanel> 
             <br />
         <br />
                     <button type ="button" id ="btnUploading" runat ="server" name="Upload"  onclick ="GetImage();">Upload Images</button>
                <br />
                    <br />
             
   
  
        <table width="100%">
<tr>
                                <td colspan ="8" align="center">
                                  <br />
                                    <br />
                                   <%--<asp:Button type="button" class="btn btn-primary" ID="btnSubmit" OnClientClick ="return doConfirm();" runat ="server"  Text ="SUBMIT" OnClick="btnSubmit_Click1"/>--%>
                                    <asp:Button type="button" class="btn btn-primary" ID="Button1" OnClientClick ="return doConfirm();" runat ="server"  Text ="SUBMIT" OnClick="btnSubmit_Click1"/>

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