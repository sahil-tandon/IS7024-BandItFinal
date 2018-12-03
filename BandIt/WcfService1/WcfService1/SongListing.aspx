<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SongListing.aspx.cs" Inherits="WcfService1.SongListing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Song Listings</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
        <link rel="stylesheet" href="site.css" type="text/css"/>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
        <script>var songs = <%= songJson %>;</script>
        <script type="text/javascript" src="js/app.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:textbox runat="server" ID="SearchText"></asp:textbox>
        <asp:Button ID="SearchSongs" runat="server" Text="Search" OnClick="SearchSongs_Click" />
    </form>
        <nav class="header">
            <div class="container">
                <div class="header-left">
                    <a href="/BandsListing.aspx">Bands</a>
                </div>
                <div class="header-logo">
                    <a href="/"><img src="../images/bandit-logo.png"></a>
                </div>
                <div class="header-right">
                    <a href="/SongListing.aspx">Songs</a>
                </div>
            </div>
        </nav>
        <div class="body-content song-listing">
            <div class="container">
                <h1 class="custom-head">MUSIC LIBRARY..</h1>
                <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Duration</th>
                        <th>Rating</th>
                        <th>Artist Name</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </div>
        </div>    
</body>
</html>

