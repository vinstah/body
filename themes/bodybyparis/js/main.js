$(document).ready(function() {
	$('h3').widowFix();
	$('p').widowFix();	
	$(".fancybox").fancybox();
    $("#nav").tinyNav({
    	header: 'Site Navigation'
    });
  	$(".sidebar-navigation").tinyNav({
    	header: 'Navigation'
    });
});