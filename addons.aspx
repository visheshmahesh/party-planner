<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addons.aspx.cs" Inherits="addons" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   
    <asp:Label ID="lblFood" runat="server" Text="Food"></asp:Label>
            <asp:RadioButtonList ID="rbFood" runat="server">
                <asp:ListItem Text="none" Selected="true" Value="none" />
                 <asp:ListItem Text="veg" Value="veg" />
                 <asp:ListItem Text="non veg" Value="non veg" />
                   <asp:ListItem Text="veg+non veg" Value="veg+non veg" />

          </asp:RadioButtonList>
         <asp:Label ID="lblMusic" runat="server" Text="Music"></asp:Label>
            <asp:RadioButtonList ID="rbMusic" runat="server">
                <asp:ListItem Text="none" Selected="true" Value="none" />
                 <asp:ListItem Text="dj" Value="dj" />
                <asp:ListItem Text="light music" Value="light music" />
                   

          </asp:RadioButtonList>
         <asp:Label ID="lblDecoration" runat="server" Text="Decoration"></asp:Label>
            <asp:RadioButtonList ID="rbDecoration" runat="server">
                <asp:ListItem Text="none" Selected="true" Value="none" />
                 <asp:ListItem Text="Standard" Value="standard" />
                 <asp:ListItem Text="Deluxue" Value="deluxue" />
                   

          </asp:RadioButtonList>
         <asp:Label ID="lblCake" runat="server" Text="Cake"></asp:Label>
            <asp:RadioButtonList ID="rbCake" runat="server">
                <asp:ListItem Text="none" Selected="true" Value="none" />
                 <asp:ListItem Text="pineapple" Value="pineapple" />
                 <asp:ListItem Text="chocolate" Value="chocolate" />
                   <asp:ListItem Text="black forest" Value="black forest" />
                
                <asp:ListItem Text="Vanilla" Value="Vanilla" />

          </asp:RadioButtonList>


     <p>
                <asp:Button ID="btnNext" runat="server" Text="BOOK NOW" OnClick="btnNext_Click" />       
        </p>

           
        </p>
    </div>
    </form>
</body>
</html>
