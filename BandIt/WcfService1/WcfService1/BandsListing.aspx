<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BandsListing.aspx.cs" Inherits="WcfService1.BandsListing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>
        </title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="site.css" type="text/css"/>
        <script>
            var bands = <%= bandJson %>;
        </script>
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
                            <div class="band-tile">
                                <img src="@code.Image" class="band-image"/>
                                <div class="band-info">  
                                    <p class="band-name">@code.BandName</p>                      
                                    <p class="band-genre"><span class="band-label">Genre: </span>@code.Genre</p>
                                    <p class="band-origin"><span class="band-label">Origin: </span>@code.Origin</p>            
                                    <p class="band-founded"><span class="band-label">Founded: </span>@code.DateFounded</p>
                                    <p class="band-manager"><span class="band-label">Manager: </span>@code.BandManager.ManagerName</p>
                                    <p class="band-members"><span class="band-label">Members: </span>@code.Members</p>
                                    <p class="band-site"><span class="band-label">Website: </span><a href="http://www.@code.Website" target="_blank">@code.Website</a></p>
                                    <p class="band-songs"><a href = "/SongListing?id=@code.Id">View Songs</a></p>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
