<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CafeAdmin.aspx.cs" Inherits="CafeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cafe Admin</title>
</head>
<body>
    <h1>Cafe Admin</h1>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="CafeAdminSDS" AllowPaging="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="FoodType" HeaderText="FoodType" SortExpression="FoodType" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Allergies" HeaderText="Allergies" SortExpression="Allergies" />
                    <asp:BoundField DataField="WaitTime" HeaderText="Wait" SortExpression="WaitTime" />
                    <asp:BoundField DataField="FoodId" HeaderText="FoodID" ReadOnly="True" SortExpression="FoodId" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="CafeAdminSDS" runat="server" ConnectionString="<%$ ConnectionStrings:OrderFoodConnectionString %>" SelectCommand="SELECT * FROM [CafeTable]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [CafeTable] WHERE [FoodId] = @original_FoodId AND [FoodType] = @original_FoodType AND [Price] = @original_Price AND [Allergies] = @original_Allergies AND [WaitTime] = @original_WaitTime" InsertCommand="INSERT INTO [CafeTable] ([FoodType], [Price], [Allergies], [FoodId], [WaitTime]) VALUES (@FoodType, @Price, @Allergies, @FoodId, @WaitTime)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [CafeTable] SET [FoodType] = @FoodType, [Price] = @Price, [Allergies] = @Allergies, [WaitTime] = @WaitTime WHERE [FoodId] = @original_FoodId AND [FoodType] = @original_FoodType AND [Price] = @original_Price AND [Allergies] = @original_Allergies AND [WaitTime] = @original_WaitTime">
                <DeleteParameters>
                    <asp:Parameter Name="original_FoodId" Type="String" />
                    <asp:Parameter Name="original_FoodType" Type="String" />
                    <asp:Parameter Name="original_Price" Type="String" />
                    <asp:Parameter Name="original_Allergies" Type="String" />
                    <asp:Parameter Name="original_WaitTime" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FoodType" Type="String" />
                    <asp:Parameter Name="Price" Type="String" />
                    <asp:Parameter Name="Allergies" Type="String" />
                    <asp:Parameter Name="FoodId" Type="String" />
                    <asp:Parameter Name="WaitTime" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FoodType" Type="String" />
                    <asp:Parameter Name="Price" Type="String" />
                    <asp:Parameter Name="Allergies" Type="String" />
                    <asp:Parameter Name="WaitTime" Type="String" />
                    <asp:Parameter Name="original_FoodId" Type="String" />
                    <asp:Parameter Name="original_FoodType" Type="String" />
                    <asp:Parameter Name="original_Price" Type="String" />
                    <asp:Parameter Name="original_Allergies" Type="String" />
                    <asp:Parameter Name="original_WaitTime" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        
        <p>
            <asp:Label ID="NameLabel" runat="server" Text="Name: "></asp:Label>
            <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="PriceLabel" runat="server" Text="Price: "></asp:Label>
            <asp:TextBox ID="PriceTextBox" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="AllergiesLabel" runat="server" Text="Allergies: "></asp:Label>
            <asp:TextBox ID="AllergiesTextBox" runat="server"></asp:TextBox>
            </p>
        <p>
            <asp:Label ID="WaitLbl" runat="server" Text="Wait Time: "></asp:Label>
            <asp:TextBox ID="WaitTxtBx" runat="server"></asp:TextBox>
            </p>
        <p>
            <asp:Label ID="FoodIdLbl" runat="server" Text="Food ID: "></asp:Label>
            <asp:TextBox ID="FoodIdTxtBx" runat="server"></asp:TextBox>
            </p>
        <p>
            <asp:Button ID="SubmitButton" runat="server" OnClick="AddFoodButton_Click" Text="Submit" />
            </p>
        <p>
                    <asp:ListBox ID="OrderListBox" runat="server" Height="300px" Width="425px" SelectionMode="Multiple" style="margin-top: 0px"></asp:ListBox>
        <asp:Button ID="DeleteItemBtn" runat="server" Text="Delete" OnClick="DeleteItemBtn_Click" />
        </p>
    </form>
</body>
</html>
