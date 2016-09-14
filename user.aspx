<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="session" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblWelcome" runat="server" Text="Welcome"></asp:Label>
        <br />
        <asp:Button ID="btnLogout" runat="server" Text="logout" OnClick="btnLogout_Click" />
    
    </div>
    </form>
</body>
</html>
