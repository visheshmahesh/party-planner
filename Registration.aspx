<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body onload="resetForm()">
    <form id="form1" runat="server">
    <div>
        <p>
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="tbxName" type="text" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" controltovalidate="tbxName" ErrorMessage="Name is required" ForeColor="red"></asp:RequiredFieldValidator>
        </p>
        <p>
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="tbxEmail" type="email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" controltovalidate="tbxEmail" ErrorMessage="Email is required" ForeColor="red"></asp:RequiredFieldValidator>
        </p>
        <p>
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="tbxPassword" type="password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" controltovalidate="tbxPassword" ErrorMessage="Password is required" ForeColor="red"></asp:RequiredFieldValidator>
        </p>
        <p>
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
                <asp:TextBox ID="tbxConfirmPassword"  type="password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" runat="server" controltovalidate="tbxConfirmPassword" ErrorMessage="Passwords do not match" ForeColor="red"></asp:RequiredFieldValidator>
        </p>
    
      
       
        <p>
                <asp:Label ID="lblContactNo" runat="server" Text="ContactNo"></asp:Label>
                <asp:TextBox ID="tbxContactNo" type="text" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorContactNo" runat="server" controltovalidate="tbxContactNo" ErrorMessage="Contact is required" ForeColor="red"></asp:RequiredFieldValidator>
        </p>
        <p>
                <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth"></asp:Label>
                <asp:TextBox ID="tbxDOB" type="date" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDOB" runat="server" controltovalidate="tbxDOB" ErrorMessage="Date of birth is required" ForeColor="red"></asp:RequiredFieldValidator>
        </p>
            <p>
           <asp:Label ID="lblLoginAs" runat="server" Text="Register As" ></asp:Label>
            <asp:DropDownList ID="ddlLoginAs" runat="server">
                <asp:ListItem Selected="True" Value="2">User</asp:ListItem>
             
            </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlLoginAs" ErrorMessage="field required" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
     
        <p>
                <asp:Button ID="btnNext" runat="server" Text="signup" OnClick="btnNext_Click" />        
        </p>
    
    </div>
    </form>
    <script>
        function resetForm()
        {
            document.getElementById("tbxName").value = "";
            document.getElementById("tbxEmail").value = "";
            document.getElementById("tbxPassword").value = "";
            document.getElementById("tbxConfirmPassword").value = "";
            document.getElementById("tbxContactNo").value = "";
            document.getElementById("tbxDOB").value = "";
          
           
        }
    </script>
</body>
</html>