<%@ Page Language="C#" AutoEventWireup="true" CodeFile="passwordMailing.aspx.cs" Inherits="passwordMailing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="./css/content.css" rel="stylesheet" />


</head>
<body>
    
<div class="container">

<div id="header">
			<p id="party">Party Planner</p>
			<p id="hint">ALL YOUR PARTY PLANNING NEEDS IN ONE PLACE</p>
</div>

         <div id="logstatus">
			<p id="text">Not Logged In</p>
         </div>
    <div id="goback">        <p><a href="Login.aspx">Go Back</a></p>
</div>

    <div id="forgotpwd">
    <form id="form1" runat="server">


    		<p id="intro">Forgot Password?</p><br/>

         <asp:TextBox ID="tbxEmail" runat="server" placeholder="Enter your Email" type="email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" controltovalidate="tbxEmail"  ErrorMessage="Email is required" ForeColor="red"></asp:RequiredFieldValidator>

          <asp:Button ID="btnSend" runat="server" text="Send Mail" OnClick="btnSend_Click" />

    </form>
        </div>
    <div id="footer">
	<div id="footertext">
	<p id="partyfooter">Party Planner</p>
	<p id="footerinfo">-A Project By Ayush Singh, Vishesh Maheshwari And Akshay</p>
</div>
<div id="footerlinks">
	<a href="#"><img src="../assets/images/fb.svg" alt="Find Us on Facebook" id="footerimglink"></a>
	<a href="#"><img src="../assets/images/insta.svg" alt="Find us on Instagram" id="footerimglink"></a>
</div>
<img src="../assets/images/SILogo.svg" alt="SILogo" id="SI">
</div>
    </div>
</body>
</html>
