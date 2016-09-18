<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateEvent.aspx.cs" Inherits="updateEvent" %>

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
        </p>
        <p>
          <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
          <asp:DropDownList ID="ddlCity" runat="server"  AutoPostBack="true">
              <asp:ListItem Text="Delhi" Value="1"></asp:ListItem>
              <asp:ListItem Text="Ghaziabad" Value="2"></asp:ListItem>
              <asp:ListItem Text="Noida" Value="3"></asp:ListItem>
              <asp:ListItem Text="Meerut" Value="4"></asp:ListItem>

          </asp:DropDownList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" controltovalidate="ddlCity" ErrorMessage="City is required" ForeColor="red"></asp:RequiredFieldValidator>
         </p>
         <p>
           <asp:Label ID="lblVenue" runat="server" Text="Venue"></asp:Label>
           <asp:DropDownList ID="ddlVenue" runat="server" AutoPostBack="true">
              <asp:ListItem Text="Country inn" Value="1"></asp:ListItem>
              <asp:ListItem Text="Eden lawn" Value="2"></asp:ListItem>
              <asp:ListItem Text="Grandsaph" Value="3"></asp:ListItem>
              <asp:ListItem Text="Legarden" Value="4"></asp:ListItem>
              <asp:ListItem Text="Mandap" Value="5"></asp:ListItem>
              <asp:ListItem Text="Pind Baluchi" Value="6"></asp:ListItem>
              <asp:ListItem Text="Royal Palace" Value="7"></asp:ListItem>
              <asp:ListItem Text="Tangerine" Value="8"></asp:ListItem>
              <asp:ListItem Text="Greno" Value="9"></asp:ListItem>
              <asp:ListItem Text="Openter" Value="10"></asp:ListItem>
              <asp:ListItem Text="Spice" Value="11"></asp:ListItem>
              <asp:ListItem Text="The fizz" Value="12"></asp:ListItem>
              <asp:ListItem Text="Harmony inn" Value="13"></asp:ListItem>
              <asp:ListItem Text="JP Resort" Value="14"></asp:ListItem>
              <asp:ListItem Text="Krome" Value="15"></asp:ListItem>
              <asp:ListItem Text="Opera" Value="16"></asp:ListItem>
           </asp:DropDownList>
           <asp:RequiredFieldValidator ID="RequiredFieldValidatorVenue" runat="server" controltovalidate="ddlVenue" ErrorMessage="Venue is required" ForeColor="red"></asp:RequiredFieldValidator>
        </p>
         <p>
             <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label>
                <asp:TextBox ID="tbxDate" type="date" runat="server"></asp:TextBox>
           
       </p>      
        <p>
                <asp:Label ID="lblGuests" runat="server" Text="No Of Guests"></asp:Label>
                <asp:TextBox ID="tbxGuests" type="text" runat="server"></asp:TextBox>
        </p>

     <asp:Label ID="lblFood" runat="server" Text="Food"></asp:Label>
            <asp:RadioButtonList ID="rbFood" runat="server">
                <asp:ListItem Text="none" Value="none" />
                 <asp:ListItem Text="veg" Value="veg" />
                 <asp:ListItem Text="non veg" Value="non veg" />
                   <asp:ListItem Text="veg+non veg" Value="veg+non veg" />

          </asp:RadioButtonList>
         <asp:Label ID="lblMusic" runat="server" Text="Music"></asp:Label>
            <asp:RadioButtonList ID="rbMusic" runat="server">
                <asp:ListItem Text="none" Value="none" />
                 <asp:ListItem Text="dj" Value="dj" />
                <asp:ListItem Text="light music" Value="light music" />
                   

          </asp:RadioButtonList>
         <asp:Label ID="lblDecoration" runat="server" Text="Decoration"></asp:Label>
            <asp:RadioButtonList ID="rbDecoration" runat="server">
                <asp:ListItem Text="none" Value="none" />
                 <asp:ListItem Text="Standard" Value="standard" />
                 <asp:ListItem Text="Deluxue" Value="deluxue" />
                   

          </asp:RadioButtonList>
         <asp:Label ID="lblCake" runat="server" Text="Cake"></asp:Label>
            <asp:RadioButtonList ID="rbCake" runat="server">
                <asp:ListItem Text="none" Value="none" />
                 <asp:ListItem Text="pineapple" Value="pineapple" />
                 <asp:ListItem Text="chocolate" Value="chocolate" />
                   <asp:ListItem Text="black forest" Value="black forest" />
                
                <asp:ListItem Text="Vanilla" Value="Vanilla" />

          </asp:RadioButtonList>
          <p>
                <asp:Button ID="btnNext" runat="server" Text="Update" OnClick="btnNext_Click" />       
        </p>
    </div>
    </form>
</body>
</html>
