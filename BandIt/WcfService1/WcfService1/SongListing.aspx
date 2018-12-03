<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SongListing.aspx.cs" Inherits="WcfService1.SongListing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Song Listings</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="site.css" type="text/css"/>
    <link rel="stylesheet" href="css/print.css" type="text/css" media="print"/>
    <link rel="stylesheet" href="css/mobile.css" type="text/css" media="screen and (max-device-width: 480px)"/> 
    <script>var songs = <%= songJson %>;</script>
</head>
<body>    
        <nav class="header">
            <div class="container">
                <div class="header-left">
                    <a class="nomobile" href="/Index.aspx">Home</a>
                    <a href="/BandsListing.aspx">Bands</a>
                </div>
                <div class="header-logo">
                    <a href="/Index.aspx"><img src="../images/bandit-logo.png"></a>
                </div>
                <div class="header-right">
                    <a href="/SongListing.aspx">Songs</a>
                    <a class="nomobile" href="/Contact.aspx">Contact</a>
                </div>
            </div>
        </nav>
        <div class="body-content song-listing">
            <div class="container">
                <h1 class="custom-head">MUSIC LIBRARY..</h1>
                <form id="form1" runat="server" class="search-form clear-fix">
                    <div class="form-group search-bar">
                        <asp:textbox runat="server" ID="SearchText" placeholder="Enter Song Name to Search" CssClass="form-control"></asp:textbox>                        
                    </div>
                    <div class="form-group search-btn">
                        <asp:Button ID="SearchSongs" runat="server" Text="Search" OnClick="SearchSongs_Click" CssClass="btn btn-default" />                        
                    </div>                        
                </form>                
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
                </table>
            </div>
        </div>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>        
        <script type="text/javascript" src="js/app.js"></script>
</body>
</html>

