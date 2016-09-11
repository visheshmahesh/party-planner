<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manager.aspx.cs" Inherits="mana" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="RegistrationConnectionString" runat="server" ConnectionString="<%$ ConnectionStrings:SignupConnectionString %>" SelectCommand="SELECT * FROM [USERS]"></asp:SqlDataSource>
    <div>
    
    </div>
    </form>
</body>
</html>
