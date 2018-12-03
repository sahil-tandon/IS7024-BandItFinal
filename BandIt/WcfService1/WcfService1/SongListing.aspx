<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SongListing.aspx.cs" Inherits="WcfService1.SongListing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
    <script>var songs = <%= songJson %>;</script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:textbox runat="server" ID="SearchText"></asp:textbox>
        <asp:Button ID="SearchSongs" runat="server" Text="Search" OnClick="SearchSongs_Click" />
    </form>
</body>
</html>

