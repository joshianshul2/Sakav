<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/Site1.Master"  CodeBehind="Form_D_Individual.aspx.cs" Inherits="BachatBazaar.Form_D_Individual" %>
<asp:Content ID ="contents" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">
    <!-- //Web-Fonts -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="Scripts/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="Scripts/jquery.min.js" ></script>
    <script src="Scripts/jquery-ui.min.js" ></script>
    <link href="Scripts/jquery-ui.css" rel="stylesheet" type="text/css" />
   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
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
    .anji{
                        <div class="form-group" style="width:190px;">
    
    <input class="form-control" id="exampleFormControlInput1"  placeholder="">
  </div>
    
    }
        .auto-style3 {
            width: 84%;
            height: 209px;
        }
        .auto-style4 {
            width: 36%;
        }
        </style>

	<div class="mian-content">
		<!-- header -->
	
		<!-- //header -->

		<!-- banner 2 -->
				<div>
            <img src="images/2a.jpg"  class="img-fluid" style="height:250px;"  width="100%"  />
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
				<li class="breadcrumb-item active" aria-current="page">Registration - Form D Individual/Coordinator</li>
			</ol>
		</nav>
	</div>
	<!-- //page details -->

	<!-- gallery page -->
	<div class="gallery py-5" style ="padding-left:20px">
		  <div style="margin-left:400px;">
                      <caption>
                          <h2>&nbsp;</h2>
                          <br />
                          <br />
                      </caption>
            
                        </div>
			<div class="title text-center mb-5">
				<h2 class="text-dark mb-2" align="center">Registration - Form D Individual/Coordinator</h2>
               <h4 class="text-dark mb-2">प्रपत्र <b>"D"</b> आवेदन विक्रेता   
                      </h4>
			</div>
               <asp:UpdatePanel ID="updMenu" runat ="server" UpdateMode ="Conditional">
            <ContentTemplate> 
               नोट :- आधार कार्ड, पेन कार्ड कि स्पष्ट सॉफ्ट कॉपी व स्वयं के बैंक खाते का एक कैंसिल चेक संलग्न आवश्यक है |<br />
            इन सभी की सॉफ्ट कॉपी साथ में लेकर बैठे। अपलोड करते समय परेशानी नहीं हो।  
                 <table ; class="auto-style3" >
                  <tr>
                      <td  class="auto-style4"> 
                           Reg No. &nbsp;&nbsp;<asp:TextBox ID="txtRegNo" runat ="server" Enabled ="false" ></asp:TextBox>
                      </td>
                 
                                   
                                    <td style="width:40%" >
                                        Ref. Member
                                        <asp:DropDownList ID="drpRefMember" runat="server" OnSelectedIndexChanged="drpRefMember_SelectedIndexChanged">
                                          <%--  <asp:ListItem Text="SELECT" Value="SELECT"></asp:ListItem>
                                            <asp:ListItem Text="Sanket Joshi" Value="Sanket Joshi"></asp:ListItem>
                                            <asp:ListItem Text="Milind Karandekar" Value="Milind Karandekar"></asp:ListItem>
                                            <asp:ListItem Text="Sunil Thosre" Value="Sunil Thosre"></asp:ListItem>
                                            <asp:ListItem Text="Mrs. Poonam Kulkarni" Value="Mrs. Poonam Kulkarni"></asp:ListItem>--%>
                                        </asp:DropDownList>
                                    </td>
                     
                 <td width="30%">
                         <br />
                         <br />
                         <asp:Image ID="imgPhoto" runat="server" Height="150px" Width="120px" />
                         &nbsp;Photo<br />
                         <br />
                         <br />
                         <asp:FileUpload ID="FileUpload1" runat="server" />
                         <br />
                         <br />
                         <asp:Button ID="btnUpload" runat="server" OnClick="Upload" Text="Upload" />
                     </div>
                </td>
                     
            
                </tr>

                     </table> 
                <table width="100%">

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
                </table>
 <br />

                <table width="100%" style ="padding-left :20px">
                <tr>
                    <td width="20%" style="height: 28px">
                        विवरण
                    </td>
                    <td width="20%" style="height: 28px">
                        इंग्लिश कैपिटल लेटर्स में 
                    </td>
                    <td width="40%" style="height: 28px">
                          हिन्दी में
                    </td>
                </tr>
                 
                   
                <tr>
                    <td>
                        नाम
                    </td>
                    <td>

                        <asp:TextBox class="form-control" ID="txtEnglishName"   width="190px" runat ="server" OnTextChanged="txtEnglishName_TextChanged" AutoPostBack ="true"  ></asp:TextBox>
                    </td>
                    <td>
                                       
                        <asp:TextBox class="form-control" ID="txtHindiName"  width="190px" runat ="server" ></asp:TextBox>
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
                    <td>
                        पिता/पति का नाम 
                    </td>
                    <td>
       
                        <asp:TextBox class="form-control" ID="txtFatherEnglishName"  width="190px" runat ="server" OnTextChanged="txtFatherEnglishName_TextChanged" AutoPostBack ="true"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="txtFatherHindiName"  width="190px" runat ="server" ></asp:TextBox>
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
                        <td>राज्य </td>
                        <td>
                            <asp:DropDownList ID="DrpState" runat="server"  style="width:200px;" AutoPostBack="true" OnSelectedIndexChanged="DrpState_SelectedIndexChanged">
                            </asp:DropDownList>
                            <%--<asp:TextBox class="form-control" ID="txtStateEnglish"  width="190px" runat ="server" OnTextChanged="txtStateEnglish_TextChanged" AutoPostBack ="true"></asp:TextBox>--%></td>
                        <td><%--<asp:TextBox class="form-control" ID="txtStateHindi"  width="190px"  runat ="server" ></asp:TextBox>--%></td>
                    </tr>
                    <tr>
                        <td>शहर </td>
                        <td>
                            <asp:DropDownList ID="DrpCity"  style="width:200px;" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DrpCity_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:TextBox ID="txtCityEnglish" style="width:200px;"  runat="server" AutoPostBack="true" class="form-control"  Visible="false"  width="190px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCityHindi" runat="server" class="form-control" Visible="false" width="190px"></asp:TextBox>
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
                            <asp:TextBox ID="txtJilaEnglish" runat="server" AutoPostBack="true" class="form-control" OnTextChanged="txtJilaEnglish_TextChanged" width="190px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtJilaHindi" runat="server" class="form-control" Visible="false" width="190px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>पिन </td>
                        <td>
                           <asp:DropDownList ID="DrpPinCode" runat="server">
                                        </asp:DropDownList>
                            <asp:TextBox ID="txtPin" runat="server" class="form-control" Visible="false" width="190px"></asp:TextBox>
                        </td>
                        <td><%--<asp:TextBox ID="TextBox2" runat ="server" ></asp:TextBox>--%></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <table width="90%">
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
                                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" width="190px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>PAN NO. </td>
                                    <td>
                                        <asp:TextBox ID="txtPANno" runat="server" class="form-control" width="190px"></asp:TextBox>
                                    </td>
                                    <td>आधार क्र </td>
                                    <td>
                                        <asp:TextBox ID="txtAdhaarNo" runat="server" class="form-control" width="190px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr style="padding-left:10px;">
                                    <td>Username</td>
                                    <td>    
                                    <asp:TextBox ID="txtUserName" runat="server" placeholder="User Name"></asp:TextBox>
                                    </td>
                                    <td>Password</td>
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
                                        <div style="padding-left:10px;">
                                            Confirm Password
                                            <asp:TextBox ID="txtConfirmPassword" runat="server" OnTextChanged="txtConfirmPassword_TextChanged" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
            </table>
            <br />
            <table width="100%" border ="1" style ="padding-left :20px">
                <tr>
                    <td>
                        संस्था/फर्म/फैक्ट्री का नाम 
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="txtFirm"  width="319px" runat ="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        पता
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="TextAddress"   width="318px" runat ="server" ></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td colspan ="2">
                        रजिस्ट्रेशन की कॉपी संलग्न करे 
                    </td>
                </tr>
                 <tr>
                    <td colspan ="2">
                        <table>
                            <tr>
                                <td>
                                    स्थापना
                                </td>
                                <td>
                                    <asp:CheckBox  ID="ChkSthapna" runat ="server" />
                                </td>
                                <td>
                                    जी एस टी 
                                </td>
                                <td>
                                    <asp:CheckBox ID="chkGST" runat ="server" />
                                </td>
                                <td>
                                    गुमास्ता 
                                </td>
                                <td>
                                     <asp:CheckBox ID="chkGumasta" runat ="server" />
                                </td>
                                <td>
                                    अन्य कोई हो तो 
                                </td>
                                <td>
                                     <asp:CheckBox ID="chkOther" runat ="server" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan ="2"> 
                                    व्यवसाय का प्रकार विवरण संक्षेप में अधिक जानकारी की प्रति अलग से संलग्न करे  
                                </td>
                            </tr>
                            <tr>
                                <td colspan ="8" height="200px" valign="top"> 
                                    <asp:TextBox class="form-control" type="button"   ID="txtDetail" runat ="server" TextMode ="MultiLine" Width="100%" Height ="198px" ></asp:TextBox>
                                </td>
                            </tr>
                             <tr>
                                <td> 
                                    वार्षिक बिक्री 
                                </td>
                                 <td> 
                                    <asp:TextBox  class="form-control" ID="txtAnnualSale" width="190" runat ="server" ></asp:TextBox>
                                </td>
                            </tr>
                             <tr>
                                <td> 
                                    कार्य क्षेत्र 
                                </td>
                                 <td> 
                                    <asp:TextBox class="form-control" ID="txtWorkArea" width="190" runat ="server" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>

                                <td valign="top">
                                <%--    <asp:Button ID="Button1" Text ="Image Upload" runat ="server" PostBackUrl ="~/ImageUpload.aspx" />--%>
                                    
                                    घोषणा  :-
                                </td>
                                <td colspan ="8" height="200px" valign="top"> 
                                   <br />
                                    <br />मै घोषणा करता / करती हु कि मैंने संस्था के नियम पढ़े है व मुझे मान्य है व मेरे द्वारा उपरोक्त दी गई जानकारी सत्य है व इसके लिए मै पूर्ण रूप से जिम्मेदार रहूँगा यदि मेरे द्वारा दी गयी जानकारी गलत निकली तो संस्था द्वारा लिया गया निर्णय मुझे बंधनकारक होगा व उसके विरुद्ध मै कोई वाद उत्पन्न नहीं करुंगा | किसी भी प्रकार वाद-विवाद हेतु न्यायालयीन क्षेत्र इंदौर रहेगा |
                                    <br />
नोट :- आधार कार्ड, पेन कार्ड कि स्पष्ट फोटोकॉपी व स्वयं के बैंक खाते का एक कैंसिल चेक संलग्न आवश्यक है
                                    <br />
                                    विज्ञापन. अनुदान राशी साकव सेवा संस्था (SAKAV SEWA SANSTHA)&nbsp; के नाम से देवे&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; हस्ताक्षर

                                </td>
                            </tr>
                          
                        </table>
                    </td>
                </tr>
            </table>
          </div>
             </ContentTemplate>
                    <Triggers>
        <asp:PostBackTrigger ControlID = "btnUpload" />
    </Triggers>
     </asp:UpdatePanel> 
        <table width="80%" style ="padding-left :20px">
          <button type ="button" id ="btnUploading" runat ="server" name="Upload"  onclick ="GetImage();">Upload Images</button>
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