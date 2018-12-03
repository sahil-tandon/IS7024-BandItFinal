<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="site.css" type="text/css"/>
    <link rel="stylesheet" href="css/print.css" type="text/css" media="print"/>
    <link rel="stylesheet" href="css/mobile.css" type="text/css" media="screen and (max-device-width: 480px)"/>    
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
    <div class="container contact-page clear-fix">    
        <h1 class="custom-head">GET IN TOUCH WITH US..</h1>

        <div class="contact-us-tile">
            <img class="contact-us-image" src="images/contact/Hasnain.png">
            <div class="contact-us-info">
                <p class="contact-us-name">Hasnain Kurawadwala</p>
                <p class="contact-us-designation">Co-Founder</p>
                <p class="contact-us-location">Cincinnati, OH</p>            
                <p class="contact-us-phone">(513) 405-7929</p>
                <a href="mailto:hasnainkurawadwala@bandit.com" class="contact-us-email">hasnainkurawadwala@bandit.com</a>
            </div>
        </div>
        
        <div class="contact-us-tile">
            <img class="contact-us-image" src="images/contact/sahiltandon.jpg">
            <div class="contact-us-info">
                <p class="contact-us-name">Sahil Tandon</p>
                <p class="contact-us-designation">Co-Founder</p>
                <p class="contact-us-location">Cincinnati, OH</p>            
                <p class="contact-us-phone">(513) 206-3185</p>
                <a href="mailto:sahiltandon@bandit.com" class="contact-us-email">sahiltandon@bandit.com</a>
            </div>
        </div>

        <div class="contact-us-tile">
            <img class="contact-us-image" src="images/contact/Sidhartha.jpeg">
            <div class="contact-us-info">
                <p class="contact-us-name">Sidhartha Bora</p>
                <p class="contact-us-designation">Co-Founder</p>
                <p class="contact-us-location">Cincinnati, OH</p>            
                <p class="contact-us-phone">(513) 206-4237</p>
                <a href="mailto:sidharthabora@bandit.com" class="contact-us-email">sidharthabora@bandit.com</a>
            </div>
        </div>

        <div class="contact-us-tile">
            <img class="contact-us-image" src="images/contact/sudhakarsamak.jpg">
            <div class="contact-us-info">
                <p class="contact-us-name">Sudhakar Samak</p>
                <p class="contact-us-designation">Co-Founder</p>
                <p class="contact-us-location">Cincinnati, OH</p>
                <p class="contact-us-phone">(513) 510-7397</p>
                <a href="mailto:sudhakarsamak@bandit.com" class="contact-us-email">sudhakarsamak@bandit.com</a>            
            </div>
        </div>
    </div>
</body>
</html>
