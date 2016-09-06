<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="Signup" runat="server">
    <div>
         <fieldset>
        <legend>SIGN UP</legend>
        <asp:TextBox ID="TxtName" runat="server" Name="TxtName" placeHolder="name"></asp:TextBox>         
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorname" runat="server" ErrorMessage="name is required" ControlToValidate="TxtName" ForeColor="red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="TxtEmail" runat="server" Name="TxtEmail" placeHolder="email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="email is required" ControlToValidate="TxtEmail" ForeColor="red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="TxtContact" runat="server" Name="TxtContact" placeHolder="contact"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="contact is required" ControlToValidate="TxtContact" ForeColor="red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="TxtPassword" runat="server" Name="TxtPassword" placeHolder="password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="password is required" ControlToValidate="TxtPassword" ForeColor="red"></asp:RequiredFieldValidator>

        <br />
        <br />
        <asp:TextBox ID="TxtDate" type="date" runat="server" Name="TxtDate" placeHolder="date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="dob is required" ControlToValidate="TxtDate" ForeColor="red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <asp:RadioButton ID="radioButton1" runat="server" name="gender" value="male" />Male<br />
        <asp:RadioButton ID="radioButton2" runat="server" name="gender" value="female" />Female
            <br />
      
        <asp:Button id="Button1" runat="server" Text="Sign up" ToolTip="Click to sign up" OnClick="Button1_onClick"   />

         </fieldset>
    
    </div>
    </form>
</body>
</html>
