<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateEvent.aspx.cs" Inherits="updateEvent" %>

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

        <div id="addevent">
                          <a href="createUpdate.aspx"> <img src="./assets/images/goback.svg" height="15%" width="15%" style="margin-left:5vw;" alt="Go Back"></a>

		<fieldset id="eventtype">
			<label id="addlabel">SELECT EVENT TYPE</label>
            <div id="type">
          <asp:RadioButtonList ID="rbEvent" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Text='<img src="../assets/images/bday.svg" ID="radioimage" alt="Birthday" />' Value="1" />
               <asp:ListItem Text='<img src="../assets/images/wedding.svg" ID="radioimage" alt="Wedding" />' Value="2" />

               </asp:RadioButtonList>
        <!--  <asp:RequiredFieldValidator ID="RequiredFieldValidatorEvent" runat="server" controltovalidate="rbEvent" ErrorMessage="Event Name is required" ForeColor="red"></asp:RequiredFieldValidator>-->
            </div>
            </fieldset>

           	<fieldset>
        <label id="addlabel">SELECT CITY</label>
          <asp:DropDownList ID="ddlCity" runat="server"  AutoPostBack="true">
              <asp:ListItem Text="Delhi" Value="1"></asp:ListItem>
              <asp:ListItem Text="Ghaziabad" Value="2"></asp:ListItem>
              <asp:ListItem Text="Noida" Value="3"></asp:ListItem>
              <asp:ListItem Text="Meerut" Value="4"></asp:ListItem>

          </asp:DropDownList>
         <!-- <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" controltovalidate="ddlCity" ErrorMessage="City is required" ForeColor="red"></asp:RequiredFieldValidator> -->
</fieldset>
           	<fieldset>
                    <label id="addlabel">SELECT VENUE</label>
              		<button type="button" id="change"onclick="Change()">VIEW VENUE</button>

           <asp:DropDownList ID="ddlVenue" runat="server" AutoPostBack="true">
              <asp:ListItem Text="Country inn" Value="4"></asp:ListItem>
              <asp:ListItem Text="Eden lawn" Value="5"></asp:ListItem>
              <asp:ListItem Text="Grandsaph" Value="7"></asp:ListItem>
              <asp:ListItem Text="Legarden" Value="8"></asp:ListItem>
              <asp:ListItem Text="Mandap" Value="9"></asp:ListItem>
              <asp:ListItem Text="Pind Baluchi" Value="10"></asp:ListItem>
              <asp:ListItem Text="Royal Palace" Value="11"></asp:ListItem>
              <asp:ListItem Text="Tangerine" Value="12"></asp:ListItem>
              <asp:ListItem Text="Greno" Value="13"></asp:ListItem>
              <asp:ListItem Text="Openter" Value="14"></asp:ListItem>
              <asp:ListItem Text="Spice" Value="15"></asp:ListItem>
              <asp:ListItem Text="The fizz" Value="16"></asp:ListItem>
              <asp:ListItem Text="Harmony inn" Value="17"></asp:ListItem>
              <asp:ListItem Text="JP Resort" Value="18"></asp:ListItem>
              <asp:ListItem Text="Krome" Value="19"></asp:ListItem>
              <asp:ListItem Text="Opera" Value="20"></asp:ListItem>
           </asp:DropDownList>
        <!--   <asp:RequiredFieldValidator ID="RequiredFieldValidatorVenue" runat="server" controltovalidate="ddlVenue" ErrorMessage="Venue is required" ForeColor="red"></asp:RequiredFieldValidator> -->
			<div id="venueinfo">
				<img src="../assets/images/placeholder.png" id="venuepic"><p id="venuedesc">  </p>
			</div>
		</fieldset>
            
		<fieldset>
			<label id="addlabel">EVENT DATE</label>
           <asp:TextBox ID="tbxDate" type="date" runat="server"></asp:TextBox>
         <!--   <asp:RequiredFieldValidator ID="RequiredFieldValidatorDate" runat="server" controltovalidate="tbxDate" ErrorMessage="Date is required" ForeColor="red"></asp:RequiredFieldValidator>-->
          </fieldset>

    		<fieldset>
			<label id="addlabel">Addons</label>

			<fieldset>
				<label id="addlabel">Food</label>
             <asp:RadioButtonList ID="rbFood" runat="server" Height="59px" RepeatDirection="Horizontal">
               <asp:ListItem Text='<img src="../assets/images/none.svg" alt="None" ID="radioimage" />' Selected="true" Value="none" />
               <asp:ListItem Text='<img src="../assets/images/veg.svg" alt="Veg" ID="radioimage" />' Value="veg" />
               <asp:ListItem Text='<img src="../assets/images/nonveg.svg" alt="Non Veg" ID="radioimage" />' Value="non veg" />
               <asp:ListItem Text='<img src="../assets/images/omni.svg" alt="Omni" ID="radioimage" />' Value="veg+non veg" />
           </asp:RadioButtonList>
			</fieldset>

       	<fieldset>
				<label id="addlabel">Music</label>
           <asp:RadioButtonList ID="rbMusic" runat="server" Height="50px" RepeatDirection="Horizontal">
               <asp:ListItem Text='<img src="../assets/images/none.svg" alt="None" ID="radioimage" />' Selected="true" Value="none" />
               <asp:ListItem Text='<img src="../assets/images/DJ.svg" alt="DJ" ID="radioimage" />' Value="dj" />
               <asp:ListItem Text='<img src="../assets/images/lightmusic.svg" alt="Light Music" ID="radioimage" />' Value="light music" />
   
          </asp:RadioButtonList>
   		</fieldset>

			<fieldset>
				<label id="addlabel">Decoration</label>
          <asp:RadioButtonList ID="rbDecoration" runat="server" Height="50px" RepeatDirection="Horizontal">
              <asp:ListItem Text='<img src="../assets/images/none.svg" alt="None" ID="radioimage" />' Selected="true" Value="none" />
              <asp:ListItem Text='<img src="../assets/images/standarddec.svg" alt="Standard" ID="radioimage" />' Value="standard" />
              <asp:ListItem Text='<img src="../assets/images/deluxedec.svg" alt="Deluxe" ID="radioimage" />' Value="deluxue" />
          </asp:RadioButtonList>
   			</fieldset>


			<fieldset>
				<label id="addlabel">Cake</label>
          <asp:RadioButtonList ID="rbCake" runat="server" Height="50px" RepeatDirection="Horizontal">
              <asp:ListItem Text='<img src="../assets/images/none.svg" alt="None" ID="radioimage" />' Selected="true" Value="none" />
              <asp:ListItem Text='<img src="../assets/images/pineapple.svg" alt="Pineapple" ID="radioimage" />' Value="pineapple" />
              <asp:ListItem Text='<img src="../assets/images/truffle.svg" alt="Truffle" ID="radioimage" />' Value="chocolate" />
              <asp:ListItem Text='<img src="../assets/images/strawberry.svg" alt="Strawberry" ID="radioimage" />' Value="Strawberry" />
          </asp:RadioButtonList>
                   			</fieldset>

                <asp:Button ID="btnBookNow" runat="server" Text="UPDATE DETAILS" OnClick="btnNext_Click" />       
    </div>
    </form>
    
<div id="footer">
	<div id="footertext">
	<p id="partyfooter">Party Planner</p>
	<p id="footerinfo">-A Project By Ayush, Vishesh and Akshay</p>
</div>
<div id="footerlinks">
	<a href="#"><img src="../assets/images/fb.svg" alt="Find Us on Facebook" id="footerimglink"></a>
	<a href="#"><img src="../assets/images/insta.svg" alt="Find us on Instagram" id="footerimglink"></a>
</div>
<img src="../assets/images/SILogo.svg" alt="SILogo" id="SI"/>
</div>

        </div>
</body>
</html>


