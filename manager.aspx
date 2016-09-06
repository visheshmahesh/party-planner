<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manager.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="U_ID" DataSourceID="SqlDataSourceSignup">
            <Columns>
                <asp:BoundField DataField="U_ID" HeaderText="U_ID" InsertVisible="False" ReadOnly="True" SortExpression="U_ID" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" SortExpression="PASSWORD" />
                <asp:BoundField DataField="CONTACT_NO" HeaderText="CONTACT_NO" SortExpression="CONTACT_NO" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceSignup" runat="server" ConnectionString="<%$ ConnectionStrings:SignupConnectionString %>" SelectCommand="SELECT * FROM [USERS]" SelectQuery="<%$ ConnectionStrings:SignupConnectionString %>"></asp:SqlDataSource>
    <div>
    
    </div>
    </form>
</body>
</html>
