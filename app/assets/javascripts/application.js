// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.purr
//= require best_in_place
//= require turbolinks
$(document).ready(function(){
	jQuery(".best_in_place").best_in_place();
	cheet('↑ ↑ ↓ ↓ ← → ← → b a', function () { 
		var konamiBox = '<div class="konami"> <img src="/assets/konami.png" class="konami-image"> <h1 class="konami-headline">ALL YOUR SEARCH ARE BE LOGGED BY US.</h1> </div>';
		$(konamiBox).hide().appendTo('body').fadeIn(4000).delay(500).fadeOut(1000);
		})
	})