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

    }
});