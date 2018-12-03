<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BandsListing.aspx.cs" Inherits="WcfService1.BandsListing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Band Listings</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="site.css" type="text/css"/>
        <link rel="stylesheet" href="css/print.css" type="text/css" media="print"/>
        <link rel="stylesheet" href="css/mobile.css" type="text/css" media="screen and (max-device-width: 480px)"/>        
    </head>
    <body>        
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
        <div class="body-content">
            <div class="band-listing">
                <div class="container">
                    <h1 class="custom-head">OUR BAND LINEUP..</h1>
                    <form id="form1" runat="server" class="search-form clear-fix">
                        <div class="form-group search-bar">
                            <asp:TextBox ID="SearchBand" runat="server" OnTextChanged="TextBox1_TextChanged" placeholder="Enter Band Name to Search" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group search-btn">
                            <asp:Button ID="BandButton" runat="server" OnClick="SearchButton_Click" Text="Search" CssClass="btn btn-default" />
                        </div>                        
                    </form>
                    <div class="band-tile-wrap clear-fix">                    
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>        
        <script type="text/javascript" src="js/app.js"></script>
    </body>
</html>
