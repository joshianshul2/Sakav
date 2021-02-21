<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/Site1.Master" CodeBehind="Login.aspx.cs" Inherits="BachatBazaar.Login" %>
<asp:Content ID ="contents" ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">
	
   <style>
       .anji { /*Top Left (TL) Top Right (TR) Bottom Right (BR) Bottom Left (BL)*/
	border-radius: 15px 50px 30px 5px; /*TL TR BR BL*/
  	border-radius: 15px 50px 30px; /*TL TRBL BR*/
  	border-radius: 15px 50px; /*TLBR TRBL*/
  	border-radius: 15px; /*All corners*/
}
   </style>
    <div class="mian-content">
		<!-- header -->
	
		<!-- //header -->

		<!-- banner 2 -->
		<div class="banner2-w3ls">

		</div>
		<!-- //banner 2 -->
	</div>
	<!-- main -->
	

	<!-- //page details -->
   <%--Anji--%>
   
	<!-- gallery page -->
	<div class="gallery py-5 " style="background-color:lightblue; ">
			<div class="title text-center mb-5"  style="border-style: solid;">
				<h2 class="text-dark mb-2">Login</h2>
			</div>
        
              <table style="width :100%; ">
            <tr>
                <td>
         <table  style ="width:30%; vertical-align :middle; padding:0px; border-style: solid;" align="center" >
          
             <tr>
               
                <td colspan ="2" style ="height :20px">
                </td>
               
            </tr>
               
              <tr>
                  
                 <td>
               
                     <asp:Label  ID="lblUserName" runat="server" width="10" Text="UserName"></asp:Label>
                   
                 </td>
                 
                 <td>
                    

                     <asp:TextBox  class="form-control" ID="txtUserName" runat="server"></asp:TextBox>
                 </td>
               
             </tr>
            
             <tr>
                
                 <td>
            
                     <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                 </td>
                
                 <td>
                     <asp:TextBox  class="form-control" ID ="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                 </td>
             </tr>
                <tr>
                 <td>
                     <asp:Label ID="lblLoginType" runat="server" Text="Login Type"></asp:Label>
                 </td>
                 <td>
                   <asp:DropDownList ID="drpLoginType" runat ="server" >
                          <asp:ListItem Text ="SELECT" Value ="SELECT"></asp:ListItem> 
                       <asp:ListItem Text ="SAKAV" Value ="SAKAV"></asp:ListItem> 
                       <asp:ListItem Text ="MEMBER" Value ="MEMBER"></asp:ListItem> 
                   </asp:DropDownList>
                 </td>
             </tr>
             
           <%--  <tr>
                 <td>
                     <asp:Label ID="lblUserType" runat="server" Text="Login with"></asp:Label>
                 </td>
                 <td>
                   <asp:DropDownList ID="drpLoginWith" runat ="server" Height ="22px"  Width="172px">
                       <asp:ListItem Value ="0">Select</asp:ListItem>
                       <asp:ListItem Value ="1">Healthcare Unit</asp:ListItem>
                       <asp:ListItem Value ="2">Masu Tech.</asp:ListItem>
                       <asp:ListItem Value ="3">PCB</asp:ListItem>
                   </asp:DropDownList>
                 </td>
             </tr>--%>
          
             <tr>
               <td colspan ="2" style ="height :20px">

                 </td>
             </tr>
             <tr>
                 <td colspan ="2" align="center">
                       <asp:Button  class="btn btn-primary" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"  OnClientClick ="getDateVal();" />
                      <%--  <asp:LinkButton ID="lnkNewUser" runat="server" OnClick="lnkNewUser_Click">New User?</asp:LinkButton>
                        &nbsp;&nbsp;<asp:LinkButton ID="lnkPayment" runat="server" OnClick="lnkPayment_Click">Payment?</asp:LinkButton>--%>
                 </td>
             </tr>
             <tr>
                <td colspan ="2">
                        <asp:HiddenField ID="hdDateVal" runat ="server" value ="ops"  />
                </td>
            </tr>
            
         </table>
       
              
  <%--      <table>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Height="30px" Width="76px" />
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                 
                </td>
            </tr>
        </table>--%>
                    </td>
                </tr>
             </table>
		<%--	<div class="row w3ls_portfolio_grids">
				<div class="col-sm-4 agileinfo_portfolio_grid">
					<div class="w3_agile_portfolio_grid1">
						<a href="images/g1.jpg" title="Cakes Bakery">
							<div class="agileits_portfolio_sub_grid agileits_w3layouts_team_grid">
								<div class="w3layouts_port_head">
									<h3>Cakes Bakery</h3>
								</div>
								<img src="images/g1.jpg" alt=" " class="img-fluid" />
							</div>
						</a>
					</div>
					<div class="w3_agile_portfolio_grid1">
						<a href="images/g2.jpg" title="Cakes Bakery">
							<div class="agileits_portfolio_sub_grid agileits_w3layouts_team_grid">
								<div class="w3layouts_port_head">
									<h3>Cakes Bakery</h3>
								</div>
								<img src="images/g2.jpg" alt=" " class="img-fluid" />
							</div>
						</a>
					</div>
					<div class="w3_agile_portfolio_grid1">
						<a href="images/g3.jpg" title="Cakes Bakery">
							<div class="agileits_portfolio_sub_grid agileits_w3layouts_team_grid">
								<div class="w3layouts_port_head">
									<h3>Cakes Bakery</h3>
								</div>
								<img src="images/g3.jpg" alt=" " class="img-fluid" />
							</div>
						</a>
					</div>
				</div>
				<div class="col-sm-4 agileinfo_portfolio_grid">
					<div class="w3_agile_portfolio_grid1">
						<a href="images/g4.jpg" title="Cakes Bakery">
							<div class="agileits_portfolio_sub_grid agileits_w3layouts_team_grid">
								<div class="w3layouts_port_head">
									<h3>Cakes Bakery</h3>
								</div>
								<img src="images/g4.jpg" alt=" " class="img-fluid" />
							</div>
						</a>
					</div>
					<div class="w3_agile_portfolio_grid1">
						<a href="images/g5.jpg" title="Cakes Bakery">
							<div class="agileits_portfolio_sub_grid agileits_w3layouts_team_grid">
								<div class="w3layouts_port_head">
									<h3>Cakes Bakery</h3>
								</div>
								<img src="images/g5.jpg" alt=" " class="img-fluid" />
							</div>
						</a>
					</div>
					<div class="w3_agile_portfolio_grid1">
						<a href="images/g6.jpg" title="Cakes Bakery">
							<div class="agileits_portfolio_sub_grid agileits_w3layouts_team_grid">
								<div class="w3layouts_port_head">
									<h3>Cakes Bakery</h3>
								</div>
								<img src="images/g6.jpg" alt=" " class="img-fluid" />
							</div>
						</a>
					</div>
				</div>
				<div class="col-sm-4 agileinfo_portfolio_grid">
					<div class="w3_agile_portfolio_grid1">
						<a href="images/g7.jpg" title="Cakes Bakery">
							<div class="agileits_portfolio_sub_grid agileits_w3layouts_team_grid">
								<div class="w3layouts_port_head">
									<h3>Cakes Bakery</h3>
								</div>
								<img src="images/g7.jpg" alt=" " class="img-fluid" />
							</div>
						</a>
					</div>
					<div class="w3_agile_portfolio_grid1">
						<a href="images/g8.jpg" title="Cakes Bakery">
							<div class="agileits_portfolio_sub_grid agileits_w3layouts_team_grid">
								<div class="w3layouts_port_head">
									<h3>Cakes Bakery</h3>
								</div>
								<img src="images/g8.jpg" alt=" " class="img-fluid" />
							</div>
						</a>
					</div>
					<div class="w3_agile_portfolio_grid1">
						<a href="images/g9.jpg" title="Cakes Bakery">
							<div class="agileits_portfolio_sub_grid agileits_w3layouts_team_grid">
								<div class="w3layouts_port_head">
									<h3>Cakes Bakery</h3>
								</div>
								<img src="images/g9.jpg" alt=" " class="img-fluid" />
							</div>
						</a>
					</div>
				</div>
			</div>--%>
		</div>
	
	<!-- //gallery page -->


	</asp:Content> 