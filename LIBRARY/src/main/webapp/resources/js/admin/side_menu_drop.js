$(document).ready(function(){ 
	//menu v1 
	$("#menu-v1-y").click(function(){ 
		$(this).children(".submenu").stop().slideDown(); 
		$('#menu-v1-yy').children(".submenu").stop().slideUp();}); 
		
	$("#menu-v1").click(function(){ 
		$(this).children(".submenu").stop().slideUp(); }); 
		
	$("#menu-v1-yy").click(function(){ 
		$(this).children(".submenu").stop().slideDown(); 
		$('#menu-v1-y').children(".submenu").stop().slideUp();}); 
		
	});

