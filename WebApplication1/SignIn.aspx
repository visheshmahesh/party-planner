<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WebApplication1.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <fieldset>
            <legend>SIGN IN</legend>
                  <asp:TextBox ID="TextBox1" runat="server" Name="name" placeHolder="email"></asp:TextBox>
                      <br />
                      <br />
                   <asp:TextBox ID="TextBox2" runat="server" Name="email" placeHolder="password"></asp:TextBox>
        <br />
        <br />
                  <input ID="Submit" Type="submit" Value="SignIn" />
        </fieldset>
    
    </div>
    </form>
</body>
</html>
