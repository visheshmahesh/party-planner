<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body onload="resetForm()">
    <form id="form1" runat="server">
    <div>
        <p>
            <asp:Label ID="lblEnterEmail" runat="server" Text="Enter Email" ></asp:Label>
            <asp:TextBox ID="tbxEnterEmail" runat="server" type="email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="tbxEnterEmail" ErrorMessage="Incorrect Email" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="lblEnterpassword" runat="server" Text="Enter password" ></asp:Label>
            <asp:TextBox ID="tbxEnterpassword" runat="server" type="password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorpassword" runat="server" ControlToValidate="tbxEnterEmail" ErrorMessage="Incorrect password" ForeColor="Red"></asp:RequiredFieldValidator>

        </p>
     
        <p>
            <asp:Button ID="btnLogin" runat="server" text="LOGIN" OnClick="btnLogin_Click" />
        </p>
    </div>
    </form>
    <script>
        function resetForm()
        {
            document.getElementById("tbxEnterEmail").value = "";
            document.getElementById("tbxEnterpassword").value = "";
        }
     </script>
           
</body>
</html>