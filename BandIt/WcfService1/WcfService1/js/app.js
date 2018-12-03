$(document).ready(function(){
    /*Handles sticky header expand/collapse*/
    $(window).scroll(function(){
        if($(this).scrollTop()>90){
            $('.header,body').addClass("collapsed");
        }
        else{
            $('.header,body').removeClass("collapsed");
        }
    });

    /*Populates bands on Band Listing page using data from JSON*/
    if ($('.band-listing').length) {
        for (i = 0; i < bands.band.length; i++){
    	    var bandTile = "<div class='band-tile'>"+
    						    "<img src='images/bands/"+ bands.band[0].ImagePath +"' class='band-image'>"+
    						    "<div class='band-info'>"+
    							    "<p class='name'>"+ bands.band[i].BandName +"</p>"+
    							    "<p class='band-genre'><span class='band-label'>Genre: </span>"+ bands.band[i].Genre +"</p>"+
				                    "<p class='band-origin'><span class='band-label'>Origin: </span>"+ bands.band[i].Origin +"</p>"+            
				                    "<p class='band-founded'><span class='band-label'>Founded: </span>"+ bands.band[i].Datefounded +"</p>"+				                    
				                    "<p class='band-members'><span class='band-label'>Members: </span>"+ bands.band[i].Members +"</p>"+
				                    "<p class='band-site'><span class='band-label'>Website: </span><a href="+ bands.band[i].Website +">"+ bands.band[i].Website +"</a></p>"+
				                "</div>"+
				            "</div>";
		    $('.band-tile-wrap').append(bandTile);
        }
    }

    /*Populates songs on Song Listing page using data from JSON*/
    if ($('.song-listing').length) {
        for (i = 0; i < songs.length; i++) {
            var songRow = "<tr>" +
                "<td><a target='_blank' href='https://www.youtube.com/results?search_query="+ songs[i].SongName +"'>"+ songs[i].SongName +"</a></td>" +
                "<td>" + songs[i].Duration + "</td>" +
                "<td>" + songs[i].Rating + "</td>" +
                "<td>" + songs[i].BandName + "</td>" +
                "</tr>";
            $('.song-listing table tbody').append(songRow);
        }
    }
});