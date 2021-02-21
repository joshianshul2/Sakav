<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/Site1.Master" CodeBehind="Edit_Form_C_Individual.aspx.cs" Inherits="BachatBazaar.Edit_Form_C_Individual" %>

<asp:Content ID ="contents" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">
	<!-- //Web-Fonts -->
      <link href="Scripts/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="Scripts/jquery.min.js" ></script>
    <script src="Scripts/jquery-ui.min.js" ></script>
    <link href="Scripts/jquery-ui.css" rel="stylesheet" type="text/css" />
   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
   <script>
       function GetImage() {

            window.open("ImageUpload.aspx", "_blank", "WIDTH=1080,HEIGHT=790,scrollbars=no, menubar=no,resizable=yes,directories=no,location=no");  
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
        </style>

	<div class="mian-content">
		<!-- header -->
	
		<!-- //header -->

		<!-- banner 2 -->
		<div class="container-fluid">

            <img src="images/2a.jpg"  height="269" width="100%" />
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
				<li class="breadcrumb-item active" aria-current="page">Registration</li>
			</ol>
		</nav>
	</div>
	<!-- //page details -->

	<!-- gallery page -->
	<div class="gallery py-5">
		
			<div class="title text-center mb-5" >
				<h2 class="text-dark mb-2">Registration - Form C Individual</h2>
			</div>
               <asp:UpdatePanel ID="updMenu" runat ="server" UpdateMode ="Conditional">
            <ContentTemplate> 
                &nbsp&nbsp&nbsp&nbsp&nbsp
                <div style="margin-left:450px; margin-top:-40px;">प्रपत्र  "C"  आवेदन व्यक्तिगत </div>
                <div style ="margin-left :100px">
            
                    <table style="width :100%; margin-top:10px;">
            <tr>
                <td>
                    <br />
                    <br />
                    Reg No. &nbsp;&nbsp;<asp:TextBox ID="txtRegNo" runat ="server" Enabled ="false" ></asp:TextBox>
                </td>
                <td>
                    
                       
                            <br />
               <tr style="margin-left:450px;">
                 
                                   
                                    <td colspan="2" style="margin-left:520px;" >
                                           &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp Ref. Member
                                            <asp:TextBox ID="txtRefMember" runat ="server"></asp:TextBox>
                                    <%--    <asp:DropDownList ID="drpRefMember" runat="server">
                                            <asp:ListItem Text="SELECT" Value="SELECT"></asp:ListItem>
                                            <asp:ListItem Text="Sanket Joshi" Value="Sanket Joshi"></asp:ListItem>
                                            <asp:ListItem Text="Milind Karandekar" Value="Milind Karandekar"></asp:ListItem>
                                            <asp:ListItem Text="Sunil Thosre" Value="Sunil Thosre"></asp:ListItem>
                                            <asp:ListItem Text="Mrs. Poonam Kulkarni" Value="Mrs. Poonam Kulkarni"></asp:ListItem>
                                        </asp:DropDownList>--%>
                                    </td>
                                </tr>
                            
                      </table> 

                        </div>
                  
                 <td width="30%" >
               
                    
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
                            <asp:TextBox ID="txtSurnameEng" runat="server" AutoPostBack="true" class="form-control"  width="290px"></asp:TextBox>
                    </td>
                       <td width="60%">
                            <asp:Image ID="imgPhoto"  runat ="server" Height ="150px" Width ="120px" AlternateText="Photo" />
                            <br />
                    
                             <asp:FileUpload ID="FileUpload1" runat="server"  />
                     <br />
                      <br />
                  <%--  <asp:Button ID="btnUpload" runat="server" Text="Upload"  OnClick="Upload" />--%>
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
                             <asp:TextBox ID="txtSurnameHindi" runat="server" class="form-control" width="290px"></asp:TextBox>
                    </td>
                   
                </tr>


                 </table>

            <table width="100%" style="margin-left:20px;">
                
                <caption>
                
                    <div style="margin-left:8px;">
                        मै संस्था &quot;साकव&quot; की वार्षिक सदस्यता प्रवज्ञ &quot;C&quot; श्रेणी (समन्यवक) की सदस्यता प्राप्त करने हेतु आवेदन कर रहा/रही हु| मैने सदस्यता सम्बंधित
                        <br />
                        सर्वे कर्तव्य , अधिकार व नियम पढ़ लिए है व वे मुझे मान्य है और समय समय पर किये गए संशोधित कर्तव्य, अधिकार व नियम मुझे मान्य होंगे<br />व मेरे द्वारा दी गई जानकारी सत्य है इस के लिए मै पूर्ण रूप से जिम्मेदार रहूँगा/ रहूंगी यदि जानकारी असत्य हुई तो संस्था द्वारा लिया गया निर्णय
                        <br />
                        मुझे बंधनकारक होगा व उसके विरुद्ध मै कोई वाद उत्पन्नय नहीं करुगा/करुँगी व ऐसा कोई कार्य नहीं करुगा/करुँगी जो संस्था के व उसके कार्य के
                        <br />
                        विरुद्ध हो | अत: इस हेतु मै निर्धारिक सदस्यता शुल्क रूपये 1000/- वार्षिक  प्रपत्र &quot;C&quot; श्रेणी समन्यवक के लिए राशी नगद / ड्राफ्ट /चेक क्र<br />
                        <input  name="text" style="width:170px;"  runat="server" id="txtChequeNo"> के &nbsp; &nbsp; बैंक / शाखा
                        <input id="txtBankName" style="width:170px; text-transform:uppercase;" runat ="server"  name="text" > के &nbsp; दिनांक
                        <input id="txtChequeDate" runat ="server"  name="text" placeholder="dd/mm/yyyy" style="width:170px;" > के द्वारा<br />जमा कर रहा / रही हु | </input></input></input></div>
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
                                        <asp:TextBox ID="txtEnglishSurname" runat="server" AutoPostBack="true" class="form-control"  width="190px"></asp:TextBox>
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
                         
                         <asp:TextBox ID="txtState" runat ="server"></asp:TextBox>
                        <%--<asp:TextBox class="form-control" ID="txtStateEnglish"  width="190px" runat ="server" OnTextChanged="txtStateEnglish_TextChanged" AutoPostBack ="true"></asp:TextBox>--%>
                    </td>
                    <td>
                        <%--<asp:TextBox class="form-control" ID="txtStateHindi"  width="190px"  runat ="server" ></asp:TextBox>--%>     
                    </td>
                </tr>
                        <tr>
                            <td>शहर </td>
                            <td>
                                         <asp:TextBox ID="txtCity" runat ="server"></asp:TextBox>
                               <%--  <asp:DropDownList ID="txtCity" runat="server">
                            </asp:DropDownList>--%>
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
                                        <asp:TextBox ID="txtJilaHindi" runat="server" class="form-control" width="190px"></asp:TextBox>
                                    </td>
                                </tr>
                        <tr>
                            <td>पिन </td>
                            <td>
                                 <%--<asp:DropDownList ID="txtPinCode" runat="server">
                                        </asp:DropDownList>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                        </asp:DropDownList>--%>
                               
                                
                                
                                
                                <asp:TextBox ID="txtPinCode" runat="server" class="form-control" width="190px"></asp:TextBox>
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
                             
                            </table>
                        </caption>
                    </table>
                </caption>
                </td>
                 <tr>
                    <td colspan ="2">
                        <br />
                       
                   
                </tr>
                 <tr>
                    <td colspan ="2">
                    
                           
                            <tr >
                                <td valign="top">
                                   
                                </td>
                               
                                <td colspan ="2"  valign="top"> 
                              
                                    <br />


                                </td>
                            </tr>
                           
                        </table>
                    </td>
                </tr>
            </table>
          </div>
                </td>
                 <%--<asp:Button ID="Button2" Text ="Image Upload" style="margin-left:140px;" runat ="server" PostBackUrl ="~/ImageUpload.aspx" />--%>
           
               
                 
                </table>
         
                <tr>
                   
        <td>
             <br />
                    <br />
            
           &nbsp;&nbsp; 
            User Name
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUserName" runat ="server"  placeholder="User Name" ></asp:TextBox>
        </td>
        <td>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
        
        </td>
        <td>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat ="server" placeholder="Password" Visible="false" TextMode ="Password"></asp:TextBox>
        </td>
                    <br />
                  
                    <td>
              <td>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
     
        </td>
                                  </td>

    </tr>
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
         <div  style="margin-left:135px;">नोट :- सदयस्ता हेतु धनादेश " साकव सेवा संस्था " के नाम से दये होगा | <br />
आधार कार्ड, पने कार्ड की स्पष्ट फोटो कॉपी व स्वय <br />
के बकैं खाते का एक केंसल चेक सलग्न आवश्यक है  <br />
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp हस्ताक्षर</div>
                 
         <table width="100%">
              <tr>
                                <td colspan ="8" align="center">
                                  
                                 <asp:Button type="button" class="btn btn-primary" ID="btnSubmit" runat ="server"  Text ="SUBMIT" Visible ="false"  OnClick="btnSubmit_Click"/>

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