<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminRegistration.aspx.cs" Inherits="adminRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="./css/content.css" rel="stylesheet" />

</head>
<body onload="resetForm()">
    	<script src="./js/main.js"></script>
 
     <div class="container">
   
         <div id="header">
			<p id="party">Party Planner</p>
			<p id="hint">ALL YOUR PARTY PLANNING NEEDS IN ONE PLACE</p>
         </div>
         <div id="logstatus">
			<p id="text">Not Logged In</p>
         </div>

    <form id="form1" runat="server">

        <div id="signup2">
    		<div id="signform2">
                           <p id="intro1">Add new admin</p><br/>

                <asp:TextBox ID="tbxName" type="text" placeholder="Enter your Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" controltovalidate="tbxName" ErrorMessage="Name is required" ForeColor="red"></asp:RequiredFieldValidator>
 
                <asp:TextBox ID="tbxEmail" type="email"  placeholder="Enter your Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" controltovalidate="tbxEmail" ErrorMessage="Email is required" ForeColor="red"></asp:RequiredFieldValidator>
                
                <asp:TextBox ID="tbxPassword" placeholder="Enter your Password" type="password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" controltovalidate="tbxPassword" ErrorMessage="Password is required" ForeColor="red"></asp:RequiredFieldValidator>

                <asp:TextBox ID="tbxConfirmPassword"  type="password" placeholder="Confirm Password"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" runat="server" controltovalidate="tbxConfirmPassword" ErrorMessage="Passwords do not match" ForeColor="red"></asp:RequiredFieldValidator>

                <asp:TextBox ID="tbxDOB" type="date" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDOB" runat="server" controltovalidate="tbxDOB" ErrorMessage="Date of birth is required" ForeColor="red"></asp:RequiredFieldValidator>
                         
                   <div id="labeldropdown">

           <asp:Label ID="lblLoginAs" runat="server" Text="Register As" ></asp:Label>
            <asp:DropDownList ID="ddlLoginAs" runat="server">
                <asp:ListItem Selected="True" Value="1">Admin</asp:ListItem>
             
            </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlLoginAs" ErrorMessage="field required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <asp:Button ID="btnNext" runat="server" Text="SIGN UP" OnClick="btnNext_Click" />        
    
               </div>
        </div>
    </form>
  
<div id="footer">
	<div id="footertext">
	<p id="partyfooter">Party Planner</p>
	<p id="footerinfo">-A Project By Ayush Singh, Vishesh Maheshwari And Akshay</p>
</div>
<div id="footerlinks">
	<a href="https://www.facebook.com/ayush013"><img src="../assets/images/fb.svg" alt="Find Us on Facebook" id="footerimglink"></a>
	<a href="https://www.instagram.com/alphaayush"><img src="../assets/images/insta.svg" alt="Find us on Instagram" id="footerimglink"></a>
	<p id="footeradmin"><a href="#">Contact Us</a></p>
</div>
<img src="../assets/images/SILogo.svg" alt="SILogo" id="SI">
</div>

    </div>
    <script>
        function resetForm()
        {
            document.getElementById("tbxName").value = "";
            document.getElementById("tbxEmail").value = "";
            document.getElementById("tbxPassword").value = "";
            document.getElementById("tbxConfirmPassword").value = "";
            document.getElementById("tbxDOB").value = "";
          
           
        }
    </script>
</body>
</html>