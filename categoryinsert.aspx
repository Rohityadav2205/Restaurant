﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="categoryinsert.aspx.cs" Inherits="categoryinsert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="categoryno" DataSourceID="SqlDataSource1" 
            GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="comment" HeaderText="comment" 
                    SortExpression="comment" />
                     <asp:TemplateField HeaderText="Show items">
                    <ItemTemplate><a target="cr" href='itemmenu.aspx?categoryno=<%# Eval("categoryno") %>'>Show Items</a></ItemTemplate>
                    </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:restaurantConnectionString %>" 
            DeleteCommand="delete  from categorymenu  where categoryno=@categoryno"
            UpdateCommand="update categorymenu set name=@name,comment=@comment where categoryno=@categoryno"
            SelectCommand="SELECT [categoryno], [name], [comment] FROM [categorymenu] ORDER BY [categoryno]">
        </asp:SqlDataSource>
        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Comment"></asp:Label>
        <asp:TextBox ID="txtComment" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>
