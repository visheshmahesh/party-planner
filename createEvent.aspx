<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createEvent.aspx.cs" Inherits="createEvent" %>

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
            <asp:RadioButtonList ID="rbEvent" runat="server">
                 <asp:ListItem Text="Birthday" Value="1" />
                 <asp:ListItem Text="Marriage" Value="2" />
          </asp:RadioButtonList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorEvent" runat="server" controltovalidate="rbEvent" ErrorMessage="Event Name is required" ForeColor="red"></asp:RequiredFieldValidator>
        </p>
        <p>
          <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
            <asp:DropDownList ID="ddlCity" runat="server" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged" AutoPostBack="true">
            </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" controltovalidate="ddlCity" ErrorMessage="City is required" ForeColor="red"></asp:RequiredFieldValidator>
         </p>
         <p>
            <asp:Label ID="lblVenue" runat="server" Text="Venue"></asp:Label>
                <asp:DropDownList ID="ddlVenue" runat="server" AutoPostBack="true">
            </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorVenue" runat="server" controltovalidate="ddlVenue" ErrorMessage="Venue is required" ForeColor="red"></asp:RequiredFieldValidator>
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
    </div>
    </form>
      <script>
        function resetForm()
        {
            document.getElementById("rbEvent").value = "";
            document.getElementById("rbCity").value = "";

            document.getElementById("rbVenue").value = "";
            document.getElementById("tbxDate").value = "";
        
            document.getElementById("tbxGuests").value = "";
          
           
        }
    </script>
</body>
</html>
