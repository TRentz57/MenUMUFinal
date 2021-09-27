<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLoginPage.aspx.cs" Inherits="AdminLoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Admin</h1>
        <div>
            <asp:TextBox ID="UserNameTxt" runat="server"></asp:TextBox>
        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:TextBox ID="PasswordTxt" runat="server" Font-Strikeout="False" TextMode="Password"></asp:TextBox>
        </p>
        <asp:Button ID="LoginBtn" runat="server" Text="Login" OnClick="LoginBtn_Click" />
    </form>
</body>
</html>
