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
            <asp:RadioButtonList ID="rbCity" runat="server">
                 <asp:ListItem Text="Delhi" Value="1" />
                 <asp:ListItem Text="Noida" Value="2" />
                 <asp:ListItem Text="Ghaziabad" Value="3" />
                 <asp:ListItem Text="Gurgaon" Value="4" />
            </asp:RadioButtonList>
            
         </p>
         <p>
            <asp:Label ID="lblVenue" runat="server" Text="Venue"></asp:Label>
                <asp:RadioButtonList ID="rbVenue" runat="server">
                 <asp:ListItem Text="Delhi" Value="1" />
                 <asp:ListItem Text="Noida" Value="2" />
                 <asp:ListItem Text="Ghaziabad" Value="3" />
                 <asp:ListItem Text="Gurgaon" Value="4" />
            </asp:RadioButtonList>
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
