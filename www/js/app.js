'use strict';

// Declare app level module which depends on filters, and services
var myApp = angular.module('myApp', ['myApp.filters', 'myApp.services', 'myApp.directives','ajoslin.mobile-navigate','ngMobile'])
.config(function ($compileProvider){
        $compileProvider.urlSanitizationWhitelist(/^\s*(https?|ftp|mailto|file|tel):/);
		})
.config(['$routeProvider', function($routeProvider) {
		 
		 $routeProvider.when('/', {templateUrl: 'partials/homeView.html', controller:HomeCtrl});
		 
		 $routeProvider.when('/home/', {templateUrl: 'partials/homeView.html', controller: HomeCtrl});
		 $routeProvider.when('/home', {templateUrl: 'partials/homeView.html', controller: HomeCtrl});

     // Initial Flow
     $routeProvider.when('/initialFlow', {templateUrl: 'partials/initialFlow.html', controller: InitialFlowCtrl });
     $routeProvider.when('/initialFlow/:step', {
               templateUrl: 'partials/initialFlow.html',
               controller:InitialFlowCtrl});
     $routeProvider.when('/food-profile-initial/:step', {
               templateUrl: 'partials/myFoodProfileView.html',
               controller:MyFoodProfileViewCtrl});
     $routeProvider.when('/initial-app-settings/:type', {templateUrl: 'partials/userView.html', controller:UserViewCtrl});
		
         
		$routeProvider.when('/favorite-view/:type/department/:departmentid', {templateUrl: 'partials/favoriteView.html'
							 , controller:FavoriteViewCtrl});
    $routeProvider.when('/favorite-view/:type', {templateUrl: 'partials/favoriteView.html'
							 , controller:FavoriteViewCtrl});
         

		$routeProvider.when('/products-landing/:type/', {templateUrl: 'partials/productsLandingView.html', controller:ProductsLandingCtrl});
		$routeProvider.when('/products-landing/', {templateUrl: 'partials/productsLandingView.html', controller:ProductsLandingCtrl});
		$routeProvider.when('/products-landing', {templateUrl: 'partials/productsLandingView.html', controller:ProductsLandingCtrl});

		 
		$routeProvider.when('/product-view/:id/', {templateUrl: 'partials/productView.html', controller:ProductViewCtrl});
		$routeProvider.when('/product-view/', {templateUrl: 'partials/productView.html',controller:ProductViewCtrl});
		$routeProvider.when('/product-view', {templateUrl: 'partials/productView.html',controller:ProductViewCtrl});
    $routeProvider.when('/products-filter/:id/', {templateUrl: 'partials/relatedProductsView.html'});

    $routeProvider.when('/recipes-landing/:type/', {templateUrl: 'partials/recipesLandingView.html', controller:RecipesLandingCtrl});
    $routeProvider.when('/recipes-landing/', {templateUrl: 'partials/recipesLandingView.html', controller:RecipesLandingCtrl});
		$routeProvider.when('/recipes-landing', {templateUrl: 'partials/recipesLandingView.html', controller:RecipesLandingCtrl});
    
    $routeProvider.when('/recipe-view/:id/', {templateUrl: 'partials/recipeView.html',controller:RecipeCtrl});
		$routeProvider.when('/recipe-view/', {templateUrl: 'partials/recipeView.html',controller:RecipeCtrl});
		$routeProvider.when('/recipe-view', {templateUrl: 'partials/recipeView.html',controller:RecipeCtrl});
         
    $routeProvider.when('/curatorpost-view/:id/', {templateUrl: 'partials/curatorPostView.html',controller:CuratorPostViewCtrl});

    $routeProvider.when('/recipes-filter/:id/', {templateUrl: 'partials/relatedRecipesView.html', controller:RelatedRecipesCtrl});
         
		 
		 $routeProvider.when('/departments-landing/', {
							 templateUrl: 'partials/departmentsLandingView.html',
							 controller:DepartmentsLandingCtrl
							 });
		 $routeProvider.when('/departments-landing', {
							 templateUrl: 'partials/departmentsLandingView.html',
							 controller:DepartmentsLandingCtrl});
		 $routeProvider.when('/department-view/:id', {templateUrl: 'partials/departmentView.html', controller:DepartmentCtrl});
		 $routeProvider.when('/department-view/', {templateUrl: 'partials/departmentView.html', controller:DepartmentCtrl});
         
    $routeProvider.when('/filter-view/:type/', {templateUrl: 'partials/filterView.html',controller:FilterViewCtrl});
    $routeProvider.when('/filter-view/:type/:tagtype', {templateUrl: 'partials/filterView.html',controller:FilterViewCtrl});
    $routeProvider.when('/filter-view/', {templateUrl: 'partials/filterView.html',controller:FilterViewCtrl});
		$routeProvider.when('/filter-view', {templateUrl: 'partials/filterView.html',controller:FilterViewCtrl});
         
		 
		 $routeProvider.when('/shopping-list-landing', {
							  templateUrl: 'partials/shoppingListView.html',
							  controller:MyShoppingListLandingCtrl
							 });
		 $routeProvider.when('/shopping-list', {templateUrl: 'partials/shoppingListView.html',
							 controller:MyShoppingListViewCtrl});
		 $routeProvider.when('/shopping-list/:id/', {templateUrl: 'partials/shoppingListView.html',
							 controller:MyShoppingListViewCtrl});
		 
		 $routeProvider.when('/my-food-profile/:id/', {
							 templateUrl: 'partials/myFoodProfileView.html',
							 controller:MyFoodProfileViewCtrl});
		 $routeProvider.when('/my-food-profile/', {
							 templateUrl: 'partials/myFoodProfileView.html',
							 controller:MyFoodProfileViewCtrl});
		 $routeProvider.when('/my-food-profile', {
							 templateUrl: 'partials/myFoodProfileView.html',
							 controller:MyFoodProfileViewCtrl});
		 
		 //!!! same view but with the different controller to show as a landing page when clicked from global nav...
		 $routeProvider.when('/my-food-profile-landing', {
							  templateUrl: 'partials/myFoodProfileView.html',
							  controller:MyFoodProfileLandingCtrl
							  });

		 
		 $routeProvider.when('/favorites-landing/', {templateUrl: 'partials/favoritesLandingView.html',controller:FavoritesLandingCtrl});
		 $routeProvider.when('/favorites-landing', {templateUrl: 'partials/favoritesLandingView.html',controller:FavoritesLandingCtrl});

		 
		 $routeProvider.when('/under-construction/', {templateUrl: 'partials/underConstruction.html'});
		 $routeProvider.when('/under-construction', {templateUrl: 'partials/underConstruction.html'});
         
     //Rewards

     $routeProvider.when('/rewards-landing/', {templateUrl: 'partials/rewardsLandingView.html', controller:RewardsLandingCtrl});
		 $routeProvider.when('/rewards-landing', {templateUrl: 'partials/rewardsLandingView.html', controller:RewardsLandingCtrl});
		 $routeProvider.when('/reward-view/:id/', {templateUrl: 'partials/rewardView.html', controller:RewardViewCtrl});
		 
     //Locations
     
     $routeProvider.when('/locations-landing/', {templateUrl: 'partials/locationsLandingView.html', controller:LocationsLandingCtrl});
	 	 $routeProvider.when('/locations-landing', {templateUrl: 'partials/locationsLandingView.html', controller:LocationsLandingCtrl});     
     $routeProvider.when('/store-list-map/:id/', {templateUrl: 'partials/storeListMapView.html', controller:StoreListMapCtrl});
     $routeProvider.when('/store-list-map/:id', {templateUrl: 'partials/storeListMapView.html', controller:StoreListMapCtrl});
     
     $routeProvider.when('/store-list/:id/', {templateUrl: 'partials/storeListView.html',controller:StoreListCtrl});
     $routeProvider.when('/store-key/', {templateUrl: 'partials/storeKeyView.html',controller:StoreKeyCtrl});

     $routeProvider.when('/store-view/:id/', {templateUrl: 'partials/storeDetailView.html'});
     $routeProvider.when('/store-hours/:id/', {templateUrl: 'partials/storeHoursView.html'});
     $routeProvider.when('/store-besttimetoshop/:id/', {templateUrl: 'partials/storeBestTimeToShopView.html'});
		 $routeProvider.when('/store-layout/:id/', {templateUrl: 'partials/storeLayoutView.html'});
     $routeProvider.when('/store-service/:id/:servicetypeid', {templateUrl: 'partials/storeServiceView.html'});
    
     // store location
     $routeProvider.when('/store-view-on-map/:id', {templateUrl: 'partials/storeViewOnMap.html' });
     
     //About and Legal
     $routeProvider.when('/about-landing/', {templateUrl: 'partials/aboutLandingView.html', controller:AboutLandingCtrl});
		 $routeProvider.when('/about-landing', {templateUrl: 'partials/aboutLandingView.html', controller:AboutLandingCtrl});
     $routeProvider.when('/legal/:id', {templateUrl: 'partials/legalView.html', controller:LegalViewCtrl});
		 

		 $routeProvider.when('/home-reload', {templateUrl: 'partials/homeView.html', controller:HomeCtrl});

     // App settings
     $routeProvider.when('/app-settings', {templateUrl: 'partials/userView.html', controller:UserViewCtrl});
         
		 // test page
		 $routeProvider.when('/test', {templateUrl: 'partials/testView.html', controller:TestViewCtlr});

		 // data load view
		 $routeProvider.when('/dataload-view/', {templateUrl: 'partials/dataLoad.html', controller: DataLoadViewCtrl});
		 $routeProvider.when('/dataload-view', {templateUrl: 'partials/dataLoad.html', controller: DataLoadViewCtrl});

		 		 // data load view
		 $routeProvider.when('/delta-dataload-view/', {templateUrl: 'partials/dataLoadDelta.html', controller: DeltaDataLoadViewCtrl});
		 $routeProvider.when('/delta-dataload-view', {templateUrl: 'partials/dataLoadDelta.html', controller: DeltaDataLoadViewCtrl});
		 
		 // search
		 $routeProvider.when('/search/', {templateUrl: 'partials/homeView.html', controller: SearchCtrl});

		 $routeProvider.otherwise({redirectTo: '/'});
		 }]);



