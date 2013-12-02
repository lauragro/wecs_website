'use strict'

$(function() {
    $("#buttons .events").addClass('active');
    
    $("#_overlay").click(function() {
        $(this).fadeOut();
    });
    
    $(".thumbs img").click(function() {
        var fullImgSrc = $(this).attr("src").replace("/thumbnails", "");
        $("#_overlay img").attr("src", fullImgSrc);
        $("#_overlay").fadeIn();
    });
});