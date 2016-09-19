<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="./css/content.css" rel="stylesheet" />

</head>
<body onload="resetForm()","resetForm1()">
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
       <div id="login">
	        <div id="logform">
		<p id="intro">Login to Get Started</p><br/>

            <asp:TextBox ID="tbxEnterEmail" type="email" placeholder="Enter your Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" controltovalidate="tbxEnterEmail" ErrorMessage="Email is required" ValidationGroup="login" ForeColor="red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
 
                <asp:TextBox ID="tbxEnterpassword" type="password"  placeholder="Enter your password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" controltovalidate="tbxEnterpassword" ErrorMessage="Password is required" ValidationGroup="login" ForeColor="red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                
            <asp:Button ID="btnLogin" runat="server" text="LOGIN" OnClick="btnLogin_Click" />
              
            <asp:HyperLink 
            ID="HyperLink1" 
            runat="server"
            Text="Forgot Password?"
            NavigateUrl="~/passwordMailing.aspx">
            
            </asp:HyperLink>
        </div>
        </div>    
    <div id="divider" style="background-color: #95a5a6; height: 100vh; width: 0.1vw; float:left;"></div>

        <div id="signup">
    		<div id="signform">
           <p id="intro1">Signup if you haven't already</p><br/>

                <asp:TextBox ID="tbxName" type="text" placeholder="Enter your Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" controltovalidate="tbxName" ErrorMessage="Name is required" ValidationGroup="signup" ForeColor="red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
 
                <asp:TextBox ID="tbxEmail" type="email"  placeholder="Enter your Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" controltovalidate="tbxEmail" ErrorMessage="Email is required" ValidationGroup="signup" ForeColor="red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                
                <asp:TextBox ID="tbxPassword" placeholder="Enter your Password" type="password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" controltovalidate="tbxPassword" ErrorMessage="Password is required" ValidationGroup="signup" ForeColor="red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>

                <asp:TextBox ID="tbxConfirmPassword"  type="password" placeholder="Confirm Password"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" runat="server" controltovalidate="tbxConfirmPassword" ErrorMessage="Passwords do not match" ValidationGroup="signup" ForeColor="red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>

                <asp:TextBox ID="tbxDOB" type="date" runat="server"></asp:TextBox>
                <asp:Label ID="lblInfo" runat="server"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDOB" runat="server" controltovalidate="tbxDOB" ErrorMessage="Date of birth is required" ValidationGroup="signup" ForeColor="red" Font-Names="Calibri" Font-Size="Small"></asp:RequiredFieldValidator>
                         
         <%--   <div id="labeldropdown">
            <asp:Label ID="lblLoginAs" runat="server" Text="Register As" ></asp:Label>
            <asp:DropDownList ID="ddlLoginAs" runat="server">
                <asp:ListItem Selected="True" Value="2">User</asp:ListItem>
            </asp:DropDownList>
                </div>--%>

                <asp:Button ID="btnSignup" runat="server" Text="SIGN UP" OnClick="btnSignup_Click" />        
            </div>
        </div>
        </form>
           
         
<div id="footer">
	<div id="footertext">
	<p id="partyfooter">Party Planner</p>
	<p id="footerinfo">-A Project By Ayush, Vishesh And Akshay</p>
</div>
<div id="footerlinks">
	<a href="#"><img src="./assets/images/fb.svg" alt="Find Us on Facebook" id="footerimglink"/></a>
	<a href="#"><img src="./assets/images/insta.svg"  alt="Find us on Instagram" id="footerimglink2"/></a>
</div>
<img src="./assets/images/SILogo.svg" alt="SILogo" id="SI"/>
</div>

    </div>
      <script>
        function resetForm1() {
            document.getElementById("tbxName").value = "";
            document.getElementById("tbxEmail").value = "";
            document.getElementById("tbxPassword").value = "";
            document.getElementById("tbxConfirmPassword").value = "";
            document.getElementById("tbxDOB").value = "";


        }
        function resetForm1() {
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