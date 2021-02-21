<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/Site1.Master"  CodeBehind="Edit_Form_D_Individual.aspx.cs" Inherits="BachatBazaar.Edit_Form_D_Individual" %>
<asp:Content ID ="contents" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">
    <!-- //Web-Fonts -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="Scripts/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="Scripts/jquery.min.js" ></script>
    <script src="Scripts/jquery-ui.min.js" ></script>
    <link href="Scripts/jquery-ui.css" rel="stylesheet" type="text/css" />
   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
   
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
        .auto-style1 {
            width: 18%;
        }
        .auto-style2 {
            width: 18%;
            height: 56px;
        }
        .auto-style3 {
            height: 56px;
        }
        </style>

	<div class="mian-content">
		<!-- header -->
	
		<!-- //header -->

		<!-- banner 2 -->
				<div>
            <img src="images/2a.jpg"  class="img-fluid" style="height:250px;"  />
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
				<li class="breadcrumb-item active" aria-current="page">Registration - Form D Individual</li>
			</ol>
		</nav>
	</div>
	<!-- //page details -->

	<!-- gallery page -->
	<div class="gallery py-5">
		
			<div class="title text-center mb-5">
				<h2 class="text-dark mb-2" align="center">Registration - Form D Individual</h2>
			</div>
               <asp:UpdatePanel ID="updMenu" runat ="server" UpdateMode ="Conditional">
            <ContentTemplate> 
                <div style ="margin-left :100px">
              <table style="width :100%";>

                    </table>
          
                <td>
                    <br />
                 <table width="100%">
                     <tr>
                         <td class="auto-style2">
                   
                         </td>
                         <td   width="40%" valign="top" class="auto-style3">
                             <h2 style="margin-left:89px;">"साकव"</h2>
                         </td>
                        
                     </tr>
                     <tr>
                            <td class="auto-style1">Ref. Member</td>
                            <td colspan ="2">
                                <br />
                                <asp:TextBox ID="drpRefMembers" runat ="server"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Image ID="imgPhoto" runat="server" Height="150px" Width="120px" />
                                <br />
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
                    </td>
                </tr>
            <table width="100%" style="margin-left:-50px;">
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

     
                        
                        <asp:TextBox class="form-control" ID="txtEnglishName"   width="190px" runat ="server"  ></asp:TextBox>
                    </td>
                    <td>
                                       
                        <asp:TextBox class="form-control" ID="txtHindiName"  width="190px" runat ="server" ></asp:TextBox>
                    </td>
                </tr>
                  <tr>
                                    <td>उपनाम </td>
                                    <td>
                                        <asp:TextBox ID="txtEnglishSurname" runat="server" class="form-control"  width="190px"></asp:TextBox>
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
                    <td>
                        पता   घर क्र. 
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
                       
                  <asp:TextBox ID="txtStates" runat ="server"></asp:TextBox>
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
                         
                        <asp:TextBox ID="txtCity" runat ="server"></asp:TextBox>
                        <asp:TextBox class="form-control" ID="txtCityEnglish"  Visible="false" width="190px" runat ="server" OnTextChanged="txtCityEnglish_TextChanged" AutoPostBack ="true"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="txtCityHindi"  Visible="false" width="190px"  runat ="server" ></asp:TextBox>     
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
                                        <asp:TextBox ID="txtJilaEnglish" runat="server" AutoPostBack="true" class="form-control" OnTextChanged="txtJilaEnglish_TextChanged" width="190px"></asp:TextBox>
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
                                            
                        <asp:TextBox ID="txtPinCode" runat ="server"></asp:TextBox>
                        <asp:TextBox class="form-control" ID="txtPin"  Visible="false" Width ="190px" runat ="server" ></asp:TextBox>
                    </td>
                    <td>
                        <%--<asp:TextBox ID="TextBox2" runat ="server" ></asp:TextBox>--%>
                    </td>
                </tr>
                  <tr>
                    <td colspan ="3">
                    <table width="90%">
                        <tr>
                            <td>
                                मोबाईल 
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
                                ईमेल आय डी 
                            </td>
                            <td colspan ="3">
                                <asp:TextBox class="form-control" ID="txtEmail"  width="190px" runat ="server" ></asp:TextBox>
                            </td>
                         </tr>
                        <tr>
                            <td>
                                PAN NO.
                            </td>
                            <td>
                                <asp:TextBox class="form-control" ID="txtPANno"  width="190px" runat ="server" ></asp:TextBox>
                            </td>
                            <td>
                               आधार क्र
                            </td>
                            <td>
                                
                                 <asp:TextBox class="form-control" ID="txtAdhaarNo"  width="190px" runat ="server" ></asp:TextBox>
                                
                                <br />
                            </td>
                        </tr>
                        
                    </table>
                    </td>
                </tr>
            </table>
            <br />
            <table width="100%" border ="1" style="margin-left:-50px;">
                <tr>
                    <td>
                        संस्था/फर्म/फैक्ट्री का नाम 
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="txtFirm"  width="190px" runat ="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        पता
                    </td>
                    <td>
                        <asp:TextBox class="form-control" ID="TextAddress"   width="190px" runat ="server" ></asp:TextBox>
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
                                    घोसणा :-
                                </td>
                                <td colspan ="8" height="200px" valign="top"> 
                                    मै घोषणा करता / करती हु कि मैंने संस्था के नियम पढ़े है व मुझे मान्य है व मेरे द्वारा उपरोक्त दी गई जानकारी सत्य है व इसके लिए मै पूर्ण रूप से जिम्मेदार रहूँगा यदि मेरे द्वारा दी गयी जानकारी गलत निकली तो संस्था द्वारा लिया गया निर्णय मुझे बंधनकारक होगा व उसके विरुद्ध मै कोई वाद उत्पन्न नहीं करुंगा | किसी भी प्रकार वाद-विवाद हेतु न्यायालयीन क्षेत्र इंदौर रहेगा |
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
<div>
     <asp:GridView ID="gvMenuTiming"  runat="server" AutoGenerateColumns="False" CssClass="myTableClass" Width="100%" >
                                <HeaderStyle BackColor="#217b90" Font-Bold="true" ForeColor="White"  />
          
          <%--          <asp:GridView ID="gvMenuTiming" runat="server"  OnRowCommand="gvMenuTiming_RowCommand" AutoGenerateColumns="false">
          --%>           <%--   <Columns>
                            <asp:CommandField HeaderText="Select" ShowHeader="true" ShowSelectButton="true" />
                        </Columns>--%>
                        <Columns>
                           <%-- <asp:BoundField HeaderText="ID" DataField="PK_APP_ID" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden" />
                            <asp:BoundField HeaderText="ID" DataField="PK_APP_ID" ItemStyle-CssClass="hidden" HeaderStyle-CssClass="hidden" />
                           --%>
                              <asp:TemplateField HeaderText="Id#">
                                        <ItemTemplate>
                                            <asp:Label ID="lblMemberId"  Width="80px" Text='<%# Eval("MemberId") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                       <asp:TemplateField HeaderText="Doc Type">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDocType"  Text='<%# Eval("DocType") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                              <asp:TemplateField HeaderText="Image">
                                        <ItemTemplate>
                                            <asp:Image  ID="Img"  Width ="200px" Height ="150"  runat="server"></asp:Image>
                                        </ItemTemplate>
                              </asp:TemplateField>
                            
                           <%-- <asp:BoundField HeaderText ="District" DataField="DistrictName" />
                            <asp:BoundField HeaderText="State" DataField="StateName" />--%>
                            </Columns>
                    </asp:GridView>
</div>

             </ContentTemplate>
     </asp:UpdatePanel> 
        <table width="100%">
              <tr>
                                <td colspan ="8" align="center">
                                  
                                 <asp:Button type="button" class="btn btn-primary" ID="btnSubmit" runat ="server"  Text ="SUBMIT" OnClick="btnSubmit_Click" Visible ="false"/>

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