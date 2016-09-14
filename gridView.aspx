﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gridView.aspx.cs" Inherits="gridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
        <div>
            <asp:GridView ID="GridViewData" runat="server" AllowPaging="False" AutoGenerateColumns="false" OnRowCommand="GridViewData_RowCommand" OnRowDeleting="GridViewData_DeleteRow" OnRowUpdating="GridViewData_UpdateRow" >
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
                    <asp:TemplateField HeaderText="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="tbxName" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="tbxEmail" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
                        </EditItemTemplate>
                         <ItemTemplate>
                            <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="password">
                        <EditItemTemplate>
                            <asp:TextBox ID="tbxpassword" runat="server" Text='<%# Eval("password") %>'></asp:TextBox>
                        </EditItemTemplate>
                         <ItemTemplate>
                            <asp:Label ID="lblpassword" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                 <asp:TemplateField HeaderText="contactNo">
                        <EditItemTemplate>
                            <asp:TextBox ID="tbxContactNo" runat="server" Text='<%# Eval("ContactNO") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblContactNO" runat="server" Text='<%# Eval("ContactNO") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Date Of Birth">
                        <EditItemTemplate>
                            <asp:TextBox ID="tbxDOB" type="date" runat="server" Text='<%# Eval("DOB") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblDOB" type="date" runat="server" Text='<%# Eval("DOB") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
