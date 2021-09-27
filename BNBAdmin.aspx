<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BNBAdmin.aspx.cs" Inherits="BNBAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>B&B Admin</title>
</head>
<body>
    <h1>B&B Admin</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="BNBAdminsds" OnRowDeleted="GridView1_RowDeleted" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="FoodType">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="FoodType" HeaderText="FoodType" SortExpression="FoodType" ReadOnly="True" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Allergies" HeaderText="Allergies" SortExpression="Allergies" />
                <asp:BoundField DataField="Wait" HeaderText="Wait" SortExpression="Wait" />
                <asp:BoundField DataField="FoodId" HeaderText="FoodId" SortExpression="FoodId" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="BNBAdminsds" runat="server" ConnectionString="<%$ ConnectionStrings:OrderFoodConnectionString %>" SelectCommand="SELECT * FROM [BNBTable]"
            InsertCommand="INSERT INTO [BNBTable] ([FoodId], [FoodType], [Allergies], [Price], [Wait]) VALUES (@FoodId, @FoodType, @Allergies, @Price, @Wait)"
            OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [BNBTable] WHERE [FoodId] = @original_FoodId" UpdateCommand="UPDATE [BNBTable] SET [FoodType] = @FoodType, [Allergies] = @Allergies, [Price] = @Price, [Wait] = @Wait WHERE [FoodId] = @original_FoodId"
            >
            <DeleteParameters>
                <asp:Parameter Name="original_FoodId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FoodId" Type="Int32" />
                <asp:Parameter Name="FoodType" Type="String" />
                <asp:Parameter Name="Allergies" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="Wait" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FoodType" Type="String" />
                <asp:Parameter Name="Allergies" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="Wait" Type="Int32" />
                <asp:Parameter Name="original_FoodId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="FoodTypeLbl" runat="server" Text="Food Type:"></asp:Label>
        <asp:TextBox ID="FoodTypeTxtBx" runat="server" Width="100px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="PriceLbl" runat="server" Text="Price:"></asp:Label>
        <asp:TextBox ID="PriceTxtBx" runat="server" Width="100px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="AllergiesLbl" runat="server" Text="Allergies:"></asp:Label>
        <asp:TextBox ID="AllergiesTxtBx" runat="server" Width="100px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="WaitLbl" runat="server" Text="Wait Time:"></asp:Label>
        <asp:TextBox ID="WaitTxtBx" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="FoodIdLbl" runat="server" Text="Food ID:"></asp:Label>
        <asp:TextBox ID="FoodIdTxtBx" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="AddFoodButton" runat="server" OnClick="AddFoodButton_Click" Text="Add Item" />
        <br />
        <br />
        <br />
        <br />
        <asp:ListBox ID="OrderListBox" runat="server" Height="300px" Width="339px" SelectionMode="Multiple" style="margin-top: 0px"></asp:ListBox>
        <asp:Button ID="DeleteItemBtn" runat="server" Text="Delete" OnClick="DeleteItemBtn_Click" />
        <br />
    </form>
</body>
</html>
