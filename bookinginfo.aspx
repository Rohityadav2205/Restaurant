<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookinginfo.aspx.cs" Inherits="bookinginfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="tableno"></asp:Label>  
        <asp:TextBox ID="txttableno" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="bookingtime"></asp:Label>  
        <asp:TextBox ID="txtbookingtime" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="bookingendtime"></asp:Label>  
        <asp:TextBox ID="txtbookingendtime" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="submit" onclick="Button1_Click" />

    
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="bookingno" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="bookingno" HeaderText="bookingno" 
                    InsertVisible="False" ReadOnly="True" SortExpression="bookingno" />
                <asp:BoundField DataField="tableno" HeaderText="tableno" 
                    SortExpression="tableno" />
                <asp:BoundField DataField="bookingtime" HeaderText="bookingtime" 
                    SortExpression="bookingtime" />
                <asp:BoundField DataField="bookingendtime" HeaderText="bookingendtime" 
                    SortExpression="bookingendtime" />

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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:restaurantConnectionString %>" 
            SelectCommand="SELECT [bookingno], [tableno], [bookingtime], [bookingendtime] FROM [bookinginfo]">
        </asp:SqlDataSource>

    
    </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
