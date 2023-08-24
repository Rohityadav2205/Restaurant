<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tabledata.aspx.cs" Inherits="tabledata" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<center>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Tablename"></asp:Label>
        <asp:TextBox ID="txtTablename" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="noofseats"></asp:Label>
        <asp:TextBox ID="txtnoofseats" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="comments"></asp:Label>
        <asp:TextBox ID="txtcomments" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Bookingstatus"></asp:Label>
        <asp:TextBox ID="txtBookingstatus" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="submit" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="clear" onclick="Button2_Click" />

        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="tableno" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="tableno" HeaderText="tableno" InsertVisible="False" 
                    ReadOnly="True" SortExpression="tableno" />
                <asp:BoundField DataField="tablename" HeaderText="tablename" 
                    SortExpression="tablename" />
                <asp:BoundField DataField="noofseats" HeaderText="noofseats" 
                    SortExpression="noofseats" />
                <asp:BoundField DataField="comments" HeaderText="comments" 
                    SortExpression="comments" />
                <asp:BoundField DataField="Bookingstatus" HeaderText="Bookingstatus" 
                    SortExpression="Bookingstatus" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:restaurantConnectionString %>" 
            SelectCommand="SELECT [tableno], [tablename], [noofseats], [comments], [Bookingstatus] FROM [Tables]">
        </asp:SqlDataSource>

    </div>
    </form>
    </center>
</body>
</html>
