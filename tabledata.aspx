<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tabledata.aspx.cs" Inherits="tabledata" %>

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
            CellPadding="4" DataKeyNames="tableno" DataSourceID="SqlDataSource1" 
            GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="tableno" HeaderText="tableno" InsertVisible="False" 
                    ReadOnly="True" SortExpression="tableno" />
                <asp:BoundField DataField="seats" HeaderText="seats" SortExpression="seats" />
                <asp:BoundField DataField="comments" HeaderText="comments" 
                    SortExpression="comments" />
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
            SelectCommand="SELECT [tableno], [seats], [comments] FROM [tabledetail]">
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label1" runat="server" Text="tableno"></asp:Label>  
        <asp:TextBox ID="txttableno" runat="server"></asp:TextBox> 
        <br />
        <<asp:Label ID="Label2" runat="server" Text="seats"></asp:Label>    
        <asp:TextBox ID="txtseats" runat="server"></asp:TextBox> 
        <br />
        <asp:Label ID="Label3" runat="server" Text="comment"></asp:Label>   
        <asp:TextBox ID="txtcomment" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="submit" onclick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>
