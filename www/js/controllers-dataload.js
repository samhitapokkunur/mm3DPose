
//
//
//

function DataLoadViewCtrl($rootScope, $scope, $routeParams, $window) {
  var onSuccess;
  var postID;

  // Get routing arguments
  postID = $routeParams.id;
  
  // Initialize View
  resetTopNav($rootScope);
  initApplicationView($rootScope, $scope,'landingView dataload');
  $rootScope.params.ViewTitle ="Fairway Dataload";
  $rootScope.$apply();
  console.log("server");
  console.log("app.props.servername");
  $scope.server = app.props.servername;
  $scope.isOnline = app.props.isOnline;
  $scope.$apply();
}



function DeltaDataLoadViewCtrl($rootScope, $scope, $routeParams, $window) {
  var onSuccess;
  var postID;

  // Get routing arguments
  postID = $routeParams.id;
  
  // Initialize View
  resetTopNav($rootScope);
  initApplicationView($rootScope, $scope,'landingView dataload');
  $rootScope.params.ViewTitle ="Fairway Delta Dataload";
  $rootScope.$apply();
  console.log("server");
  console.log("app.props.servername");
  $scope.server = app.props.servername;
  $scope.isOnline = app.props.isOnline;
  $scope.$apply();
}