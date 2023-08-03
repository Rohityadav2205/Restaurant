<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editsitemmenu.aspx.cs" Inherits="editsitemmenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<center>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="itemname"></asp:Label>  
        <asp:TextBox ID="txtitemname" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="price"></asp:Label>
        <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="packing"></asp:Label>
        <asp:TextBox ID="txtpacking" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="submit" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="clear" onclick="Button2_Click" />

    
        <br />
        <br />

    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="itemno" DataSourceID="SqlDataSource2" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="itemno" HeaderText="itemno" InsertVisible="False" 
                ReadOnly="True" SortExpression="itemno" />
            <asp:BoundField DataField="categoryno" HeaderText="categoryno" 
                SortExpression="categoryno" />
            <asp:BoundField DataField="itemname" HeaderText="itemname" 
                SortExpression="itemname" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="packing" HeaderText="packing" 
                SortExpression="packing" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:restaurantConnectionString %>" 
        SelectCommand="SELECT * FROM [itemmenu] WHERE ([categoryno] = @categoryno) ORDER BY [itemname], [price], [packing]">
        <SelectParameters>
            <asp:QueryStringParameter Name="categoryno" QueryStringField="categoryno" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:restaurantConnectionString %>" 
          DeleteCommand="delete from itemmenu where itemno=@itemno"
          UpdateCommand = "update itemmenu set categoryno=@categoryno,itemname=@itemname,price=@price,packing=@packing where itemno=@itemno"
           
        SelectCommand="SELECT [itemno], [categoryno], [itemname], [price], [packing] FROM [itemmenu]">
    </asp:SqlDataSource>
    
    </form>
    </center>
    
</body>
</html>
