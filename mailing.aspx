<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mailing.aspx.cs" Inherits="mailing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="./css/content.css" rel="stylesheet" />

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
				<img src="./assets/images/userdp.svg" height="30%" width="30%" alt="userdp"><br/>
                    <form id="form1" runat="server">

                 <asp:Button ID="btnlogout" runat="server" Text="LOG OUT" OnClick="btnlogout_Click" />       
			</p>

</div>


        <div id="signup2">
              <a href="InvitationSender.html"> <img src="./assets/images/goback.svg" height="20%" width="20%" style="margin-left:5vw;" alt="Go Back"></a>

    		<div id="signform2">
                           <p id="intro1">Mail Invitations</p><br/>

               
                <asp:TextBox ID="tbxYourMail" type="email" runat="server" placeholder="Enter your email"></asp:TextBox>

                <asp:TextBox ID="tbxYourPass" type="password" runat="server" placeholder="Enter your mail password"></asp:TextBox>
 
                <asp:TextBox ID="tbxToMail" type="email" runat="server" placeholder="Enter Reciever's mail"></asp:TextBox>

                <asp:TextBox ID="tbxSubject" rows="30" cols="40" type="text" runat="server" placeholder="Enter Subject of messaging"></asp:TextBox>

                <asp:TextBox ID="tbxMessage" TextMode="MultiLine" runat="server" placeholder="Add your Custom Message"></asp:TextBox>

                   <div id="labeldropdown">

               <asp:FileUpload ID="FileUpload" runat="server" />
                     </div>   
       
          <asp:Button ID="Button1" runat="server" Text="SEND MAIL" OnClick="Button1_Click" />
          <br />
        <asp:Label ID="lblResult" runat="server" ></asp:Label>
               </div>
        </div>
    </form>
  
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
