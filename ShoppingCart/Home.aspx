<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ShoppingCart.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #CC0099;
            background-color: #FFCCFF;
        }
    </style>
</head>
<body>
    <h1 style="text-align:center">Welcome to Shopping Home Page</h1>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Your Cutsomer ID  :"></asp:Label>
&nbsp;<asp:TextBox ID="txtcid" runat="server" ReadOnly="True" Width="155px"></asp:TextBox>
        </div>
        <hr />
        <div>
            <table class="auto-style1" style="text-align:center">
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login Page</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ProductsPage.aspx">Products</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Orders.aspx">Orders</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
