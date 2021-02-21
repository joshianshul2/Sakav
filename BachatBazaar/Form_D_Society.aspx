<%@ Page Language="C#" AutoEventWireup="True" MasterPageFile ="~/Site1.Master"  CodeBehind="Form_D_Society.aspx.cs" Inherits="BachatBazaar.Form_D_Society" %>

<asp:Content ID ="contentss" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">
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
     <%--<script type="text/javascript">
         $(function () {
             $("[id$=txtMenuDate]").datepicker({
                 showOn: 'button',
                 buttonImageOnly: true,
                 buttonImage: 'img/cal-icon.png',
                 dateFormat: "dd/mm/yy",
                 padding:'20px'

             });
          
         });
    </script>--%>
    <style>
    .anji{
                        <div class="form-group" style="width:190px;">
    
    <input class="form-control" id="exampleFormControlInput1"  placeholder="">
  </div>
    
    }
        </style>

	
              <img src="images/2a.jpg"  class="img-fluid" style="height:250px;"  width="100%"  />
	
		<!-- //banner 2 -->

	<!-- main -->
	<!-- page details -->
	<div class="breadcrumb-agile container-fluid"  style="margin-left:20px;">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb m-0">
				<li class="breadcrumb-item">
					<a href="Default.aspx">Home</a>
				</li>
				<li class="breadcrumb-item active" aria-current="page">Registration - Form D Society</li>
			</ol>
		</nav>
	</div>
	<!-- //page details -->

	<!-- gallery page -->
    
		
			<div class="title text-center mb-5">
				<h2 class="text-dark mb-2">Registration - Form D Society/Dealer</h2>
                 <h4 class="text-dark mb-2">प्रपत्र <b>"D"</b> आवेदन विक्रेता   
                      </h4>
			</div>
   &nbsp;&nbsp;&nbsp;&nbsp; नोट :- संस्था पंजीयन एवं प्रतिनिधियों के आधार कार्ड, कि स्पष्ट फोटोकॉपी संस्था कायसकाररणी का प्रस्ताव, संस्था केबकैं खातेका केंसल चेक लेकर बैठे।<br />
&nbsp;&nbsp;&nbsp;&nbsp;  इन सभी की सॉफ्ट कॉपी साथ में लेकर बैठे। अपलोड करते समय परेशानी नहीं हो।  &nbsp; 
    <table  style="margin-left:20px;">
        <tr>
            <td> Reg No. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtRegNo" runat ="server" Width="188px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
         
                                    <td>
                                        <br />
                                           Ref. Member &nbsp;&nbsp;
                                        <asp:DropDownList ID="drpRefMember" runat="server">
                                            <asp:ListItem Text="SELECT" Value="SELECT"></asp:ListItem>
                                           <%-- <asp:ListItem Text="Sanket Joshi" Value="Sanket Joshi"></asp:ListItem>
                                            <asp:ListItem Text="Milind Karandekar" Value="Milind Karandekar"></asp:ListItem>
                                            <asp:ListItem Text="Sunil Thosre" Value="Sunil Thosre"></asp:ListItem>
                                            <asp:ListItem Text="Mrs. Poonam Kulkarni" Value="Mrs. Poonam Kulkarni"></asp:ListItem>--%>
                                        </asp:DropDownList>
                                    </td>
       
     </tr> 
            </table>   
        <asp:UpdatePanel ID="updMenus" runat ="server" UpdateMode ="Conditional">
            <ContentTemplate>
                <div >
              <table style="width :100%; margin-left:20px;" >
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
            <tr>
                <td>
                    <br />
                 <table width="100%"  >
                <tr>
                   
                      <td>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; संस्था का नाम अंगरेजी मे
       
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:TextBox class="form-control" ID="txtSocietyNameEng"  width="520px" runat ="server" style="margin-left:25px;" OnTextChanged="txtSocietyNameEng_TextChanged" AutoPostBack ="true"></asp:TextBox>
                    </td>
                   
                </tr>
                     <tr>
                       <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  संस्था का नाम हिन्दी मे
                        
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox class="form-control" ID="txtSocietyNameHindi"   width="520px" runat ="server" style="margin-left:25px;"  OnTextChanged="txtEnglishName_TextChanged" AutoPostBack ="true"  ></asp:TextBox>
                    </td>
                
                </tr>
                
 
                 </table>
                    <table width="100%" style="margin-left:20px;">
                        <tr>
                            <td style="height: 28px" width="30%">विवरण </td>
                            <td style="height: 28px" width="30%">इंग्लिश कैपिटल लेटर्स में </td>
                            <td style="height: 28px" width="40%">हिन्दी में </td>
                        </tr>
                        <tr>
                            <td>नाम प्रतिनिधि क्र 1 </td>
                            <td>
                                <asp:TextBox ID="txtEnglishName" runat="server" AutoPostBack="true" class="form-control" OnTextChanged="txtEnglishName_TextChanged" width="190px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtHindiName" runat="server" class="form-control" width="190px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>नाम प्रतिनिधि क्र 2 </td>
                            <td>
                                <asp:TextBox ID="txtFatherEnglishName" runat="server" AutoPostBack="true" class="form-control" OnTextChanged="txtFatherEnglishName_TextChanged" width="190px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtFatherHindiName" runat="server" class="form-control" width="190px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>पता संस्था का घर क्र. </td>
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
                            <td>राज्य </td>
                            <td>
                                <asp:DropDownList ID="DrpState" runat="server" style="width:200px;" AutoPostBack="true" OnSelectedIndexChanged="DrpState_SelectedIndexChanged">
                                </asp:DropDownList>
                                <%--<asp:TextBox class="form-control" ID="txtStateEnglish"  width="190px" runat ="server" OnTextChanged="txtStateEnglish_TextChanged" AutoPostBack ="true"></asp:TextBox>--%></td>
                            <td><%--<asp:TextBox class="form-control" ID="txtStateHindi"  width="190px"  runat ="server" ></asp:TextBox>--%></td>
                        </tr>
                        <tr>
                            <td>शहर </td>
                            <td>
                                <asp:DropDownList ID="DrpCity" runat="server" style="width:200px;" AutoPostBack="true" OnSelectedIndexChanged="DrpCity_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:TextBox ID="txtCityEnglish" runat="server" AutoPostBack="true" class="form-control" OnTextChanged="txtCityEnglish_TextChanged" Visible="false" width="190px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCityHindi" runat="server" class="form-control" width="190px"></asp:TextBox>
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
                                <table width="100%">
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
                                        <td>पेन क्रमांक </td>
                                        <td>
                                            <asp:TextBox ID="txtPANno" runat="server" class="form-control" width="190px"></asp:TextBox>
                                        </td>
                                        <td>संस्था रजिस्रेशन क्रमांक </td>
                                        <td>
                                            <asp:TextBox ID="txtAdhaarNo" runat="server" class="form-control" width="190px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Username </td>
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
                                                <asp:TextBox ID="txtConfirmPassword2" runat="server" OnTextChanged="txtConfirmPassword_TextChanged" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <br>
            </td> 
                </tr> 
                  </table> 
            <table width="89%" border ="1" style="margin-left:25px;"  >
                <tr>
                    <td>
                      व्यावसायिक संस्था का प्रकार <br>
                      
                      <tr>
                    <td colspan ="2">
                       <%-- <table>
                           
                            <tr>
                                <td>
                                    स्थापना
                                </td>
                                <td>
                                    <asp:CheckBox  ID="CheckBox5" runat ="server" />
                                </td>
                                <td>
                                    जी एस टी 
                                </td>
                                <td>
                                    <asp:CheckBox ID="CheckBox6" runat ="server" />
                                </td>
                                <td>
                                    गुमास्ता 
                                </td>
                                <td>
                                     <asp:CheckBox ID="CheckBox7" runat ="server" />
                                </td>
                                <td>
                                    अन्य कोई हो तो 
                                </td>
                                <td>
                                     <asp:CheckBox ID="CheckBox8" runat ="server" />
                                </td>
                            </tr>
                           
                         
                        </table>--%>
               
                       
                    </td>
                </tr>
                <tr>
               
                    <td colspan="2">रजिस्ट्रेशन की कॉपी संलग्न करे &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
               
                </tr>
                 <tr>
                    <td colspan ="2">
                        <table>
                         
                            <caption>
                                <br />
                                <tr>
                                    <td>स्थापना </td>
                                    <td>
                                        <asp:CheckBox ID="ChkSthapna" runat="server" />
                                    </td>
                                    <td>जी एस टी </td>
                                    <td>
                                        <asp:CheckBox ID="chkGST" runat="server" />
                                    </td>
                                    <td>गुमास्ता </td>
                                    <td>
                                        <asp:CheckBox ID="chkGumasta" runat="server" />
                                    </td>
                                    <td>अन्य कोई हो तो </td>
                                    <td>
                                        <asp:CheckBox ID="chkOther" runat="server" />
                                    </td>
                                </tr>
                            </caption>
                        </table>
                   </tr>
                        <tr>
                            <td colspan="2">व्यवसाय का प्रकार विवरण संक्षेप में अधिक जानकारी की प्रति अलग से संलग्न करे </td>
                        </tr>
                        <tr>
                            <td colspan="8" height="200px" valign="top">
                                <asp:TextBox ID="txtDetail" runat="server" class="form-control" Height="198px" TextMode="MultiLine" type="button" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>वार्षिक बिक्री </td>
                            <td>
                                <asp:TextBox ID="txtAnnualSale" runat="server" class="form-control" width="190px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>कार्य क्षेत्र </td>
                            <td>
                                <asp:TextBox ID="txtWorkArea" runat="server" class="form-control" width="190"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top"></td>
                            <td colspan="8" height="200px" valign="top">मै घोषणा करता / करती हु कि मैंने संस्था के नियम पढ़े है व मुझे मान्य है व मेरे द्वारा उपरोक्त दी गई जानकारी सत्य है व इसके लिए मै पूर्ण रूप से जिम्मेदार रहूँगा यदि मेरे द्वारा दी गयी जानकारी गलत निकली तो संस्था द्वारा लिया गया निर्णय मुझे बंधनकारक होगा व उसके विरुद्ध मै कोई वाद उत्पन्न नहीं करुंगा | किसी भी प्रकार वाद-विवाद हेतु न्यायालयीन क्षेत्र इंदौर रहेगा |
                                <br />
                                <br />
                                <br />
                                नोट :- संस्था पंजीयन एवं प्रतिनिधियों के आधार कार्ड, कि स्पष्ट फोटोकॉपी संस्था कायसकाररणी का प्रस्ताव, संस्था केबकैं खातेका केंसल चेक
                                <br />
                                विज्ञापन. अनुदान राशी साकव सेवा संस्था (SAKAV SEWA SANSTHA)&nbsp; के नाम से देवे&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; हस्ताक्षर </td>
                        </tr>
                        <caption>
                            <br />
                            <button id="btnUploading" runat="server" name="Upload" onclick="GetImage();" type="button">
                                Upload Images
                            </button>
                            <br />
                        </caption>
                 </table>

                    <br />
                    <br />
                    </tr>
                    </table>

          </div>
             </ContentTemplate>
     </asp:UpdatePanel> 
        <table width="100%">
               <tr>
                                <td  align="center">
                                  
                                 <asp:Button class="btn btn-primary" ID="btnSubmit"  OnClientClick ="return doConfirm();" runat ="server"  Text ="SUBMIT" OnClick="btnSubmit_Click" />
                                    <%--<asp:Button ID="btnOK" runat ="server" Text ="OK" OnClick ="btnOK_Click" />--%>

                                </td>
                            </tr>
        </table>   
                               <%--  <asp:Button class="btn btn-primary" ID="Button2" runat ="server"  Text ="SUBMIT" OnClick="btnSubmit_Click" />--%>

    
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