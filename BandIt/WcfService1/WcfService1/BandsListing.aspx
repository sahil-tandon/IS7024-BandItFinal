<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BandsListing.aspx.cs" Inherits="WcfService1.BandsListing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Band Listings</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
        <link rel="stylesheet" href="site.css" type="text/css"/>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
        <script>var bands = <%= bandJson %>;</script>
        <script>var currentTime = <%= currentDateTimeString %>;</script>
        <script type="text/javascript" src="js/app.js"></script> 
    </head>
    <body>
        <form id="form1" runat="server">
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
                    <h1 class="custom-head">OUR BAND LINEUP..<asp:TextBox ID="SearchBand" runat="server" OnTextChanged="TextBox1_TextChanged" Width="282px"></asp:TextBox>
                        <asp:Button ID="BandButton" runat="server" OnClick="SearchButton_Click" Text="Search" />
                    </h1>
                    <div class="band-tile-wrap clear-fix">                    
                    </div>
                </div>
            </div>
        </div>
        </form>
    </body>
</html>
