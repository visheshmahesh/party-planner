<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication1.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <fieldset>
        <legend>SIGN UP</legend>
        <asp:TextBox ID="TextBox1" runat="server" Name="name" placeHolder="name"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Name="email" placeHolder="email"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox3" runat="server" Name="contact" placeHolder="contact"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox4" runat="server" Name="password" placeHolder="email"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox5" type="date" runat="server" Name="password" placeHolder="email"></asp:TextBox>
        <input type="date" Name="date" Placeholder="DOB" /><br />

        <asp:RadioButton ID="radioButton1" runat="server" name="gender" />Male<br />
        <asp:RadioButton ID="radioButton2" runat="server" name="gender" />Female
            <br />
        <input ID="Submit" Type="submit" Value="SignUp" />
        </fieldset>
    </div>
   </form>

</body>
</html>
