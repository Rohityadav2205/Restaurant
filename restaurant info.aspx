<%@ Page Language="C#" AutoEventWireup="true" CodeFile="restaurant info.aspx.cs" Inherits="restaurant_info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>restaurant information</title>
</head>
<style>
*
{
    background-color:Gray;
    }
    .open
    {
        color:Green;
        background-color:black
        }
        .run:hover
        {
            color:Maroon;
            background-color:Green
            }
</style>
<body>


    <form id="form1" runat="server">
    <center>
    <div>
        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
         <div class="open "><h1><ul> Visit Our Desi Restaurant</ul></h1> </div>
        <br />
        <asp:Label ID="lblname" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="lblphoneno" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="lbladdress" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="lblpincode" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="lbltagline" runat="server" Text=""></asp:Label>

    
    </div>
    </center>
    </form>
    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
