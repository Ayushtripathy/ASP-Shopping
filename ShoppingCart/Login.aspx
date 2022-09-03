<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShoppingCart.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #808080;
            background-color: #C0C0C0;
        }
        .auto-style4 {
            width: 260px;
            height: 60px;
        }
        .auto-style5 {
            width: 366px;
            height: 60px;
        }
        .auto-style6 {
            height: 60px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1" style="text-align:center">
            <tr>
                <td class="auto-style4" style="text-align:center"><b>Enter Customer Id</b></td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtcid" runat="server" Width="271px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcid" ErrorMessage="Invalid Customer ID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align:center"><b>Enter Password</b></td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="271px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter a valid password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="output" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" Width="115px" OnClick="btnLogin_Click" />
                </td>
                <td class="auto-style6">
                    <asp:HyperLink ID="newReg" runat="server" NavigateUrl="~/NewCustomer.aspx">Register</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
