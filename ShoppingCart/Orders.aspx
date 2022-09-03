<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="ShoppingCart.Orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1 style="text-align:center">Your Orders</h1>
    <form id="form1" runat="server">
    <h4>Customer ID
        <asp:TextBox ID="cidtxt" runat="server"></asp:TextBox>
        </h4>
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="OrderId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="OrderId" HeaderText="OrderId" InsertVisible="False" ReadOnly="True" SortExpression="OrderId" />
                    <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                    <asp:BoundField DataField="CustId" HeaderText="CustId" SortExpression="CustId" />
                    <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
                    <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                    <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount" />
                    <asp:BoundField DataField="PaymentMode" HeaderText="PaymentMode" SortExpression="PaymentMode" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ComSim2ConnectionString3 %>" SelectCommand="SELECT * FROM [Orders] WHERE ([CustId] = @CustId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="cidtxt" Name="CustId" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Home Page</asp:HyperLink>
    </form>
</body>
</html>
