/*
--------------------------------------------------------------------
This controller has global navigation (side navigation) functions 
and also used as a hook to initialize some cross-view functionality

Assigned to global navigation div in partials/_aside.html
--------------------------------------------------------------------
*/
function NavigationCtrl($rootScope,$scope,$window) {

  // setTimeout(function (){
  //   //alert(window.app.props.os_version);
  //   if (window.app.props.os_version >= 7) {
  //     $('html').prepend('<div style="width: 100%; height: 20px; background-color: #fff; position: absolute; z-index: 9999;"></div>');
  //     $('body').css({'margin-top': '20px'});
  //     $('#global-nav').css({'margin-top': '20px'});
  //   }
  // }, 1000);

    // if (app.props.os_version === 7) {
    //   //$('html').prepend('<div style="width: 100%; height: 20px; background-color: #FFCC00;">feh</div>')
    //   $('body').css({'margin-top': '20px'});
    //   alert('fix!');
    // }

  // Initialize angular global variable $rootScope.param.
  //
  // It's used by all controllers to customize views title, page templates, etc
  // this may not be the most obvious place to do it but it works 
  // because this controller called once as soon as the first page loads
  $rootScope.params = {}; 

  // "Not connected bar must disappear when the user taps on it once
  //
  // This functionality doesn't relate to navigation.
  // The code is here because at this point we are guaranteed that "not connected" element exists in DOM.

  $('#NotConnected').bind('touchend', function (e) {
     e.preventDefault();
     $(this).hide();
  });

  // some convinience function, to be able to code back() from views
	$rootScope.back = function() {
		$window.history.back();
	};

  // binding "hamburger"
  $('#global_nav').css({'display': 'none'});
    var aff = $('#tab-global-nav').bind('touchend', function (e) {
      e.preventDefault();
      app.toggleNav();
  });

  // binding "gnav clase swiper" gnav_menu_open_swiper
  $('#gnav_menu_open_swiper').bind('touchend', function (e) {
    e.preventDefault();
    app.toggleNav();
  });
  // $('#gnav_menu_open_swiper').bind('touchend', function (e) {
  //   e.preventDefault();
  //   app.toggleNav();
  // }

  //---------------------------------
  // search setup 
  //---------------------------------
  var validateSearchInput, callSearch;  
  $rootScope.searchVal = '';
  // search functions 
  //
  //
  validateSearchInput = function(s){
    if (s === null) {
       return false;     
    } 
    if (s.length < 3 ) {
        return false;
    }
    return true;
  };
  //
  //
 
  callSearch = function(e) {
    var searchText = null;
    
    $("#searchSubmit").focus(); 
    
    // get string to search
    searchText = $('#searchValue').val();

    // validate - do nothing if less than three characters
    if (!validateSearchInput(searchText) ){
      $("#searchValue").focus();
      return;
    }

    // store search text in global scope
    $rootScope.searchText = searchText;

    // clear search form
    $("#searchValue").val('');

    // call search function
    location.href = "index.html#/search";
  };


  $("#search").submit(function(e){
      callSearch(e);
  } );
  //
}

