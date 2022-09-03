<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductsPage.aspx.cs" Inherits="ShoppingCart.ProductsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            border: 1px solid #FF6600;
            background-color: #FFE4C4;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <h1>Order a Product</h1>
        <hr />
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ProductId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                     <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btn1" runat="server" Text="Select Product" OnClick="btn1_Click" />
                    </ItemTemplate>
                </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ComSim2ConnectionString2 %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
         </div>
        <hr />
        <div style="background-color:bisque">
            <table class="auto-style3" style="text-align:center">
                <tr>
                    <td>Customer ID</td>
                    <td>
                        <asp:TextBox ID="cusid" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Product ID</td>
                    <td>
                        <asp:TextBox ID="pid" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="prodPrice" runat="server" Text="Price"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Enter Quantity</td>
                    <td>
                        <asp:TextBox ID="qty" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="prodStock" runat="server" Text="Stock"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Total Amount</td>
                    <td>
                        <asp:TextBox ID="tamt" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Payment Mode</td>
                    <td>
                        <asp:RadioButton ID="rcash" runat="server" Text="Cash" GroupName="rpmode" />
                        <asp:RadioButton ID="rcard" runat="server" Text="Card" GroupName="rpmode" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="output" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="btnorder" runat="server" Text="Order Item" OnClick="btnorder_Click" />
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Home Page</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Orders.aspx">My Orders</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
