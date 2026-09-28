///////////////////////////////////////////////////////////////////////////////////////////////////////////////
// -------------------------------------- REWARDS ------------------------------------------------------------
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
function RewardsLandingCtrl($rootScope, $scope, $routeParams, $location, $window) {

  var db, ReadError, ReadSuccess, params;
	
  // Initialize View
  resetTopNav($rootScope);
  var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);    
	initApplicationView($rootScope, $scope,'landingView rewardsLanding');
  $rootScope.params.ViewTitle = "Exclusive Offers";
  $rootScope.params.BackgroundImage = 'img/bkg640_RewardsLndingNoProfile.png';
  $rootScope.$apply();

  var reward_sql = "SELECT * FROM Reward ";
  var reward_keys = ['ExpireDate', 'StartDate', 'RewardID', 'ImagePathSmall',
                     'Name', 'ValueMessage'];
  var onSuccess_rewards = function (data) {
    var tmp = data;
    tmp.itemCount = data.length;
    tmp.activeCount = 0;
    var now = new Date();
    now.setHours(0,0,0,0);
    for (var i=0; i < tmp.length; i++) {
      tmp[i].ExpireDate = new Date(tmp[i].ExpireDate);
      tmp[i].ExpireDate.setHours(0,0,0,0);
      tmp[i].StartDate = new Date(tmp[i].StartDate);
      tmp[i].StartDate.setHours(0,0,0,0);
      tmp[i].active = (now >= tmp[i].StartDate) && (now <= tmp[i].ExpireDate);
      if (tmp[i].active) tmp.activeCount++;
      tmp[i].ImagePathSmall = app.getImgPath(tmp[i].ImagePathSmall);
    }

    $scope.rewards = tmp;
    $scope.$apply();
  }
  dbLookup(reward_sql, reward_keys, onSuccess_rewards);

  var user_sql = "Select * from User";
  var user_key_array = ['FirstName', 'LastName', 'PostalCode', 'EmailAddress',
                        'ImagePathBarCode'];
  var onSuccess_user = function (data) {
    
    function checkUser (data_object) {
      for (var i=0; i < user_key_array.length; i++) {
        if (user_key_array[i] != 'ImagePathBarCode') {
          var val = data_object[user_key_array[i]];
          if (!val || val == null || val == "null") return false;
        }
      }
      return true;
    }

    $scope.user = false;
    if (data.length > 0) {
      if (checkUser(data[0])) {
        $scope.user = true;
        $scope.userBarcode = app.props.downloadAssetPath + data[0].ImagePathBarCode;
        console.log('+++++++' + $scope.userBarcode);
        console.log('+++++++' + data[0].ImagePathBarCode);
        $rootScope.showRewards = true;
        $rootScope.$apply();
      }
    }
    var analytics = "Offers Landing";
    if (!$scope.user)
      analytics += " - Anonymous";
    window.GA.trackView(analytics);
    $scope.$apply();
  }
  dbLookup(user_sql, user_key_array, onSuccess_user);

  /*$("#show_rewards").bind('touchend', function() {
    $rootScope.showRewards = !$rootScope.showRewards;
    $rootScope.$apply();
    window.href = 'index.html#/rewards-landing/';
  });*/
}
//
//
//
function RewardViewCtrl($rootScope, $scope, $routeParams, $window) {

  // Get routing arguments
  var RewardID = $routeParams.id, analytics;
  
  // Initialize View
  resetTopNav($rootScope);
  initApplicationView($rootScope, $scope,'detailView reward');
  $rootScope.params.topnavTitle ='Offer Details';
  $rootScope.$apply();
  
  var sql = 'SELECT * FROM Reward Where RewardID=' + RewardID;
  var key_array = ['Name', 'Description', 'StartDate', 'ExpireDate',
                   'ImagePathLarge', 'ImagePathBarcode'];
  var onSuccess = function (data) {
    if (data.length == 1) {
      data[0].ExpireDate = new Date(data[0].ExpireDate);
      $scope.params = data[0];
      $scope.$apply();
      $rootScope.params.BackgroundImage = app.getImgPath(data[0].ImagePathLarge);
      
      $rootScope.$apply();
      analytics = "Offer - " + data[0].Name;
    }
  };
  dbLookup(sql, key_array, onSuccess);

  var user_sql = 'Select * from User';
  var user_keys = ['ImagePathBarCode', 'FirstName', 'LastName', 'PostalCode',
                   'EmailAddress'];
  var onSuccess_user = function (data) {
    var valid = true;
    for (var thing in data[0]) {
      if (data[0].hasOwnProperty(thing)) {
        if (thing.toLowerCase() != 'phone') {
          if (data[0][thing] == '' || data[0][thing] == 'null' || data[0][thing] == null) {
            valid = false;
        }
        }
      }
    }
    if (valid) {
      $scope.ImagePathBarCode = app.props.downloadAssetPath + data[0].ImagePathBarCode;
      $scope.$apply();
    }
    
    setTimeout(function (){
      if (!valid)
        analytics += ' - Anonymous';
      window.GA.trackView(analytics);
    }, 400);
    
  }
  dbLookup(user_sql, user_keys, onSuccess_user);
}

