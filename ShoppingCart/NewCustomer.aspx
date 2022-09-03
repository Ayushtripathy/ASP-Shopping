<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewCustomer.aspx.cs" Inherits="ShoppingCart.NewCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #808000;
            background-color: #FFFFFF;
        }
        .auto-style2 {
            width: 227px;
            height: 40px;
        }
        .auto-style3 {
            width: 444px;
            height: 40px;
        }
        .auto-style4 {
            width: 227px;
            height: 50px;
        }
        .auto-style5 {
            width: 444px;
            height: 50px;
        }
        .auto-style6 {
            height: 50px;
        }
        .auto-style7 {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    <table class="auto-style1" style="text-align:center">
        <tr>
            <td class="auto-style4" style="text-align:center">Customer Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="cname" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cname" ErrorMessage="Name cannot be empty"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="text-align:center">Custmer Address</td>
            <td class="auto-style5">
                <asp:TextBox ID="caddr" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="caddr" ErrorMessage="Address cannot be empty"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="text-align:center">Mobile Number</td>
            <td class="auto-style5">
                <asp:TextBox ID="cmob" runat="server" TextMode="Phone" Width="170px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cmob" ErrorMessage="Mobile Number cannot be empty"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="text-align:center">Customer Email</td>
            <td class="auto-style5">
                <asp:TextBox ID="cemail" runat="server" TextMode="Email" Width="169px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cemail" ErrorMessage="Please enter a valid email"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="text-align:center">Password</td>
            <td class="auto-style5">
                <asp:TextBox ID="cpass" runat="server" TextMode="Password" Width="166px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cpass" ErrorMessage="Password cannot be empty"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="text-align:center">Confirm Password</td>
            <td class="auto-style5">
                <asp:TextBox ID="ccpass" runat="server" TextMode="Password" Width="169px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="cpass" ControlToValidate="ccpass" ErrorMessage="Password Mismatch"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align:center">
                <asp:Label ID="output" runat="server"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
            </td>
            <td class="auto-style7">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login Page</asp:HyperLink>
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
