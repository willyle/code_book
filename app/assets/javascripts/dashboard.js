$(document).ready(function(){
    $(".down").on("click", function(){
        $(this).parent().parent().find(".answer-dropdown").slideToggle(100);
    });
});