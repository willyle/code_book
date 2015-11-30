$(document).ready(function(){
    $(".down").on("click", function(){
        $(this).parent().parent().find(".answer-dropdown").slideToggle(100);
    });
    $(".time-down").on("click", function(){
        $(this).siblings(".time-dropdown").slideToggle(100);
    });
    $(".sites-down").on("click", function(){
        $(this).siblings(".sites-dropdown").slideToggle(100);
    });
});