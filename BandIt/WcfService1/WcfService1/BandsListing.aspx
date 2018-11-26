<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BandsListing.aspx.cs" Inherits="WcfService1.BandsListing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>

        </title>
    </head>
    <body>   
        <div class="band-listing">
        <div class="container">
            <h1 class="custom-head">OUR BAND LINEUP..</h1>

            <form id="searchForm" runat="server" class="search-form clear-fix">
                <div class="form-group search-bar">
                    <label class="control-label" for="search">Band Name</label>
                    <input type="text" class="form-control" name="search" id="search" />
                </div>
                <div class="form-group search-btn">
                    <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />
                </div>
            </form>
            @if(!Model.SearchCompleted){
                Model.SearchResults = Model.Bands;
            }
            <div class="band-tile-wrap clear-fix">
            @if(Model.SearchResults.Count > 0){
                @foreach(var code in Model.SearchResults) {
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
                }
            }
            else{
                <div>No result for the search item.</div>   
            }
            </div>
        </div>
    </div>

    </body>
</html>
