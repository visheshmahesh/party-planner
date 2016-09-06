<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

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
                  <asp:TextBox ID="TxtUserName" runat="server" Name="TxtUserName" placeHolder="Username"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidatorname" runat="server" ErrorMessage="Username is required" ControlToValidate="TxtUserName" ForeColor="red"></asp:RequiredFieldValidator>
        <br />
                      <br />
                      <br />
                   <asp:TextBox ID="TxtPassword" type="password" runat="server" Name="TxtPassword" placeHolder="password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="password is required" ControlToValidate="TxtPassword" ForeColor="red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
                  
            <asp:Button ID="Button1" runat="server" Text="SIGN IN" OnClick="Button1_Click" />
        </fieldset>
    
    </div>
    </form>
</body>
</html>
