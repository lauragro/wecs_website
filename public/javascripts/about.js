'use strict'

$(function() {
    $("#buttons .about").addClass('active');
    
    $(".blurb p b").each(function(index) {
        var t = $(this).text();
        var newt = t.replace(/(\w*) AT (\w*) DOT (\w*)/, "$1@$2.$3");
        if (t != newt)
        $(this).text(newt);
        
    });
});