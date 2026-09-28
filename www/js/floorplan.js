/*
------------------------------------------------------
Floorplan page functions
Note that floorplan.html is a standalone page
------------------------------------------------------
*/

//
//
// read url parameters
function GET() {
        var data = [];
        for(x = 0; x < arguments.length; ++x)
            data.push(location.href.match(new RegExp("/\?".concat(arguments[x],"=","([^\n&]*)")))[1])

        return data;     
}
//
// NOT USED: 
// supposed to close the window to get back to the store detail page, but it doesn't work - known cordova issue, 
// instead, we rely on device's 'done' button to go back to the previous screen
// note that we can't use location.href either, because it causes the target page to refresh (along with splashscreen)
// the only working solution that is offered is to trigger custom event here and to listen to it from the opener window...should try it next
var goBack = function() {
  //window.close()
};

//
//
// after zooming or scrolling, reposition header so that "back" arrow is visible
function fixHeaderPosition(whocalledme) {
   var top = window.pageYOffset ;
   var left = window.pageXOffset;

   $('header').css('left',left);
   $('header').css('top',top);
   $('header').css("z-index","8");
   $('header').css("opacity", "0.5");
}
//
//
// hide header when starting user interaction
 function handleTouchStart() {
    $('header').css("opacity", "0");
 }

//
//----------------------------------------------------
// DOM Ready....pretty sad looking script. 
// Can't use much of it until we figure out how to 
// trigger window.close()
//----------------------------------------------------
$(function() {

      //      
      // set floor plan image source according to URL argument...
      var src = GET("src")[0];

      $("#large_floorplan_wrap img").attr('src', decodeURI(src));

      /*
      // !!! NOT USED because window.close() doesn't work  - known cordova issue

      // to go back: tap anywhere on a header - easier this way
      // commented out because we're using device's "done" button. 
      $('header').bind("touchstart", goBack);
      */

      /*
      // !!! NOT USED 
      // all of these work well enough to reposition header element
      // such that it's always visible when we zoom or scroll.
      // However, we no longer using header's 'back' button because of the issue
      // with window.close()... 

      $('section').bind("touchend", function() { fixHeaderPosition('touchend'); } );

      $('section').bind("touchstart", handleTouchStart);

      $(window).bind("scroll", function() { fixHeaderPosition('scroll'); } );  
      */
});


