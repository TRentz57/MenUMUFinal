<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ThankBNB.aspx.cs" Inherits="ThankBNB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thank You!</title>
</head>
<body>
    <h1>Thank You!</h1>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ListBox ID="listBox" runat="server" Height="189px" Width="402px"></asp:ListBox>
        <br />
         <asp:Label ID="priceslbl" runat="server" Text="Price"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="priceLbl" runat="server" Text=""></asp:Label>
        
        <br />
        <asp:Label ID="waitlbl" runat="server" Text="Wait Time"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="waitslbl" runat="server" Text=""></asp:Label>
        
        <br />
        <asp:Button ID="submitBnt" runat="server" Text="Submit" OnClick="submitBnt_Click" />
        
    </form>
</body>
</html>
