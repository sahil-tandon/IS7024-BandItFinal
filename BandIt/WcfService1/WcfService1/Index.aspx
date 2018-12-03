<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BandIt</title>
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
                <a href="/Index.aspx"><img src="../images/bandit-logo.png" /></a>
            </div>
            <div class="header-right">
                <a href="/SongListing.aspx">Songs</a>
            </div>
        </div>
    </nav>
    <div id="myCarousel" class="carousel slide noprint" data-ride="carousel" data-interval="3000">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/Concerts/carousel-1.jpg" alt="event-image" class="img-responsive"/>
                <div class="item-copy">#1 Band Management Agency! 2 years in a row!</div>
            </div>
            <div class="carousel-item">
                <img src="images/Concerts/carousel-2.jpg" alt="event-image" class="img-responsive"/>
                <div class="item-copy">We help get your music an audience!</div>
            </div>
            <div class="carousel-item">
                <img src="images/Concerts/carousel-3.png" alt="event-image" class="img-responsive"/>
                <div class="item-copy">We manage all your boring stuff so you can focus on the real deal!</div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="container">        
        <div class="our-bands">
            <h1 class="noprint">BANDIT</h1>
            <div class="our-bands-copy">
                <em>We are behind the success of these big names..</em>
            </div>
            <br>
            <div class="our-bands-list clear-fix">
                <div class="our-band">
                    <img src="images/Bands/acdc.jpg" alt="acdc-image"/>
                    <span class="our-band-name">AC/DC</span>
                </div>            
                <div class="our-band">
                    <img src="images/Bands/pinkfloyd.jpg" alt="pinkfloyd-image"/>
                    <span class="our-band-name">Pink Floyd</span>
                </div>
                <div class="our-band">
                    <img src="images/Bands/metallica.jpg" style="filter:saturate(20);" alt="metallica-image"/>
                    <span class="our-band-name">Metallica</span>
                </div>
                <div class="our-band">
                    <img src="images/Bands/coldplay.jpg" alt="coldplay-image"/>
                    <span class="our-band-name">Coldplay</span>
                </div>
                <div class="see-all nomobile">                
                    <a href="/BandsListing.aspx">And More..</a>
                </div>
            </div>
        </div>
        <div class="about-us">
            <div class="about-head"><h2>WHAT WE ARE ABOUT</h2></div>
            <div class="about-copy">We’re here to set you up for success right from the start.</div>
            <div class="about-detail clear-fix">
                <div class="about-item">
                    <img src="images/About/calendar.png" class="about-icon" alt="calendar-image"/>
                    <p class="about-title">RELEASING MUSIC</p>
                    <p class="about-description">Singles, albums, distribution, marketing plans, publicity, timelines, you name it! We've got you covered to get started.</p>
                </div>
                <div class="about-item">
                    <img src="images/About/tour.png" class="about-icon" alt="about-image"/>
                    <p class="about-title">GOING ON TOUR</p>
                    <p class="about-description">From how to write an email to book a show, playing festivals, to routing and budgeting for your first national tour.</p>
                </div>
                <div class="about-item">
                    <img src="images/About/radio.png" class="about-icon" alt="radio-image"/>
                    <p class="about-title">GETTING ON RADIO</p>
                    <p class="about-description">From doing it yourself, to hiring a radio promoter, we've got all the do's and don'ts you need to know.</p>
                </div>
                <div class="about-item">
                    <img src="images/About/sign.png" class="about-icon" alt="sign-image"/>
                    <p class="about-title">GETTING SIGNED</p>
                    <p class="about-description">Need an Agent? A Publisher? A Record Contract? Our experts tell you all the secrets about getting signed.</p>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>        
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/app.js"></script>
</body>
</html>
