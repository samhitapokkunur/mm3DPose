'use strict';

//
// Helpers
//

function minutesToUIString (minutes) {

  // convert minutes to pretty string
  // given 60 will return "1 hr"

  function isInteger(number) {
    return number % 1 === 0;
  }

  function numberToString (number, suffix) {
    return number > 1 ? number + ' ' + suffix + 's' : number + ' ' + suffix;
  }

  if (typeof(minutes) !== 'number') minutes = parseInt(minutes);
  if (minutes < 0 || !isInteger(minutes)) return false;

  var hrs = parseInt(minutes / 60);
  var mins = minutes % 60;
  var returnString = "";
  returnString += hrs ? numberToString(hrs, 'hr') + ' ' : '';
  returnString += mins ? numberToString(mins, 'min') : '';

  return returnString.replace(/\s*$/, '');
}

function viewSweep(){
  //console.log('sweep');
  //$('#top_ttl').empty();
  //$('#bg_image').css({'background-image':'none'});
  // globalNav.hideMenu();
 
  if (app.props.state === 'open'){
    app.closeNav();
   }
  // if (window.app.props.os_version >= 7) {
  //   $("#filter-wrap").css({'margin-top': '20px'});
  //   $("#view_content_wrapper").css({'padding-top': '20px'});
  //   $(".mosaic").css({'margin-top': '20px'});
  // }


  $('#foot_nav').css({'display':'none'});
 //$('#foot_nav').css({'display':'none'});
 // if ($('body').hasClass('recipesLanding') || $('body').hasClass('product')){
 //  $('#foot_nav').css({'display':'block'});
 // } else {
 //  $('#foot_nav').css({'display':'none'});
 // }
}

function initApplicationView($rootScope, $scope, className) {
  viewSweep();
  $scope.viewClass = className;
  $rootScope.bodyClass = className;
  $rootScope.params = {};
}

function changeViewTemplate($rootScope, $scope, className) {
  $scope.viewClass = className;
  $rootScope.bodyClass = className;
}

function setTopNav($rootScope,path) {

  $rootScope.recStat = '';
  $rootScope.prodStat = '';
  $rootScope.favStat = '';
  
  // todo find angular way to select clicked object - this is stupid
  
  switch(path)
  {
    case '/products-landing':
    {
      $rootScope.prodStat='current';
      return;
    }
    case '/recipes-landing':
    {
      $rootScope.recStat='current';
      return;
    }
    case '/favorites-landing':
    {
      $rootScope.favStat='current';
      return;
    }
    default:
      return;
  }
}

function resetTopNav($rootScope) {
  // viewSweep();
  $rootScope.recStat ='';
  $rootScope.prodStat ='';
  $rootScope.favStat = '';
}
//

// todo : cleanup
function tab (id) {
    alert(id);
}


// todo : cleanup
function errorCB(tx, err) {
    //alert("Error processing SQL: "+err);
}


// todo : cleanup
// Transaction success callback
function successCB() {
    //alert("success!");
}

//
// Controllers 
// This is just an example
function DefaultViewCtrl($rootScope,$scope) {
	//make sure side menu is closed
	
	//set top navigaton status
	resetTopNav($rootScope);

	// page with hamburger and side navigation 
	initApplicationView($rootScope, $scope,'landingView');
	
	// page with "back link" and no side navigation
	//initApplicationView($rootScope, $scope,'detailView');
	
}



////////////////////////////////////////////////////////////////////////////////
//
// Food Profile/Dietary preferences
//
////////////////////////////////////////////////////////////////////////////////

function MyFoodProfileLandingCtrl($rootScope, $scope, $routeParams, $compile) {
	 MyFoodProfileViewCtrl($rootScope, $scope, $routeParams, $compile);
	 changeViewTemplate($rootScope, $scope,'landingView myFoodProfile');
};


function MyFoodProfileViewCtrl($rootScope, $scope, $routeParams, $compile) { 
		var ReadSuccess, ReadError;
		
		resetTopNav($rootScope);
    if (typeof($routeParams['step']) !== 'undefined' && $routeParams['step'] == 'dp') {
		  initApplicationView($rootScope, $scope,'detailView initialFlow');
		  $rootScope.params.ViewTitle = 'Select Preferences';
      $rootScope.params.topnavTitle = 'My Food Profile';
      $rootScope.next_link = 'index.html#/initialFlow/terms';
    } else {
      initApplicationView($rootScope, $scope,'detailView myFoodProfile');
      $rootScope.params.ViewTitle = 'My Dietary Preferences';
      $rootScope.params.topnavTitle='Back';
    }
    window.GA.trackView($rootScope.params.ViewTitle);
    $rootScope.params.BackgroundImage ='img/bkg640-food-profile.jpg';
    $rootScope.$apply();

    ReadSuccess = function() {
    };

    ReadError = function() {

    };
    

    //
    //
    //
		
		// here goes some view functionality...
		//// saving preferences on click (tap) 
		$scope.HandleItemClick = function(itemId) {
			var isSet = !($scope['isSelected'+itemId]);
			$scope['isSelected'+itemId] = isSet;
			$("#"+itemId).prop('checked', isSet);  //checkboxes are not needed...keeping them for now.
			$scope.saveOnePreference(itemId,isSet);
		};
	
		//// saving one preference
		$scope.saveOnePreference = function(itemId, isSelected) {
			// alert('saving one');
			// alert($scope.userId);
			var deleteSql = 'delete from User_DietPreference where DietPreferenceID = '+ itemId + ' and UserID='+ $scope.userId;
			var insertSql = 'insert into User_DietPreference (UserID,DietPreferenceID) values ('+ $scope.userId + ','+ itemId +')';
			var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
		
			db.transaction ( function(tx) {
						tx.executeSql(deleteSql);
						if (isSelected){
							tx.executeSql(insertSql);
						}
						}, errorCB);
		};
	
	
		///// save all preferences - not using for now
		$scope.SaveFoodProfile = function () {
		
		var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
		//first delete all preferences
		db.transaction(
					   function(tx) {
					   tx.executeSql('DELETE FROM User_DietPreference');
					   });
		db.transaction(
					   function(tx) {
					   tx.executeSql('SELECT UserID FROM User', [],
									 function(tx, results) {
									 var UserID = results.rows.item(0).UserID;
									 $('#checkboxes input:checked').each(function() {
																		 DietPreferenceID  = $(this).attr('name');
																		 tx.executeSql('INSERT INTO User_DietPreference (UserID,DietPreferenceID) VALUES (?,?)',[UserID,DietPreferenceID]);
																		 })
									 document.location.reload();
									 }
									 ,errorCB);
					   
					   });
		};


    // example of using two subsequent database transaction : first retrieve userid
    // and store it in $scope then generate markup
    // to do that callbacks should be used to chain asynch calls
    // any processing that must WAIT for all db transactions to complete should go to this callback
    var getmarkupCB = function () {
      ReadSuccess();
    };
    //
    var getuserCB =  function () {
      GetMyFoodProfileMarkup(db, $scope, $compile, getmarkupCB);
    };
  
    //// get data
    var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);   
    GetUser(db, $scope, getuserCB);

    if (typeof($routeParams['step']) !== 'undefined' && $routeParams['step'] == 'dp') {
      navigator.notification.alert(
        "To help us make this app better for you, please select your dietary preferences in your Food Profile so we can attempt to curate specific products and recipes for you.",
        function () { },
        'Alert',
        'OK'
      );
	  }
}  //// Ctrl code ends here



////

function GetMyFoodProfileMarkup(db, $scope, $compile, transactionCB) {
	 var myfoodparams = {};
	 $scope.params = {};

		db.transaction(
					   function(tx) {
					   tx.executeSql('SELECT DP.*,UDP.UserID FROM DietPreference DP LEFT OUTER JOIN User_DietPreference UDP ON DP.DietPreferenceID = UDP.DietPreferenceID Order By DP.Name', [],
								function(tx, results) {
									 
								var len = results.rows.length;
								var favHTML = "";
									 
								for (var i = 0; i < len; i++) {
									 
									 var checkboxHTML = "";
									 var itemId = results.rows.item(i).DietPreferenceID;
									 var isSelectedId = 'isSelected' + itemId;
									 var selectedClassExpr = isSelectedId +"?'selected':''";
									 var isSelected = (results.rows.item(i).UserID != null)?true:false;
									 var iconClass = (results.rows.item(i).IconClass!== null)?results.rows.item(i).IconClass:'defaultIcon'
									 
								
									 checkboxHTML = '<input id="' + results.rows.item(i).DietPreferenceID + '"'
									 + ' type = "checkbox"'
									 + (isSelected?' checked ':'')
									 + '/>';
									 
									 /*
									  if (1!=1) {
									  checkboxHTML = '<input type="checkbox" name="' + results.rows.item(i).DietPreferenceID + '"';
									  if (results.rows.item(i).UserID != null)  {
									  checkboxHTML = checkboxHTML + ' checked';
									  }
									  checkboxHTML = checkboxHTML + ' value=""/>';
									  } else {
									  if (results.rows.item(i).UserID != null)  {
									  isSelected = true;
									  
									  checkboxHTML = '<span id="' + results.rows.item(i).DietPreferenceID + '" check="true"><b>---- TICK MARK ----</b></span>';
									  
									  } else {
									  isSelected = false;
									  checkboxHTML = '<span id="' + results.rows.item(i).DietPreferenceID + '" check="false"></span>';
									  }
									  }
									  */
									 favHTML += '<li class="grid-item icon-style icon-foodprofile ' + iconClass + '"'
									 + ' ng-class="{selected:'+ isSelectedId + '}"'
									 + ' ng-click="HandleItemClick('+ itemId +')"'
									 + '>'
									 + checkboxHTML + '<span>' + results.rows.item(i).Name + ' (' + results.rows.item(i).Abbreviation + ')'
									 //+ '<div>{{' + isSelectedId + '}}</div>'
									 //+ '<div>' + iconClass + '</div>'
									 +'</span></li>';
									 
									 $scope[isSelectedId] = isSelected;
									 }
									 myfoodparams.itemCount = len;
									 
									 //!!! complie is important if we want to use angular expressions in dynamically generated HTML
									 myfoodparams.dietpreferences = $compile(favHTML)($scope);
									 $scope.params = myfoodparams;
									 $scope.$apply();
									 },
									 errorCB);
					   
					   }, errorCB, transactionCB );

}

					   
//////
function GetUser(db,$scope,transactionCB) {
	db.transaction(function(transaction) {
	transaction.executeSql('SELECT * FROM User;', [],
							function(transaction, result) {
								if (result != null && result.rows != null) {
										$scope.userId = result.rows.item(0).UserID;
										}
										},errorCB);
									  },errorCB,transactionCB);
 }


///////////////////////////////////////////////////////////////////////////////////////////////////////
////                     FAVORITES
///////////////////////////////////////////////////////////////////////////////////////////////////////
function FavoriteViewCtrl($rootScope, $scope, $routeParams, $location, $window) {
    
    if ($routeParams.type != null) {
        if ($routeParams.type == "products") {
            // console.log ('product favorites')
            ProductsLandingCtrl($rootScope, $scope, $routeParams, $location, $window);
        } else if($routeParams.type == "recipes") {
            //console.log('recipes favorites');
            RecipesLandingCtrl($rootScope, $scope, $routeParams, $location, $window);
        }        
    }    
}


/////////////////////////////////////////////////////

function FavoritesLandingCtrl($rootScope, $scope) {
	var ReadError, ReadSuccess;
	initApplicationView($rootScope, $scope,'landingView favoritesLanding');
	setTopNav ($rootScope,'/favorites-landing');
  $rootScope.params.ViewTitle = "My Favorites";
  window.GA.trackView($rootScope.params.ViewTitle);
  $rootScope.params.BackgroundImage = 'img/bkg640-favorites-landing.jpg';
  $rootScope.$apply();


  // currently the page has two static links to favorite products and favorite recipes

  /* 
  ReadSuccess = function() {
  };

  ReadError = function() {
  };
    
  var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
  var myfoodparams = {};
    
    db.transaction(
       function(tx) {
           var DepartmentID;
           //Get the product Details
           tx.executeSql('SELECT * FROM Product P, User_Favorite_Product UFP Where P.ProductID=UFP.ProductID', [],
                         function(tx, results) {
                         var len = results.rows.length;
                         var favHTML = "";
                         for (var i=0; i<len; i++) {
                         favHTML += '<h2 style="color:white; font-size:15px; font-weight:normal; padding-top:10px;"><a href="index.html#/product-view/'  + results.rows.item(i).ProductID +  '">' + results.rows.item(i).Name + '</a></h2>';
                         }
                         myfoodparams.productfavorites = favHTML;
                         $scope.params = myfoodparams;
                         $scope.$apply();
                         },
                         errorCB);
           tx.executeSql('SELECT * FROM Recipe P, User_Favorite_Recipe UFP Where P.RecipeID=UFP.RecipeID', [],
                         function(tx, results) {
                         var len = results.rows.length;
                         var favHTML = "";
                         for (var i=0; i<len; i++) {
                         favHTML += '<h2 style="color:white; font-size:15px; font-weight:normal; padding-top:10px;"><a href="index.html#/recipe-view/'  + results.rows.item(i).RecipeID +  '">' + results.rows.item(i).Name + '</a></h2>';
                         }
                         myfoodparams.recipefavorites = favHTML;
                         $scope.params = myfoodparams;
                         $scope.$apply();
                         },
                         errorCB);
           
           $scope.params = myfoodparams;
           $scope.$apply();
       }, ReadError, ReadSuccess);

 */      
};


///////////////////////////////////////////////////////////////////////////////////
// ??? this doesn't look completed
function RelatedProductsCtrl($rootScope,$scope ) {
	var ReadSuccess, ReadError;

	resetTopNav($rootScope);
	initApplicationView($rootScope, $scope,'detailView productsLanding');
  $rootScope.params.topnavTitle='Back';
  window.GA.trackView("Related Products");
  $rootScope.$apply();
    
  var homeparams = {};
  var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);

	ReadSuccess = function() {
   
  };

  ReadError = function() {
  };

	var homeHTML = "";
  db.transaction(
                   function(tx) {
                   var sql = "SELECT ProductID as ID, Name as ItemName, ImagePathMosaicLarge, ImagePathMosaicSmall, 'product' as type From Product";
                   tx.executeSql(sql, [],
                                 function(tx, results) {
                                 var len = results.rows.length;
                                 
                                 homeHTML = "<div class=''>";
                                 var i = 0, lines = 0;
                                 for (i=0; i < len; i++) {
                                 var image = "", lefttype="product", righttype="product", currentHTML = "", cellType = "", leftimage="", rightimage="", smallimage="", largeimage="";
                                 
                                 smallimage = results.rows.item(i).ImagePathMosaicSmall;
                                 largeimage = results.rows.item(i).ImagePathMosaicLarge;
                                 if (largeimage === null) {
                                 largeimage = "img/mosaic-placeholder-wide.jpg";
                                 }
                                 if (smallimage === null) {
                                 smallimage = "img/mosaic-placeholder-narrow.jpg";
                                 }
                                 if (lines%2 == 0) {
                                 leftimage = largeimage;
                                 rightimage = smallimage;
                                 } else {
                                 leftimage = smallimage;
                                 rightimage = largeimage;
                                 }
                                 var type = results.rows.item(i).type;
                                 
                                 var leftHTML = '<div class="' + type + '-cell cell cell-{{CELLTYPE}} border-right">' +
                                 '<a href="index.html#/' + type + '-view/' + results.rows.item(i).ID + '"  ng-click="slidePage(\'/' + type + '-view\')">' +
                                 '<img src="' + leftimage + '" />' +
                                 '<div class="landing-item">';
                                
                                var targetLength = 60;
                                if (i%2 != 1) {
                                  if (!(lines % 2 == 0)) targetLength = 25;
                                }
                                leftHTML += '<div class="landing-item">' +
                                (results.rows.item(i).ItemName.length > targetLength ? results.rows.item(i).ItemName.slice(0, targetLength) + '...' : results.rows.item(i).ItemName)
                                + '</div>' +
                                 '</a>' +
                                 '</div>';
                                 
                                 var rightHTML = '<div class="' + type + '-cell cell cell-{{CELLTYPE}}">' +
                                 '<a href="index.html#/' + type + '-view/' + results.rows.item(i).ID + '"  ng-click="slidePage(\'/' + type + '-view\')">' +
                                 '<img src="' + rightimage + '" />' +
                                 '<div class="landing-item">';
                                  targetLength = 60;
                                  if (i % 2 == 1) {
                                    if (lines % 2 == 0) targetLength = 30;
                                  }  

                                rightHTML +=
                                (results.rows.item(i).ItemName.length > targetLength ? results.rows.item(i).ItemName.slice(0, targetLength) + '...' : results.rows.item(i).ItemName)
                                  + '</div>' +
                                 '</a>' +
                                 '</div>'
                                 
                                 
                                 if (i%2 == 1) {
                                 if (lines%2 == 0) homeHTML += rightHTML.replace("{{CELLTYPE}}","narrow");
                                 else homeHTML += rightHTML.replace("{{CELLTYPE}}","wide");
                                 } else {
                                 if (lines%2 == 0) homeHTML += leftHTML.replace("{{CELLTYPE}}","wide");
                                 else homeHTML += leftHTML.replace("{{CELLTYPE}}","narrow");
                                 }
                                 if (i%2 == 1) {
                                 lines++;
                                 homeHTML += "</div>";
                                 homeHTML += "<div class=''>";
                                 }
                                 }
                                 if (i%2 == 1) homeHTML += "</div>";
                                 
                                 homeparams.homeHTML = homeHTML;
                                 $scope.params = homeparams;
                                 $scope.$apply();
                                 }
                                 ,errorCB
                                 );
                   }
                   ), ReadError, ReadSuccess;
    
};



///////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ----------------------------------------- ABOUT LEGAL ------------------------------------------------------
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
function AboutLandingCtrl($rootScope, $scope, $routeParams, $location, $window) {
  var parms, db, ReadSuccess, ReadError;


// initialize view
  resetTopNav($rootScope);
  initApplicationView($rootScope, $scope,'landingView about');
  $rootScope.params.ViewTitle = 'About This App';
  window.GA.trackView($rootScope.params.ViewTitle);
  $rootScope.params.BackgroundImage = 'img/bkg640-about.jpg';
  $rootScope.$apply();



// apply data to the view
  ReadSuccess = function() {
    $scope.params = parms;
    $scope.$apply();
  };

// handle read error
  ReadError = function() {
      //
  }; 
  
//
// read data
//
	
parms = {};
    
var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
    db.transaction(function(tx) {
       tx.executeSql("SELECT * FROM AboutTheApp ", [], function(tx, results) {
         //console.log('exec1');
         var len = results.rows.length;
         if (len > 0) {
             parms.Title = results.rows.item(0).Title.replace('IPhone', 'iPhone');
             parms.Version = results.rows.item(0).Version;
             parms.Copyright = results.rows.item(0).Copyright;
            }
         }
         ,errorCB);

        tx.executeSql("SELECT * FROM Legal ", [], function(tx, results) {
          //console.log('exec2');
          var len = results.rows.length;
          var Legal = '';
          for (var i=0; i < len; i++) {
                Legal += '<a href="index.html#/legal/' + results.rows.item(i).LegalID + '/">' + results.rows.item(i).Title;
                Legal += '<img src="img/more_arrow.png" class="more_arrow" /></a>';
          }         
          parms.Legal = Legal;
         }
         ,errorCB);
    }, ReadError, ReadSuccess);   
}

////////////////////////////////////////////////////////////////////////////////////

function LegalViewCtrl($rootScope, $scope, $routeParams, $location, $window) {
  var ReadError, ReadSuccess, db, legalId, parms;
  
  // read routing arguments
  legalId = $routeParams.id;

  // initialize view
  resetTopNav($rootScope);
  initApplicationView($rootScope, $scope,'detailView legal');
  $rootScope.params.BackgroundImage = "img/bkg640-legal.jpg";
  $rootScope.params.topnavTitle ='Back';
  $rootScope.$apply();
  
  // apply data to the view
  ReadSuccess = function() {	 
      $scope.params = parms;
      $scope.$apply();
      $rootScope.params.ViewTitle = parms.Title;
      window.GA.trackView("About This App - " + parms.Title);
      $rootScope.$apply();
  };

  // handle read error
  ReadError = function() {
      //
  }; 
  //
  // read data
  //
  db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);    
  parms = {};

  db.transaction(function(tx) {
       tx.executeSql("SELECT * FROM Legal Where LegalID= " + legalId, [], function(tx, results) {
         var len = results.rows.length;
					
         if (len > 0) {
             parms.Title = results.rows.item(0).Title;
             parms.Overview = results.rows.item(0).Overview;
         }

         }
         ,errorCB);
       }, ReadError, ReadSuccess);
}

function UserViewCtrl ($scope, $rootScope, $routeParams) {
  if ($routeParams['type'] != 'first') {
    if ($rootScope.params.ViewTitle == "Exclusive Offers")
      initApplicationView($rootScope, $scope,'detailView userView');
    else
      initApplicationView($rootScope, $scope,'landingView userView');
    resetTopNav($rootScope);
    $scope.first_time = false;
  }
  else {
    initApplicationView($rootScope, $scope,'detailView userView first-time');
    $scope.first_time = true;
    var update_sql = "Update User Set AgreedToTerms='true' Where UserID='" + $rootScope.current_UserID + "'";
    var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
    db.transaction ( function(tx) {
      tx.executeSql(update_sql);
    }, errorCB);
  }

  $scope.invalid_form = false;
  $rootScope.params.topnavTitle = "Create Personal Profile";
  $rootScope.params.ViewTitle = "App Settings";
  $rootScope.params.BackgroundImage = 'img/app_settings_bkg.png';
  $scope.inputs = {
    Phone: {value: "", active: false},
    LastName: {value: "", active: false},
    FirstName: {value: "", active: false},
    PostalCode: {
      value: "",
      active: false,
      //error: "Acceptable formats: 12345 or 123456789",
      error: "Acceptable format: 12345",
      displayVal: ""
    },
    EmailAddress: {value: "", active: false, error: "Please enter a valid email"}
  };
  
  $scope.makeZipCodeNice = function (zip) {
    zip = '' + zip;
    return zip.slice(0, 5) + (zip.slice(5) ? '-' + zip.slice(5) : '');
  };

  var checkForInvalidFields = function (inputs) {
    var input_obj = inputs || $scope.inputs;
    for (var thing in input_obj) {
      if (input_obj.hasOwnProperty(thing)) {
        if (!input_obj[thing].value && thing != 'Phone')
          return true;
      }
    }
    return false;
  };

  var checkForAllEmpty = function (inputs) {
    var input_obj = inputs || $scope.inputs;
    for (var thing in input_obj) {
      if (input_obj.hasOwnProperty(thing)) {
        if (input_obj[thing].value && thing != 'Phone')
          return false;
      }
    }
    return true;
  }


  var validations = {
    LastName: function () {
      return $scope.inputs.LastName.value != "";
    },
    FirstName: function () {
      return $scope.inputs.FirstName.value != "";
    },
    PostalCode: function () {
      var zip = $scope.inputs.PostalCode.value + '';
      for (var i=0; i<zip.length; i++) {
        if (isNaN(parseInt(zip[i]))) {
          //if (!(i == 5 && zip[i] == '-'))
            return false;
        }
      }
      return zip != "" && (zip.length == 5);
    },
    EmailAddress: function() {
      function validateEmail (email) {
        return email.match(/^[\w+\-.]+@([a-z\d\-]+\.)+[a-z]+$/);
      }
      return $scope.inputs.EmailAddress.value != "" && validateEmail($scope.inputs.EmailAddress.value);
    },
    Phone: function() {
      return true;
    }
  }

  $scope.db_data = {};
  var sql = "Select * from User";
  var key_array = ['UserID', 'FW_CustomerID', 'FirstName', 'LastName',
                   'EmailAddress', 'PostalCode', 'Phone'];
  var onSuccess = function (data) {
    for (var i=0; i < key_array.length; i++) {
      var key = key_array[i];
      if (typeof($scope.inputs[key]) !== 'undefined') {
        $scope.inputs[key].value = data[0][key];
        $scope.db_data[key] = data[0][key];
      }
      if (key === 'UserID')
        $scope.db_id = data[0][key];
    }
    if (!checkForAllEmpty())
      $scope.invalid_form = checkForInvalidFields();
    $scope.inputs.PostalCode.displayVal = $scope.makeZipCodeNice($scope.inputs.PostalCode.value);
    $scope.$apply();
  };
  dbLookup(sql, key_array, onSuccess);

  $scope.toggleVisibility = function (model_name) {
    var new_val = !$scope.inputs[model_name].active;
    $scope.inputs[model_name].active = new_val;
  };
  
  $scope.redirectHome = function () {
    navigator.notification.alert(
      'Curating your products and recipes...',
      function () { window.location.href = "index.html#/"; },
      'Success',
      'OK'
    );
  };

  $(".input_container input").bind('blur', function() {

    function doImportantThings (valid, id) {
      /*if (valid && !$scope.first_time) {
        $scope.inputs[id].active = false;
        var update_sql = "Update User Set " + id + "='" + $scope.inputs[id].value + "' Where UserID='" + $scope.db_id + "'";
        var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
        db.transaction(function(tx) {
          tx.executeSql(update_sql, []);
          console.log('successfully updated');
        });
        db_data[id] = $scope.inputs[id].value;
        app.updateUser();
      } else*/ if (!valid) {
        var oldVal = $scope.inputs[id].value;
        if (typeof($scope.db_data[id] !== 'undefined'))
          $scope.inputs[id].value = $scope.db_data[id];
        else
          $scope.inputs[id].value = "";
        $scope.inputs[id].active = false;
        if (typeof($scope.inputs[id].error) !== 'undefined' && oldVal != "") {
          navigator.notification.alert(
            $scope.inputs[id].error,
            function () {},
            'Form Error',
            'OK'
          );
        }
      } else /*if ($scope.first_time) {*/
        {
        var update = true;
        var update_sql = "Update User Set ";
        for (var thing in $scope.inputs) {
          if ($scope.inputs.hasOwnProperty(thing)) {
            if (!validations[thing]()) {
              update = false;
              break;
            } else {
              update_sql += thing + "='" + $scope.inputs[thing].value + "', ";
            }
          }
        }
        $scope.inputs[id].active = false;
        if (id === "PostalCode") {
          $scope.inputs[id].displayVal = $scope.makeZipCodeNice($scope.inputs[id].value);
        }
        console.log('hello');
        if ($scope.inputs[id].value === $scope.db_data[id]) update = false;
        if (update) {
          update_sql = update_sql.slice(0, update_sql.length - 2) + update_sql.slice(update_sql.length - 1)
          update_sql += "where UserID='" + $scope.db_id + "'";
          var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
          db.transaction(function(tx) {
            tx.executeSql(update_sql, [], function() {
              console.log('successfully updated user');
              app.updateUser(id, $scope);
              if ($scope.first_time) {
                navigator.notification.alert(
                  'Curating your products and recipes...',
                  function () { window.location.href = "index.html#/"; },
                  'Success',
                  'OK'
                );
              }
            });
          });
        } 
      }
      $scope.invalid_form = checkForInvalidFields();
      $scope.$apply();
    }
    var fixZipCodes = function (zip, base) {
    if (typeof(base) === 'undefined')
      base = 8;
    zip = zip.toString(base);
    if (zip.length >= 3 && zip.length <= 5) {
        while (zip.length != 5) {
          zip = '0' + zip;
        }
      return zip;
    } else
      return false;
    };
    var checkZip = function (zip) {
      zip = zip.toString();
      for (var i=0; i < zip.length; i++) {
        if (parseInt(zip[i]) >= 8)
          return true;
      }
      return false;
    };
    var id = $(this).attr('id');
    console.log('valid is: ' + valid);
    /*if (id == 'PostalCode') {
      var val = $scope.inputs[id].value;
      console.log('val is: ' + val);
      if (val >= 73 && val <= 4095) {
        $scope.inputs[id].value = fixZipCodes(val);
        console.log($scope.inputs[id].value);
      } else if (val.toString().length == 3 || val.toString().length == 4) {
        if (checkZip(val))
          $scope.inputs[id].value = fixZipCodes(val, 10);
      }
    }*/

    var valid = validations[id]();

    if (id == 'PostalCode' && $scope.first_time) {
      if (valid) {
        $scope.inputs[id].active = false;
        $scope.$apply();
        $scope.inputs[id].displayVal = $scope.makeZipCodeNice($scope.inputs[id].value);
        navigator.notification.alert(
          'Fairway Market stores are currently located in the New York City Metropolitan area',
          function () { doImportantThings(valid, id) },
          'Update',
          'OK'
        );
      } else {
        doImportantThings(valid, id);
      }
    } else {
      doImportantThings(valid, id);
    }
    
  });
}

function StoreListAffCtrl($scope, $rootScope) {
  $scope.showKey = function () {
    console.log('hello it\'s in here: ' + $rootScope.store_key);
    $rootScope.store_key = true;
    $rootScope.$apply();
  }
}
