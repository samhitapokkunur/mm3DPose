///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function LoadRecipes (db,sql,$rootScope, $scope, $routeParams, $location, $window, txErrorCB, txSuccessCB) {

    var homeHTML = "", errorHTML = "", params = {};
    db.transaction(
       function(tx) {
       tx.executeSql(sql, [],
         function(tx, results) {
            
             var len = results.rows.length;

                              //
                 // get department name if available
                 // console.log("===================================");
                 // console.log(results.rows.item(i).DepartmentName);
                 // console.log("===================================");  
                   
                  params.DepartmentName = "";
                  if (len > 0 ) {
                      if (results.rows.item(0).DepartmentName !== 'undefined') {
                          params.DepartmentName = results.rows.item(0).DepartmentName;   
                      }
                  }
                  
                 //
                 //
             homeHTML = "<div class=''>";
             var i = 0, lines = 0;
             for (i=0; i < len; i++) {
             var image = "", lefttype="product", righttype="product", currentHTML = "", cellType = "", leftimage="", rightimage="", smallimage="", largeimage="";
             
             smallimage = app.getImgPath(results.rows.item(i).ImagePathMosaicSmall);
             largeimage = app.getImgPath(results.rows.item(i).ImagePathMosaicLarge);
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
             '<img src="' + leftimage + '" />';


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
       
             if (len == 0) {
                if ($routeParams.type == "recipes" && $routeParams.departmentid != null) {
                     
                } else if ($routeParams.type == "recipes") {
                     errorHTML = '<div class="no_data_message">You have not added any favorite recipes.</div>';
                } else {
                     errorHTML = '<div class="no_data_message">No Results match your filter selection. Please <a href="index.html#/filter-view/recipes/">revise your selection.</a></div>';
                }
             }
              
             params.homeHTML = homeHTML;
             params.errorHTML = errorHTML;
             $scope.params = params;
             $scope.$apply();
         }
         ,errorCB
         );
       }, txErrorCB, txSuccessCB
       );
}

//////////////////////////////////////////////////////////////////////////////////////

function RecipesLandingCtrl($rootScope, $scope, $routeParams, $location, $window) {
  console.log('recipes landing controller');
  var ReadSuccess, ReadError, db;
  var title;
  var homeparams = {};
  
  function setLandingPageTemplate() {     
      initApplicationView($rootScope, $scope,'landingView recipesLanding');
      setTopNav ($rootScope,'/recipes-landing');
      window.GA.trackView("Recipe Landing");
  };
  
  function setDetailPageTemplate() {    
    initApplicationView($rootScope, $scope,'detailView recipesLanding');
    resetTopNav ($rootScope);
    $rootScope.params.topnavTitle='RECIPES';
    $rootScope.$apply();
  };


  //
  ReadSuccess = function() {
    if ($scope.params.DepartmentName > '') {
      //console.log($scope.params.DepartmentName);
      $rootScope.params.ViewTitle = 'Related Recipes For ' + $scope.params.DepartmentName;
      window.GA.trackView("Department - Related Recipes for " + $scope.params.DepartmentName);
      //$rootScope.params.ViewTitle = 'Related Recipes';
    } else {
      $rootScope.params.ViewTitle = title;
    }
    $rootScope.$apply();
  };

  //
  ReadError = function() {

  };

  var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
  
  var sql = "SELECT RecipeID as ID, Name as ItemName, ImagePathMosaicLarge, ImagePathMosaicSmall, 'recipe' as type  ";
    
  // Recipes related to a department
  if ($routeParams.type == "recipes" && $routeParams.departmentid != null) {
      setDetailPageTemplate();
      title = "Recipes Related To";
        sql = "SELECT DISTINCT R.RecipeID as ID, R.Name as ItemName, ImagePathMosaicLarge, ImagePathMosaicSmall, 'recipe' as type, D.Name as DepartmentName"
            +" From Recipe R, RecipeIngredient RI, ProductDepartment PD, Department D "
            +" Where R.RecipeID = RI.RecipeID And RI.ProductID = PD.ProductID And PD.DepartmentID=D.DepartmentID AND PD.DepartmentID=" + $routeParams.departmentid;
            
            LoadRecipes(db,sql,$rootScope, $scope, $routeParams, $location, $window, ReadError, ReadSuccess);
        } else if ($routeParams.type == "recipes") {
  
  // Favorite recipes
      setDetailPageTemplate();
      title = "Favorite Recipes";
      window.GA.trackView('Favorite Recipes');
            sql = "SELECT R.RecipeID as ID, Name as ItemName, ImagePathMosaicLarge, ImagePathMosaicSmall, 'recipe' as type From Recipe R, User_Favorite_Recipe UFP Where R.RecipeID = UFP.RecipeID Order By CREATED DESC ";
            LoadRecipes(db,sql,$rootScope, $scope, $routeParams, $location, $window, ReadError, ReadSuccess);
        } else {
  // Recipes Landing 
       setLandingPageTemplate();
       title = "Recipes";       
       var deptFlag = 0, tagFlag = 0;
            
 
             db.transaction(
               function(tx) {

               var sortQuery = 0;
               var filtersql = "Select * From User_Filters Where TagID = 9999 and ItemType='recipes'";
               tx.executeSql(filtersql, [],
                             function(tx, results) {
                             if (results.rows.length > 0) {
                             var tagSQL = ", (Select count(*) from RecipeDietPreference RDP, User_DietPreference UDP Where RDP.DietPreferenceID = UDP.DietPreferenceID And RDP.RecipeID = R.RecipeID) AS Count From Recipe R Where 1 = 1 "
                             sql = sql + tagSQL;
                             sortQuery = 1;
                             } else {
                             var tagSQL = " From Recipe R Where 1 = 1 ";sql = sql + tagSQL;
                             }
                             }
                             )
               var filtersql = "Select * From User_DepartmentPreference Where DepartmentID != 0 and ItemType='recipes'";
               tx.executeSql(filtersql, [],
                             function(tx, results) {
                             if (results.rows.length > 0) {
                             var deptSQL = " And Exists ( Select * from User_DepartmentPreference UDP, RecipeIngredient RI, ProductDepartment PD Where PD.DepartmentID= UDP.DepartmentID And PD.ProductID=RI.ProductID And RI.RecipeID=R.RecipeID  And UDP.ItemType='recipes')"
                             sql = sql + deptSQL;
                             }
                             }
                             )
               var filtersql = "Select * From User_Filters Where ItemType='recipes' And (TagID != 0 And TagID != 9999)";
               tx.executeSql(filtersql, [],
                             function(tx, results) {
                             var len = results.rows.length;
                             for (var i = 0; i < len; i++) {
                                 var tagSQL = " And Exists ( Select * from User_Filters UF, RecipeTag PD Where PD.TagID= UF.TagID And PD.RecipeID=R.RecipeID And UF.ItemType='recipes' And UF.TagID != 0 And UF.TagLabel='" + results.rows.item(i).TagLabel + "')"
                                 sql = sql + tagSQL;
                             }
  // Finally sending query to db (with or without filters !!!                                                            
                            if (sortQuery == 1) {
                              sql = sql + " Order by Count DESC, lastmodified desc ";  
                            } else {
                               sql = sql + " Order by lastmodified DESC ";  
                            }                        
                                 LoadRecipes(db,sql,$rootScope, $scope, $routeParams, $location, $window, ReadError, ReadSuccess);
                            }
               )
               });
        }   
}

//////////////////////////////////////////////////////////////////////////////////////

function RecipeCtrl($rootScope, $scope, $routeParams, $window) {

  var ReadSuccess, ReadError;	
	initApplicationView($rootScope, $scope,'detailView recipe');
  $rootScope.params.topnavTitle='Recipe Details';
  $rootScope.$apply();
  

  $('#foot_nav').css({'display':'block'});
	
  var RecipeID = $routeParams.id;
	

  ReadError = function() {
  };
  //  
  ReadSuccess = function () {
    $rootScope.params.BackgroundImage = $scope.params.RecipeMainImage;
    $rootScope.params.ViewTitle = $scope.params.RecipeName;
    window.GA.trackView("Recipe - " + $scope.params.RecipeName);
    $rootScope.$apply();
  };

  var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
  
  db.transaction(
                   function(tx) {
                   var recipeparams = {};
                   var DepartmentID;
                   //Get the product Details
                   tx.executeSql('SELECT * FROM Recipe Where RecipeID=' + RecipeID, [],
                                 function(tx, results) {
                                     recipeparams.RecipeName = results.rows.item(0).Name;
                                     recipeparams.RecipeID = results.rows.item(0).RecipeID;
                                     recipeparams.RecipeDescription = results.rows.item(0).Description;
                                     recipeparams.RecipeDescriptionHeading = results.rows.item(0).DescriptionHeading;
                                     recipeparams.RecipeMainImage = app.getImgPath(results.rows.item(0).ImagePathLarge);
                                     console.log("================= Recipe detail main image is ID "+results.rows.item(0).ImagePathLarge+" and path: "+recipeparams.RecipeMainImage);
                                     recipeparams.Serves = results.rows.item(0).Serves;
                                     recipeparams.SkillLevel = results.rows.item(0).SkillLevel;
                                     recipeparams.TimeTotal = minutesToUIString(results.rows.item(0).TimeTotal);
                                     recipeparams.TimePrep = minutesToUIString(results.rows.item(0).TimePrep);
                                     recipeparams.TimeCook = minutesToUIString(results.rows.item(0).TimeCook);
                                     recipeparams.CaloriesPerServing = results.rows.item(0).CaloriesPerServing;
                                     recipeparams.ImagePathStepsGrid = results.rows.item(0).ImagePathStepsGrid;
                                     recipeparams.musicURL = results.rows.item(0).URLPathPlayList;
                                     $scope.params = recipeparams;
                                     $scope.$apply();
                                 },
                                 errorCB);
                   
                   //Get the recipe diet preference //??? this is not diet preference
                   tx.executeSql('SELECT * FROM RecipeTag rt, TagType tt Where rt.TagID=tt.TagID and TagLabel == "Course" and RecipeID=' + RecipeID + ' order by TagLabel ', [],
                                 function(tx, results) {
                                 recipeparams.courses = [];
                                 var len = results.rows.length;
                                 len = len > 2 ? 2 : len;
                                 for (var i=0; i<len; i++) {
                                  recipeparams.courses.push(results.rows.item(i).TagValue);
                                 }
                                 $scope.params = recipeparams;
                                 $scope.$apply();
                                 }
                                 , errorCB);
                   
				   
                   //Get the recipe diet preference
                   tx.executeSql('SELECT dp.* FROM RecipeDietPreference pdp, DietPreference dp Where dp.DietPreferenceID=pdp.DietPreferenceID and RecipeID=' + RecipeID + ' order by DisplayOrder ', [],
                                 function(tx, results) {
                                     var AttrHTML = "";
                                     var len = results.rows.length;
								 
									for (var i = 0; i < len; i++) {
										AttrHTML += '<li class="icon-style icon-foodprofile-small '
								        + results.rows.item(i).IconClass +' selected">'
								        + results.rows.item(i).Name
								        +'</li>';
									}
								 
                                     recipeparams.dietPrefHTML = AttrHTML;
									 recipeparams.dietPrefCount = len;
                                     $scope.params = recipeparams;
                                     $scope.$apply();
                                 }
                                 , errorCB);
                   
                   //Get the wine pairings
                   tx.executeSql('SELECT * FROM RecipeAttributeValue Where DataGroup="Summary" and RecipeID=' + RecipeID + ' order by DataGroup, GroupDisplayOrder', [],
                                 function(tx, results) {
                                 var len = results.rows.length;
                                 recipeparams.winePairing = len > 0 ? results.rows.item(0).DataGroupValue : "";
                                 $scope.params = recipeparams;
                                 $scope.$apply();
                                 },
                                 errorCB);
                   
                   //Get the ingredients
                   tx.executeSql('SELECT * FROM RecipeIngredient Where RecipeID=' + RecipeID + ' order by DisplayOrder, rowid ', [],
                                 function(tx, results) {
                                     var AttrHTML = "", currentDataGroup = "", prvDataGroup = "";
                                     var len = results.rows.length;
                                     for (var i=0; i<len; i++){
                                        currentDataGroup = results.rows.item(i).GroupHeading;
                                        if (currentDataGroup != prvDataGroup && currentDataGroup != '') {
                                            AttrHTML += '<li class="group"><span>' + currentDataGroup + '</span></li>';
                                        }
                                        AttrHTML += '<li><span>';
                                        if (results.rows.item(i).Quantity != '') AttrHTML += results.rows.item(i).Quantity + ' ';
                                 
                                        var ProductID = results.rows.item(i).ProductID;
                                        if (ProductID != "") {
                                            AttrHTML += '<a href="index.html#/product-view/' + ProductID + '/">' + results.rows.item(i).Name + '</a></span></li>';
                                        } else {
                                            AttrHTML += results.rows.item(i).Name + '</span></li>';
                                        }
                                        prvDataGroup = currentDataGroup;
                                     }
                                     recipeparams.IngAttrHTML = AttrHTML;
                                     $scope.params = recipeparams;
                                     $scope.$apply();
                                 }
                                 , errorCB);
                   
                   //Get the steps
                   tx.executeSql('SELECT * FROM RecipeStep Where RecipeID=' + RecipeID + ' order by DisplayOrder,stepNumber ', [],
                                 function(tx, results) {
                                     var dataGroupHTML = "", dataItemHTML= "", currentDataGroup = "", prvDataGroup = "";
                                     var len = results.rows.length;
                                     var stepcount = 0;
                                     for (var i=0; i<len; i++){
                                         currentDataGroup = results.rows.item(i).GroupHeading;
                                         if (currentDataGroup != prvDataGroup && currentDataGroup != '') {
                                            //dataItemHTML = dataItemHTML.replace(/{{TOTAL_COUNT}}/g, stepcount);
                                            stepcount = 0;
                                            dataItemHTML += '<li class="group"><span>' + currentDataGroup + '</span></li>'
                                         }
                                         stepcount++;
                                         //dataItemHTML += '<b>' + (stepcount) + ' of {{TOTAL_COUNT}}' + '</b><li>' + results.rows.item(i).Instructions + '</li>'
                                         dataItemHTML += '<li><span>' + results.rows.item(i).Instructions.replace(/<\/?p>/, '') + '</span></li>'
                                         dataItemHTML += (results.rows.item(i).AlertHeading != "") ? '<br/><b>' + results.rows.item(i).AlertHeading + '</b><br/>' + results.rows.item(i).AlertMessage : '';
                                        
                                         
                                         prvDataGroup = currentDataGroup;
                                     }
                                     //dataItemHTML = dataItemHTML.replace(/{{TOTAL_COUNT}}/g, stepcount);
                                     recipeparams.StepsHTML = dataItemHTML;
                                     $scope.params = recipeparams;
                                     $scope.$apply();
                                 }
                                 
                                 , errorCB);
                   
                   $scope.params = recipeparams;
                   $scope.$apply();
                                      
                   }, ReadError, ReadSuccess
				   
                   );
    
    
    $scope.AddToFavorite = function (ID) {
        var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
        db.transaction(
                       function(tx) {
                       tx.executeSql('SELECT UserID FROM User', [],
                                     function(tx, results) {
                                     var UserID = results.rows.item(0).UserID;
                                     var RecipeID = ID;
                                     var d = new Date();
                                     tx.executeSql('INSERT OR IGNORE INTO User_Favorite_Recipe (UserID,RecipeID,CREATED) VALUES (?,?,?)',[UserID,RecipeID,d.getTime()]);
                                     //alert(UserID + ":" + RecipeID + " added the recipe to your favorite list");
									 //$window.location.href="index.html#/favorites-landing/";
                                     $window.location.href="index.html#/favorite-view/recipes/";
                                     }
                                     ,errorCB);
                       }
                       );
    };
	 
    $scope.AddToShoppingList = function (ID) {

        function added() {
          $window.location.href="index.html#/shopping-list/";
        }
        console.log('add recipe to shopping list');
        ShoppingListItem_Table.PushRecipeIngredients(ID, added);
      /*
		var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
        db.transaction(
                       function(tx) {
                       tx.executeSql('SELECT UserID FROM User', [],
                                     function(tx, results) {
                                     var UserID = results.rows.item(0).UserID;
                                     var RecipeID = ID;
                                     var d = new Date();
                                     //INSERT OR IGNORE INTO User_ShoppingList (UserID,ID)
                                     //Select UserID, Name From RecipeIngredient Where RecipeID = " + RecipeID
                                     tx.executeSql('INSERT OR IGNORE INTO User_ShoppingList (UserID,ID,CREATED) Select ' + 0 + ', Name,' + d.getTime() + ' From RecipeIngredient Where RecipeID = ' + RecipeID);
                                     //tx.executeSql('INSERT OR IGNORE INTO User_ShoppingList (UserID,ID) VALUES (?,?)',[UserID,RecipeID]);
                                     //alert(UserID + ":" + RecipeID + " added the recipe to your shopping list");
                                     }
                                     ,errorCB);
									 $window.location.href="index.html#/shopping-list/";
                       }
                       );
      */                 
    };

}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////
// -------------------------------------- Related Recipes (related to a product)  ---------------------------
// Todo : refactor mosaic functionality - its the same as landing page
///////////////////////////////////////////////////////////////////////////////////////////////////////////////


function RelatedRecipesCtrl($rootScope, $scope, $routeParams, $window) {
  var ReadErrorProd, ReadSuccessProd, ReadError, ReadSuccess;

  // Initialize View
  resetTopNav($rootScope);
  initApplicationView($rootScope, $scope,'detailView recipesLanding');
  $rootScope.params.topnavTitle = 'Recipes';
  // Update View
  ReadSuccessProd = function() {
      $rootScope.params.ViewTitle = 'Recipes related to ' + $scope.params.ProductName;
      window.GA.trackView("Product - Related Recipe to " + $scope.params.ProductName);
      $rootScope.apply();
  };


//
//
//

  var homeparams = {};
  var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
  

    db.transaction(
        function(tx) {
        var sql = "SELECT Name from Product Where ProductID=" + $routeParams.id;
        tx.executeSql(sql, [],
             function(tx, results) {
                 var len = results.rows.length;
                 
                 for (var i=0; i<len; i++) {
                      homeparams.ProductName = results.rows.item(i).Name;
                 }
                 $scope.params = homeparams;
                 $scope.$apply();
             }
             ,errorCB
             );
    },ReadErrorProd, ReadSuccessProd);
    

    var homeHTML = "";
    db.transaction(
                   function(tx) {
                   var sql = "SELECT R.RecipeID as ID, R.Name as ItemName, ImagePathMosaicLarge, ImagePathMosaicSmall, 'recipe' as type From Recipe R, RecipeIngredient RI Where R.RecipeID = RI.RecipeID And ProductID=" + $routeParams.id;
                   tx.executeSql(sql, [],
                                 function(tx, results) {
                                 var len = results.rows.length;
                                 
                                 homeHTML = "<div class=''>";
                                 var i = 0, lines = 0;
                                 for (i=0; i < len; i++) {
                                 var image = "", lefttype="product", righttype="product", currentHTML = "", cellType = "", leftimage="", rightimage="", smallimage="", largeimage="";
                                 
                                 smallimage = app.getImgPath(results.rows.item(i).ImagePathMosaicSmall);
                                 largeimage = app.getImgPath(results.rows.item(i).ImagePathMosaicLarge);

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
                                 '<div class="landing-item">' + results.rows.item(i).ItemName + '</div>' +
                                 '</a>' +
                                 '</div>';
                                 var rightHTML = '<div class="' + type + '-cell cell cell-{{CELLTYPE}}">' +
                                 '<a href="index.html#/' + type + '-view/' + results.rows.item(i).ID + '"  ng-click="slidePage(\'/' + type + '-view\')">' +
                                 '<img src="' + rightimage + '" />' +
                                 '<div class="landing-item">' + results.rows.item(i).ItemName + '</div>' +
                                 
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
                   }, ReadError, ReadSuccess
                   );
    
}
