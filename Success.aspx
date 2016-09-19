<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Success.aspx.cs" Inherits="Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    		<link rel="stylesheet" href="../css/content.css">

</head>
<body>
    	<script src="./js/main.js"></script>

<div class="container">

<div id="header">
			<p id="party">Party Planner</p>
			<p id="hint">ALL YOUR PARTY PLANNING NEEDS IN ONE PLACE</p>
</div>

<div id="logstatus">
			<p id="text2">

				<img src="../assets/images/userdp.svg" height="30%" width="30%" alt="userdp"><br/>


                                          <form id="form1" runat="server">

                 <asp:Button ID="btnlogout" runat="server" Text="LOG OUT" OnClick="btnlogout_Click" />       
			</p>
</div>

    </form>
 
    <h1>YOU HAVE SUCCESSFULLY PLANNED YOUR PARTY!</h1><br />
    <div style="margin-left:27vw;">
    <p>In case you missed something-<br /><br />
        <a href="updateEvent.aspx" style="color:#34495e">Click here to Update Event details</a> |
	<a href="InvitationSender.html" style="color:#34495e">Click here to Generate Invitations</a></p><br />
        </div>
<div id="footer">
	<div id="footertext">
	<p id="partyfooter">Party Planner</p>
	<p id="footerinfo">-A Project By Ayush Singh, Vishesh Maheshwari and Akshay</p>
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
