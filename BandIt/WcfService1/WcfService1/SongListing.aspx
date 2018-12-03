<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SongListing.aspx.cs" Inherits="WcfService1.SongListing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
    <script>var songs = <%= songJson %>;</script>
</head>
<body>

</body>
</html>
