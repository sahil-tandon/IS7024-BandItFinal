<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BandsListing.aspx.cs" Inherits="WcfService1.BandsListing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>
        </title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="site.css" type="text/css"/>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
        <script>var bands = <%= bandJson %>;</script>
        <script>var currentTime = <%= currentDateTimeString %>;</script>
        <script type="text/javascript" src="js/app.js"></script> 
    </head>
    <body>
        <nav class="header">
            <div class="container">
                <div class="header-left">
                    <a href="/BandListing">Bands</a>
                </div>
                <div class="header-logo">
                    <a href="/"><img src="../images/bandit-logo.png"></a>
                </div>
                <div class="header-right">
                    <a href="">Managers</a>
                </div>
            </div>
        </nav>
        <div class="body-content">
            <div class="band-listing">
                <div class="container">
                    <h1 class="custom-head">OUR BAND LINEUP..</h1>
                    <div class="band-tile-wrap clear-fix">                    
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
