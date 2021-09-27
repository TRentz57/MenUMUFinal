<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BNBOrderPage.aspx.cs" Inherits="BNBOrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>B&B</title>
</head>
<body>
    <h1>B&amp;B</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="BNBgv" runat="server" AutoGenerateColumns="False" DataSourceID="BnBDataSource" OnSelectedIndexChanged="BNBgv_SelectedIndexChanged" AllowPaging="True" PageSize="15">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="FoodType" HeaderText="FoodType" SortExpression="FoodType" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Allergies" HeaderText="Allergies" SortExpression="Allergies" />
                <asp:BoundField DataField="Wait" HeaderText="Wait" SortExpression="Wait" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="BnBDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:OrderFoodConnectionString2 %>" SelectCommand="SELECT [Allergies], [Price], [FoodType], [Wait] FROM [BNBTable]"></asp:SqlDataSource>
        <asp:ListBox ID ="BNBListBox" runat="server" Height="182px" Width="374px">
        <asp:ListItem Text="-----------------------"></asp:ListItem>
    </asp:ListBox>
        <asp:Button ID="DeleteBtn" runat="server" OnClick="DeleteBtn_Click" Text="Clear List" />
        <p>
        <asp:Label ID="priceLbl" runat="server" Text="Price"></asp:Label>                
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="realPriceLbl" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="realPriceLbl2" runat="server" Visible="False"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="realPriceLbl3" runat="server" Text=""></asp:Label>
            </p>
        <p>
            <asp:Label ID="waitLbl" runat="server" Text="Wait Time"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="realWaitLbl1" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="realWaitLbl2" runat="server" Visible="False"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="realWaitLbl3" runat="server" Text=""></asp:Label>
            </p>
        <p>
            <asp:Button ID="SubmitBtn" runat="server" Text="Submit" OnClick="SubmitBtn_Click" />
        </p>
    </form>
</body>
</html>
