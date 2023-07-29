<%@ Page Language="C#" AutoEventWireup="true" CodeFile="itemmenu.aspx.cs" Inherits="menuitem" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
            CellPadding="4" DataKeyNames="itemno" DataSourceID="SqlDataSource1" 
            GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="itemno" HeaderText="itemno" InsertVisible="False" 
                    ReadOnly="True" SortExpression="itemno" />
                <asp:BoundField DataField="categoryno" HeaderText="categoryno" 
                    SortExpression="categoryno" />
                <asp:BoundField DataField="itemname" HeaderText="itemname" 
                    SortExpression="itemname" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="packing" HeaderText="packing" 
                    SortExpression="packing" />
                    <asp:TemplateField HeaderText="Show item">
                    <ItemTemplate><a target="cr" href='categoryinsert.aspx?itemno=<%# Eval("itemno") %>'>category insert</a></ItemTemplate>
                    
                    </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:restaurantConnectionString %>" 
             DeleteCommand="delete from itemmenu where itemno=@itemno"
            UpdateCommand = "update itemmenu set categoryno=@categoryno,itemname=@itemname,price=@price,packing=@packing where itemno=@itemno"
            SelectCommand="SELECT [itemno], [categoryno], [itemname], [price], [packing] FROM [itemmenu]">
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="categoryno"></asp:Label>  
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="categoryno" 
            DataValueField="categoryno">
        </asp:DropDownList>
      
        <br />
        <asp:Label ID="Label3" runat="server" Text="itemname"></asp:Label>  
        <asp:TextBox ID="txtitemname" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="price"></asp:Label>  
        <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="packing"></asp:Label>  
        <asp:TextBox ID="txtpacking" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="submit" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="clear" onclick="Button2_Click" />

    
    </div>
    </form>
</body>
</html>
