<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MenUMU</title>
    
    <style type="text/css">
        #Admin {
            width: 143px;
        }
    </style>
    
</head>
<body>
    <h1 style="text-align: center">Welcome to the MenUMU System</h1>
    <form id="form1" runat="server">
        
           
        
            
        
    <div style="text-align: center">
         <asp:Button ID="Khic1" runat="server" OnClick="Khic" Text="Khic Order Page" />
   </div>
        <p style="text-align: center">
            <asp:Button ID="BNB1" runat="server" OnClick="BNB" Text="B&B Order Page" />
        </p>
       <p style="text-align: center">
           <asp:Button ID="Cafe1" runat="server" OnClick="Cafe" Text="Cafe Order Page" />
        </p>
        <p style="text-align: center">
            <asp:Button ID="Admin1" runat="server" OnClick="Admin" Text="Admin Login" />
        </p>
 
    </form>
            
</body>
</html>
