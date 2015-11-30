$(document).ready(function(){
    $(".recent-card").on("click", function(){
        $(this).find(".answer-dropdown").slideToggle(100);
    });
    $(".time-filter").on("click", function(){
        $(this).find(".time-dropdown").slideToggle(100);
    });
    $(".sites-filter").on("click", function(){
        $(this).find(".sites-dropdown").slideToggle(100);
    });
});