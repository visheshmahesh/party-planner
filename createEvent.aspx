﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createEvent.aspx.cs" Inherits="createEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <p>
          <asp:Label ID="lblEvent" runat="server" Text="Event"></asp:Label>
             <asp:DropDownList ID="ddlEvent" runat="server">
                  <asp:ListItem Enabled="true" Text="Select Event" Value="-1"></asp:ListItem  >
                  <asp:ListItem Text="Birthday" Value="1"></asp:ListItem>
                  <asp:ListItem Text="Anniversery" Value="2"></asp:ListItem>
             </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorEvent" runat="server" controltovalidate="ddlEvent" ErrorMessage="Event Name is required" ForeColor="red"></asp:RequiredFieldValidator>
        </p>
        <p>
          <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
              <asp:DropDownList ID="ddlCity" runat="server">
                  <asp:ListItem Enabled="true" Text="Select City" Value="-1"></asp:ListItem  >
                  <asp:ListItem Text="Delhi" Value="1"></asp:ListItem>
                  <asp:ListItem Text="Noida" Value="2"></asp:ListItem>
                  <asp:ListItem Text="Ghaziabad" Value="3"></asp:ListItem>
                  <asp:ListItem Text="Gurgaon" Value="4"></asp:ListItem>
             </asp:DropDownList>
            
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" controltovalidate="ddlCity" ErrorMessage="City is required" ForeColor="red"></asp:RequiredFieldValidator>
         </p>
         <p>
                <asp:Label ID="lblVenue" runat="server" Text="Venue"></asp:Label>
                <asp:TextBox ID="tbxVenue" type="text" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorVenue" runat="server" controltovalidate="tbxVenue" ErrorMessage="Contact is required" ForeColor="red"></asp:RequiredFieldValidator>
        </p>
         <p>
             <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label>
                <asp:TextBox ID="tbxDate" type="date" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDate" runat="server" controltovalidate="tbxDate" ErrorMessage="Date is required" ForeColor="red"></asp:RequiredFieldValidator>
           
       </p>
     
       
       
        <p>
                <asp:Label ID="lblGuests" runat="server" Text="No Of Guests"></asp:Label>
                <asp:TextBox ID="tbxGuests" type="text" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorGuests" runat="server" controltovalidate="tbxGuests" ErrorMessage="no of guests is required" ForeColor="red"></asp:RequiredFieldValidator>
        </p>
     
     <p>
                <asp:Button ID="btnNext" runat="server" Text="submit" OnClick="btnNext_Click" />       
        </p>
    </div>
    </form>
      <script>
        function resetForm()
        {
            document.getElementById("ddlEvent").value = "";
            document.getElementById("tbxDate").value = "";
            document.getElementById("ddlCity").value = "";
            
            document.getElementById("tbxVenue").value = "";
            document.getElementById("tbxGuests").value = "";
          
           
        }
    </script>
</body>
</html>
