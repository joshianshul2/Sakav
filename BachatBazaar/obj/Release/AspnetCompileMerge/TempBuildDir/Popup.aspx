<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Popup.aspx.cs" Inherits="BachatBazaar.Popup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <table width="100%">
                <tr>
                    <td>
                        Dispatch Date
                    </td>
                    <td>
                        <asp:TextBox ID="txtDispatchDate" runat ="server"  placeholder="dd/mm/yyyy"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Delivery Boy
                    </td>
                    <td>
                        <asp:DropDownList ID="drpDeliveryBoy" runat="server">
                            <asp:ListItem Text="Abhishek Gurjar" Value ="Abhishek Gurjar"></asp:ListItem>
                            <asp:ListItem Text="Anil Kumar Saini" Value ="Anil Kumar Saini"></asp:ListItem>
                            <asp:ListItem Text="Pankaj Joshi" Value ="Pankaj Joshi"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <td>
                        Status
                    </td>
                    <td>
                        <asp:DropDownList ID="drpStatus" runat="server">
                            <asp:ListItem Text="SELECT" Value ="SELECT"></asp:ListItem>
                            <asp:ListItem Text="Distached" Value ="Distached"></asp:ListItem>
                            <asp:ListItem Text="Cancelled" Value ="Cancelled"></asp:ListItem>
                                 <asp:ListItem Text="Hold" Value ="Hold"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <td>
                    </td>
                    <td>
                    <asp:Button ID="btnSubmit" Text ="Submit" runat ="server" OnClick ="btnSubmit_Click" />
                        </td>
                </tr>
           
                </table>
        </div>
    </form>
</body>
</html>
