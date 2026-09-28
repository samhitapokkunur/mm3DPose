
///////////////////////////////////////////////////////////////////////////////////////////////////
function LoadProducts(params,db,sql,$rootScope, $scope, $routeParams, $location, $window, txErrorCB, txSuccessCB) {
    var homeHTML = "", errorHTML ="";
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
                 for (i = 0; i < len; i++) {

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
                   '<div class="landing-item">';

                   var targetLength = 60;
                  if (i%2 != 1) {
                    if (!(lines % 2 == 0)) targetLength = 25;
                  }
                  leftHTML +=
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
                      if ($routeParams.type == "products") {
                         if ($routeParams.departmentid == null)
                           errorHTML = '<div class="no_data_message">You have not added any favorite products.</div>';
                      } else {
                           errorHTML = '<div class="no_data_message">No Results match your filter selection. Please <a href="index.html#/filter-view/products/">revise your selection.</a> </div>';
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
//////////////////////////////////////////////////////////////////////////////////////////

function ProductsLandingCtrl($rootScope, $scope, $routeParams, $location, $window) {
  //console.log('products landing controller');

  //Google Tracking
  window.GA.trackView("Products Landing");
    
  //$('#top_ttl').load('partials/_title_products_landing.html');
  var ReadError, ReadSuccess;
  var title = "";

  function setLandingPageTemplate() {
	  initApplicationView($rootScope, $scope,'landingView productsLanding');
    setTopNav($rootScope,'/products-landing');
	};

	function setDetailPageTemplate() {   
    initApplicationView($rootScope, $scope,'detailView productsLanding');
    resetTopNav($rootScope);
    $rootScope.params.topnavTitle='PRODUCTS';
    $rootScope.$apply();
	};

  ReadSuccess = function() {
    //console.log('product landing data read success');
    if ($scope.params.DepartmentName > '') {
      //console.log($scope.params.DepartmentName);
      $rootScope.params.ViewTitle = 'Featured Products For ' + $scope.params.DepartmentName;
      window.GA.trackView('Department - Featured Product for ' + $scope.params.DepartmentName);
    } else {
      $rootScope.params.ViewTitle = title;
    }

    $rootScope.$apply();
  };

  ReadError = function () {    
  };

	
  var params = {};
  var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
  //Get the homepage products
	
    var sql = "SELECT ProductID as ID, Name as ItemName, ImagePathMosaicLarge, ImagePathMosaicSmall, 'product' as type ";
	// Products related to a department
        if ($routeParams.type == "products" && $routeParams.departmentid != null) {
	
			setDetailPageTemplate();

          //title = "Featured Products For ";
          sql = "SELECT P.ProductID as ID, P.Name as ItemName, ImagePathMosaicLarge, ImagePathMosaicSmall, 'product' as type, D.Name as DepartmentName" 
                  + " FROM Product P, ProductDepartment PD, Department D"
                  + " WHERE P.ProductID = PD.ProductID AND PD.DepartmentID = D.DepartmentID AND D.DepartmentID=" + $routeParams.departmentid;
            
          LoadProducts(params,db,sql,$rootScope, $scope, $routeParams, $location, $window, ReadError, ReadSuccess);

        } else if ($routeParams.type == "products") {
	
	// Favorite Products
			setDetailPageTemplate();
            title = "Favorite Products";
            window.GA.trackView('Favorite Products');
            sql = "SELECT P.ProductID as ID, Name as ItemName, ImagePathMosaicLarge, ImagePathMosaicSmall, 'product' as type From Product P, User_Favorite_Product UFP Where P.ProductID = UFP.ProductID Order By CREATED DESC ";
            LoadProducts(params,db,sql,$rootScope, $scope, $routeParams, $location, $window, ReadError, ReadSuccess);

        } else {
	
	// Landing Page 
			setLandingPageTemplate();
            title = "Products";
            var deptFlag = 0, tagFlag = 0;
            
            db.transaction(
               function(tx) {
               var sortQuery = 0;
               var filtersql = "Select * From User_Filters Where TagID = 9999 and ItemType='products'";
               tx.executeSql(filtersql, [],
                             function(tx, results) {
                             if (results.rows.length > 0) {
                             var tagSQL = " , (Select count(*) from ProductDietPreference PDP, User_DietPreference UDP Where PDP.DietPreferenceID = UDP.DietPreferenceID And PDP.ProductID = P.ProductID) AS Count From Product P Where 1 = 1 "
                             sql = sql + tagSQL;
                             sortQuery = 1;
                             } else {
                             var tagSQL = " From Product P Where 1 = 1 "
                             sql = sql + tagSQL;
                             }
                             
                             //LoadProducts(params,db,sql,$rootScope, $scope, $routeParams, $location, $window, ReaddError, ReadSuccess);
                             }
                             )
               var filtersql = "Select * From User_DepartmentPreference Where DepartmentID != 0 and ItemType='products'";
               tx.executeSql(filtersql, [],
                             function(tx, results) {
                             if (results.rows.length > 0) {
                             var deptSQL = " And Exists ( Select * from User_DepartmentPreference UDP, ProductDepartment PD Where UDP.ItemType='products' AND PD.DepartmentID= UDP.DepartmentID And PD.ProductID=P.ProductID)"
                             sql = sql + deptSQL;
                             }
                             // LoadProducts(params,db,sql,$rootScope, $scope, $routeParams, $location, $window, ReadError, ReadSuccess);
                             }
                             )
               var filtersql = "Select * From User_Filters Where ItemType='products' And (TagID != 0 And TagID != 9999)";
               tx.executeSql(filtersql, [],
                             function(tx, results) {
                                 var len = results.rows.length;
                                 for (var i=0; i<len; i++) {
                                     var tagSQL = " And Exists ( Select * from User_Filters UF, ProductTag PD Where PD.TagID= UF.TagID And PD.ProductID=P.ProductID And UF.TagID != 0 And UF.TagLabel='" + results.rows.item(i).TagLabel + "')";
                                     sql = sql + tagSQL;
                                 }
  // Finally sending query to db (with or without filters !!!                                                            
                            
                            if (sortQuery == 1) {
                              sql = sql + " Order by Count DESC, lastmodified desc ";  
                            } else {
                               sql = sql + " Order by lastmodified DESC ";  
                            }

                                 LoadProducts(params,db,sql,$rootScope, $scope, $routeParams, $location, $window, ReadError, ReadSuccess);
                             }
               )
        }
               )
        }
}

/////////////////////////////////////////////////

function ProductViewCtrl($rootScope, $scope, $routeParams, $location, $window) {

  var ReadSuccess, ReadError;

  // $('#top_ttl').load('partials/_title_product.html');

  $rootScope.params  = {};	
	resetTopNav($rootScope);
	initApplicationView($rootScope, $scope, 'detailView product');
  $rootScope.params.topnavTitle='Product Information';
  $rootScope.$apply();

  ReadSuccess = function() {
    $rootScope.params.ViewTitle = $scope.params.ProductName;
    //Google Tracking
    window.GA.trackView("Product - " + $scope.params.ProductName);
    $rootScope.$apply();
  };

  ReadError = function() {

  };

  $('#foot_nav').css({'display':'block'});
	
	//var defaultParm = {};
	//defaultParm.ProductName = "Lorem Ipsum Product Name";
	//defaultParm.ProductId = 0;
	//defaultParm.ProductDescription = "<em>Lorem Ipsum Product Description</em>";
	//defaultParm.ProductImage = 'url("img/product-placeholder-bgd.jpg")';
	//$scope.params = defaultParm;
	//alert($scope.params.ProductName);
	
    //$scope.params = $routeParams;
    var ProductID = $routeParams.id;

    var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
	
    db.transaction(
        function(tx) {
            var productparams = {};
            var DepartmentID;
            //Get the product Details
            tx.executeSql('SELECT * FROM Product Where ProductID=' + ProductID, [],
                          function(tx, results) {
                            productparams.ProductName = results.rows.item(0).Name;
                            productparams.ProductID = results.rows.item(0).ProductID;
                            productparams.ProductDescription = results.rows.item(0).Description;
                            productparams.ProductDescriptionHeading = results.rows.item(0).DescriptionHeading;
                            productparams.ProductMainImage = app.getImgPath(results.rows.item(0).ImagePathLarge);

                            $rootScope.params.BackgroundImage = productparams.ProductMainImage;
                          
                          
                            tx.executeSql('SELECT D.Name, D.DepartmentID, D.IconClass FROM Department D, ProductDepartment PD Where D.DepartmentID=PD.DepartmentID and PD.ProductID=' + ProductID, [],
                                        function(tx, results) {
                                          var deptHTML = "";
                                          var len = results.rows.length;
                                          var icon_class = "";
                                          for (var i=0; i<len; i++) {
                                            icon_class = results.rows.item(i).IconClass;
                                            deptHTML += '<a class="button long-button ' + icon_class + '" href="index.html#/department-view/' 
                                            + results.rows.item(i).DepartmentID + '">' 
                                            + results.rows.item(i).Name + '</a>';
                                          
                                          }
                                          productparams.DepartmentName = deptHTML;
                                          productparams.hasDepartment = len == 0 ? false : true;
                                          $scope.$apply();
                                        },
                                        errorCB);
                          },
                          errorCB);
           
           var divider = false;
				   
			//Get product diet preference
				   
				   tx.executeSql('SELECT p.ProductID,d.DietPreferenceID, d.IconClass, d.Name '
							   + ' FROM ProductDietPreference p, DietPreference d'
							   + ' WHERE p.DietPreferenceID = d.DietPreferenceID and p.ProductID=' + ProductID, [],
								 function(tx, results) {
								 var AttrHTML = "";
								 var len = results.rows.length;
								 
								 for (var i = 0; i < len; i++) {
									AttrHTML += '<li class="icon-style icon-foodprofile-small '
								    + results.rows.item(i).IconClass +' selected">'
									+ results.rows.item(i).Name
								    +'</li>';
								 }
								 
								 productparams.dietPrefHTML  = AttrHTML;
								 productparams.dietPrefCount = len;
								 $scope.params = productparams;
								 $scope.$apply();
								 
								 }
								 , errorCB);
                   
            //Get the product attribute details
            tx.executeSql('SELECT * FROM ProductAttributeValue Where DataGroup="Overview" and ProductID=' + ProductID + ' order by DataGroup, GroupDisplayOrder', [],
                         function(tx, results) {
                            var len = results.rows.length;
                            productparams.product_attributes = [];
                            for (var i=0; i<len; i++) {
                              productparams.product_attributes.push({
                                heading: results.rows.item(i).Label,
                                content: results.rows.item(i).DataGroupValue,
                                css_id: results.rows.item(i).Label.replace(/ /g, '_').toLowerCase()
                              });
                            }
                            if (len > 0) divider = true;
                         },
                         errorCB);
            
            tx.executeSql('SELECT * FROM ProductAttributeValue Where DataGroup="Tips" and ProductID=' + ProductID + ' order by DataGroup, GroupDisplayOrder', [],
                         function(tx, results) {
                         var AttrHTML = "";
                         //var tip_class = String(results.rows.item(i).Label).replace(/\s/g, '');
                         var tip_class = '';
                         var len = results.rows.length;
                         for (var i=0; i<len; i++) {
                          tip_class = String(results.rows.item(i).Label).replace(/\s/g, '');
                          AttrHTML += '<div class="tipsContainer"><h2 class="tipsH2 ' + tip_class + '">' + results.rows.item(i).Label + ':</h2><p class="tipsCopy">' + results.rows.item(i).DataGroupValue + '</p></div>';
                         }
                         productparams.TipsAttrHTML = AttrHTML;
                          $scope.$apply();
                         },
                         errorCB);
                   
           tx.executeSql('SELECT COUNT(*) AS COUNT From Recipe R, RecipeIngredient RI Where R.RecipeID = RI.RecipeID And ProductID=' + ProductID, [],
                         function(tx, results) {
                         
                         if (results.rows.item(0).COUNT > 0) {
                            productparams.RelatedRecipe='<div class="dept_li"><a id="dept_related_recipes" href="index.html#/recipes-filter/' + ProductID + '/" class="button long-button">View Related Recipes</a></div>';
                            $scope.$apply();
                         }
                         
                         if (!divider) { productparams.Divider='<div class="divider"></div>';$scope.$apply(); }
                         },
                         errorCB);
            
            
            $scope.params = productparams;
            $scope.$apply();
        }			   
    , ReadError, ReadSuccess);
    
    //
    //
    //

    $scope.AddToFavorite = function (ID) {
        var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
        db.transaction(
           function(tx) {
           tx.executeSql('SELECT UserID FROM User', [],
                         function(tx, results) {
                         var UserID = results.rows.item(0).UserID;
                         var ProductID = ID;
                         var d = new Date();
                         tx.executeSql('INSERT OR IGNORE INTO User_Favorite_Product (UserID,ProductID,CREATED) VALUES (?,?,?)',[UserID,ProductID,d.getTime()]);
                         //alert(UserID + ":" + ProductID + " added the product to your favorites");
                         $window.location.href="index.html#/favorite-view/products/";
                         }
                         ,errorCB);
           }
        );
    };
    // note that shopping_list table is used incorrectly, column ID should not't have a product name	
    $scope.AddToShoppingList = function (ID) {
        function added() {
          $window.location.href="index.html#/shopping-list/";
        }
        var item = {};
        item.name = $scope.params.ProductName;

        ShoppingListItem_Table.PushItem (item, added);
		    /*
        var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
        db.transaction(
           function(tx) {
           tx.executeSql('SELECT UserID FROM User', [],
                         function(tx, results) {
                         var UserID = results.rows.item(0).UserID;
                         var ProductID = ID;
                         var d = new Date();
                         tx.executeSql('INSERT OR IGNORE INTO User_ShoppingListItem (UserID,ListID,Name,created) VALUES (?,?,?,?,?)',[UserID,1, 0,$scope.params.ProductName,d.getTime()]);
                         //alert(UserID + ":" + ProductID + " added the products to your shopping list");
						 $window.location.href="index.html#/shopping-list/";
                         }
                         ,errorCB);
           }
        );
      */
    };

}
