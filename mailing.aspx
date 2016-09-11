<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mailing.aspx.cs" Inherits="mailing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <p>
               
                <asp:TextBox ID="tbxYourMail" type="email" runat="server" placeholder="your email"></asp:TextBox>
               </p>
         <p>
               
                <asp:TextBox ID="tbxYourPass" type="text" runat="server" placeholder="your password"></asp:TextBox>
               </p>
         <p>
               
                <asp:TextBox ID="tbxToMail" type="email" runat="server" placeholder="reciever mail"></asp:TextBox>
               </p>
         <p>
               
                <asp:TextBox ID="tbxSubject" rows="30" cols="40" type="text" runat="server" placeholder="subject"></asp:TextBox>
               </p>
         <p>
               
                <asp:TextBox ID="tbxMessage" type="text" runat="server" placeholder="message"></asp:TextBox>
               </p>
        
       
          <asp:Button ID="Button1" runat="server" Text="send mail" OnClick="Button1_Click" />
          <br />
        <asp:Label ID="lblResult" runat="server" ></asp:Label>
        
       
    </div>
    </form>
</body>
</html>
