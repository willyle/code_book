$(document).ready(function(){
    $(".fa").on("click", function(){
        $(this).parent().parent().find(".answer-dropdown").slideToggle(100);
    });
    $(".fa").on("click", function(){
        $(this).siblings(".time-dropdown").slideToggle(100);
    });
    $(".fa").on("click", function(){
        $(this).siblings(".sites-dropdown").slideToggle(100);
    });

    $(".searchbar").on("keypress", function(e){
    	  if(e.keyCode == 13){
    	  		$(".time-dropdown, .sites-dropdown").hide();
    	  }
    });
});