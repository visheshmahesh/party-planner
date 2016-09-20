<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createEvent.aspx.cs" Inherits="createEvent" %>

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
             <asp:Label ID="lblWelcome" runat="server" Text="WELCOME " style="font-family:sans-serif; position:absolute; top:18vh; right:6vw; " ></asp:Label>

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

          <asp:DropDownList ID="ddlCity" runat="server" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged" AutoPostBack="true">
          </asp:DropDownList>
       <!--    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" controltovalidate="ddlCity" ErrorMessage="City is required" ForeColor="red"></asp:RequiredFieldValidator>-->
		    </fieldset>
           	<fieldset>
                    <label id="addlabel">SELECT VENUE</label>
                   
           <asp:DropDownList ID="ddlVenue" runat="server" AutoPostBack="true" >
           </asp:DropDownList>
                   <input type="button" id="change" value="View Venue"  onclick="Change()" />
                    <asp:Button ID="change" runat="server" Text="SELECT" OnClick="change_Click" ></asp:Button>

         <!--   <asp:RequiredFieldValidator ID="RequiredFieldValidatorVenue" runat="server" controltovalidate="ddlVenue" ErrorMessage="Venue is required" ForeColor="red"></asp:RequiredFieldValidator>-->
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
               <asp:Button ID="btnBookNow" runat="server" Text="BOOK NOW" OnClick="btnNext_Click" />    
                

        </div>
    
<aside id="sidebar">
                                  <asp:TextBox ID="tbxVenueId" type="text" runat="server" ClientIDMode="Static" style="visibility:hidden;"></asp:TextBox>

</aside>
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
      <script>
        function resetForm()
        {
            document.getElementById("rbEvent").value = "";
            document.getElementById("ddlCity").value = "";

            document.getElementById("ddlVenue").value = "";
            document.getElementById("tbxDate").value = "";
        
          
            document.getElementById("rbFood").value = "";
            document.getElementById("rbMusic").value = "";
            document.getElementById("rbDecoration").value = "";
            document.getElementById("rbCake").value = "";
           
        }
    </script>
</body>
</html>
