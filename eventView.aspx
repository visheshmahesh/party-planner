<%@ Page Language="C#" AutoEventWireup="true" CodeFile="eventView.aspx.cs" Inherits="eventView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    		<link rel="stylesheet" href="./css/content.css">

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

       
        <div id="admintable">
                                                  <a href="AdminPanel.aspx"> <img src="./assets/images/goback.svg" id="goback" height="20%" width="20%" alt="Go Back"></a>

             <p id="inviheading">Users' Event Details</p>
       
            <asp:GridView ID="GridViewDataEvent" runat="server" AutoGenerateColumns="False" OnRowCommand="GridViewDataEvent_RowCommand" OnRowDeleting="GridViewDataEvent_DeleteRow" OnRowUpdating="GridViewDataEvent_UpdateRow" CellPadding="4" GridLines="None" ForeColor="#333333" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                   <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbEdit" CommandArgument='<%# Eval("UserId") %>' runat="server" CommandName="EditRow" Text="Edit">
                            </asp:LinkButton>
                            <asp:LinkButton ID="lbDelete" CommandArgument='<%# Eval("UserId") %>' runat="server" CommandName="Delete" Text="Delete">
                            </asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                           <asp:LinkButton ID="lbUpdate" CommandArgument='<%# Eval("UserId") %>' runat="server" CommandName="Update" Text="Update">
                           </asp:LinkButton>
                           <asp:LinkButton ID="lbCancel" CommandArgument='<%# Eval("UserId") %>' runat="server" CommandName="CancelUpdate" Text="Cancel">
                           </asp:LinkButton>
                            
                              
                            
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="UserId">
                        <ItemTemplate>
                            <asp:Label ID="lblUserId" runat="server" Text='<%# Eval("UserId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EventId">
                        <EditItemTemplate>
                            <asp:TextBox ID="tbxEventId" runat="server" Text='<%# Eval("EventId") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblEventId" runat="server" Text='<%# Eval("EventId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CityId">
                        <EditItemTemplate>
                            <asp:TextBox ID="tbxCityId" runat="server" Text='<%# Eval("CityId") %>'></asp:TextBox>
                        </EditItemTemplate>
                         <ItemTemplate>
                            <asp:Label ID="lblCityId" runat="server" Text='<%# Eval("CityId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="VenueId">
                        <EditItemTemplate>
                            <asp:TextBox ID="tbxVenueId" runat="server" Text='<%# Eval("VenueId") %>'></asp:TextBox>
                        </EditItemTemplate>
                         <ItemTemplate>
                            <asp:Label ID="lblVenueId" runat="server" Text='<%# Eval("VenueId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                 

                    <asp:TemplateField HeaderText="Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="tbxDate" type="date" runat="server" Text='<%# Eval("Date") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblDate" type="date" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                 <asp:TemplateField HeaderText="Food">
                        <EditItemTemplate>
                            <asp:TextBox ID="tbxFood" type="text" runat="server" Text='<%# Eval("Food") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblFood" type="text" runat="server" Text='<%# Eval("Food") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                 <asp:TemplateField HeaderText="Decoration">
                        <EditItemTemplate>
                            <asp:TextBox ID="tbxDecoration" type="text" runat="server" Text='<%# Eval("Decoration") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblDecoration" type="text" runat="server" Text='<%# Eval("Decoration") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                 <asp:TemplateField HeaderText="Music">
                        <EditItemTemplate>
                            <asp:TextBox ID="tbxMusic" type="text" runat="server" Text='<%# Eval("Music") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblMusic" type="text" runat="server" Text='<%# Eval("Music") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                 <asp:TemplateField HeaderText="Cake">
                        <EditItemTemplate>
                            <asp:TextBox ID="tbxCake" type="text" runat="server" Text='<%# Eval("Cake") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblCake" type="text" runat="server" Text='<%# Eval("Cake") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

              
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="white" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>

    </form>
    <div id="footer">
	<div id="footertext">
	<p id="partyfooter">Party Planner</p>
	<p id="footerinfo">-A Project By Ayush, Vishesh and Akshay</p>
</div>
<div id="footerlinks">
	<a href="#"><img src="./assets/images/fb.svg" alt="Find Us on Facebook" id="footerimglink"></a>
	<a href="#"><img src="./assets/images/insta.svg" alt="Find us on Instagram" id="footerimglink"></a>
</div>
<img src="./assets/images/SILogo.svg" alt="SILogo" id="SI">
</div>
    </div>

</body>
</html>
