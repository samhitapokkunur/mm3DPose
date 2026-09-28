'use strict';
//
//  global navigation menu
//
var globalNav = {
isMenuOpen:function() {
	if (jQuery("#contentLayer").css('display') === 'block' ) {
		return true;
	}
	return false;
}
,
showMenu:function(e) {
	//window.alert('show menu');
	if (typeof e !== 'undefined') {
		e.preventDefault();
	}
	//set the width of primary content container -> content should not scale while animating
	var contentWidth = jQuery('#content').width();
	
	//set the content with the width that it has originally
	jQuery('#content').css('width', contentWidth);
	
	//display a layer to disable clicking and scrolling on the content while menu is shown
	jQuery('#contentLayer').css('display', 'block');
	
	//disable all scrolling on mobile devices while menu is shown
	jQuery('#content').bind('touchmove', function(e){e.preventDefault()});
	
	//set margin for the whole container and fixed elements
	
	//jQuery(".slideMe").animate({'margin-left': '85%'},500);
	jQuery(".slideMe").css('margin-left','85%');
},
	
hideMenu:function(e) {
	//window.alert('hide menu');
	
	if (typeof e !== 'undefined') {
		e.preventDefault();
	}
	
	jQuery('#contentLayer').css('display', 'none');
	
	//enable all scrolling on mobile devices when menu is closed
	jQuery('#content').unbind('touchmove');
	
	//set margin for the whole container back to original state
	
	/*
	jQuery(".slideMe").animate({'margin-left': '0'}, 500, function() {
								     jQuery("#content").css('width', 'auto');
								     jQuery("#contentLayer").css('display', 'none');
									 								 
								 });
	*/
	
	jQuery(".slideMe").css('margin-left','0%');  // using -webkit css transition instead of jquery animation
	setTimeout(function(){
			   jQuery("#content").css('width', 'auto');
			   jQuery("#contentLayer").css('display', 'none');
			   },500
	);
},
	
initAction:function(e) {
	if (typeof e !== 'undefined') {
		e.preventDefault();
	}
	window.alert("Coming Soon!");
}
	
};
