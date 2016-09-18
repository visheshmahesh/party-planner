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
            <asp:GridView ID="GridViewData" runat="server" AutoGenerateColumns="False" OnRowCommand="GridViewData_RowCommand" OnRowDeleting="GridViewData_DeleteRow" OnRowUpdating="GridViewData_UpdateRow" CellPadding="4" GridLines="Horizontal" ForeColor="Black" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" >
            <Columns>
                   <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbEdit" CommandArgument='<%# Eval("Id") %>' runat="server" CommandName="EditRow" Text="Edit">
                            </asp:LinkButton>
                            <asp:LinkButton ID="lbDelete" CommandArgument='<%# Eval("Id") %>' runat="server" CommandName="Delete" Text="Delete">
                            </asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                           <asp:LinkButton ID="lbUpdate" CommandArgument='<%# Eval("Id") %>' runat="server" CommandName="Update" Text="Update">
                           </asp:LinkButton>
                           <asp:LinkButton ID="lbCancel" CommandArgument='<%# Eval("Id") %>' runat="server" CommandName="CancelUpdate" Text="Cancel">
                           </asp:LinkButton>
                            
                              
                            
                        </EditItemTemplate>
                       </asp:TemplateField>
                  
                    <asp:TemplateField HeaderText="Id">
                        <EditItemTemplate>
                            <asp:TextBox ID="tbxId" runat="server" Text='<%# Eval("Id") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                        
                     <asp:TemplateField HeaderText="UserId">
                        <EditItemTemplate>
                            <asp:TextBox ID="tbxUserId" runat="server" Text='<%# Eval("UserId") %>'></asp:TextBox>
                        </EditItemTemplate>
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
                            <asp:TextBox ID="tbxVenueId" type="date" runat="server" Text='<%# Eval("VenueId") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbVenueId" type="date" runat="server" Text='<%# Eval("VenueId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                 

                    <asp:TemplateField HeaderText="Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="tbxDate" type="date" runat="server" Text='<%# Eval("Date") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbdate" type="date" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="white" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <p><a href="adminRegistration.aspx">Click Here to Register New Admin</a></p>
        </div>

    </form>
    <div id="footer">
	<div id="footertext">
	<p id="partyfooter">Party Planner</p>
	<p id="footerinfo">-A Project By Ayush Singh and Vishesh Maheshwari</p>
</div>
<div id="footerlinks">
	<a href="https://www.facebook.com/ayush013"><img src="./assets/images/fb.svg" alt="Find Us on Facebook" id="footerimglink"></a>
	<a href="https://www.instagram.com/alphaayush"><img src="./assets/images/insta.svg" alt="Find us on Instagram" id="footerimglink"></a>
	<p id="footeradmin"><a href="#">Contact Us</a></p>
</div>
<img src="./assets/images/SILogo.svg" alt="SILogo" id="SI">
</div>
    </div>

</body>
</html>
