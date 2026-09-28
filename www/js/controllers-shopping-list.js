/////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ----------------------------------------- SHOPPING LIST ---------------------------------------------------
///////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Shopping list page has a hamburger top nav if opened from global navigation
// and has a "back" link when opened after an item is added to the list


function MyShoppingListLandingCtrl($rootScope, $scope, $routeParams) {

  MyShoppingListViewCtrl($rootScope, $scope, $routeParams);
  changeViewTemplate($rootScope, $scope,'landingView shoppingList');
  window.GA.trackView("Shopping List landing");
  $rootScope.$apply();
 
}

function MyShoppingListViewCtrl($rootScope, $scope, $routeParams) {
  var ReadSuccess, ReadError;
  
  // Initialize View
  resetTopNav($rootScope);
  initApplicationView($rootScope, $scope,'detailView shoppingList');
  $rootScope.params.ViewTitle = 'Shopping List';
  window.GA.trackView("Shopping List");
  $rootScope.params.BackgroundImage = 'img/bkg640-shopping-list.jpg';
  $rootScope.params.topnavTitle = "Back";
  $rootScope.$apply();
}
