<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BandsListing.aspx.cs" Inherits="WcfService1.BandsListing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>
        </title>
        <link rel="stylesheet" href="site.css" type="text/css"/>
        <script>
            var bands = <%= bandJson %>;

        </script>
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
           
        </div>
    </div>

    </body>
</html>
