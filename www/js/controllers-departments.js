function DepartmentsLandingCtrl($rootScope, $scope, $routeParams, $window, $compile) {
	
  // initialize view

	resetTopNav($rootScope);
	initApplicationView($rootScope, $scope,'landingView departmentsLanding');
  $rootScope.params.ViewTitle = 'Departments';
  window.GA.trackView($rootScope.params.ViewTitle);
  $rootScope.params.BackgroundImage ='img/bkg640-departments-landing.jpg'
  $rootScope.$apply();
	    
  var homeParams = [];
  var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
    
  // ???? : what does this do?
  if ($routeParams.id != null) {
       
       db.transaction(
           function(tx) {
            tx.executeSql('Update User_DepartmentPreference Set IsHidden=1 Where DepartmentID=' + $routeParams.id);
           }
       );
  }
	//????

	function ReadSuccess() {
    $scope.params = homeParams;
		$scope.$apply();
	};

  function ReadError() {

  };
    
  //Get the departments
	
	var testIcon = {};  
	testIcon[0] = 'icon-bakedgoods';
	testIcon[1] = 'icon-cheese';
	testIcon[2] = 'icon-coffee';
	testIcon[3] = 'icon-organic';
	
	testIcon[4] = 'icon-dairy';
	testIcon[5] = 'icon-driedfruits';
	testIcon[6] = 'icon-fw';
	testIcon[7] = 'icon-produce';
	
	testIcon[8] = 'icon-seafood';
	testIcon[9] = 'icon-traditionalgrocery';
	testIcon[10] = 'icon-meat';
	testIcon[11] = 'icon-specialtygrocery';
	
	
    var homeHTML = "";
    db.transaction(
       function(tx) {
       //var sql = "SELECT * FROM Department D, User_DepartmentPreference UDP Where D.DepartmentID = UDP.DepartmentID and IsHidden = 0 ";
       var sql = "SELECT * FROM Department D Order by Name ";
       tx.executeSql(sql, [],
         function(tx, results) {
          var len = results.rows.length;
          for (var i = 0; i < len; i++){
            var param = {};
            param.iconClass = results.rows.item(i).IconClass === null ? 'icon-fw' : results.rows.item(i).IconClass;
            param.deptName = results.rows.item(i).Name;
            param.departmentID = results.rows.item(i).DepartmentID;
            homeParams.push(param);
          }
         }
         ,errorCB
         );
    }, ReadError, ReadSuccess);
}

////////////////////////////////////////////////////////////////////////////////

function DepartmentCtrl($rootScope, $scope, $routeParams, $window) {
  var ReadError, ReadSuccess;
  var params, db;
  
  // Initialize View
  resetTopNav($rootScope);
  initApplicationView($rootScope, $scope, 'detailView department');

  
  //  Update View
  ReadSuccess = function () {
    $scope.params = params;
    $scope.$apply();
    $rootScope.params.BackgroundImage = params.MarqueeImagePath;
    //$rootScope.params.DepartmentName  = params.DepartmentName;
    $rootScope.params.topnavTitle  = params.DepartmentName;
    window.GA.trackView("Department - " + $rootScope.params.topnavTitle);
    $rootScope.$apply();
  };

  // 
  ReadError = function() {
    // todo
    console.log("DB Error: "+err.message + "\nCode="+err.code);
  };

  params = {};
  db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
    
  //Get the departments

    db.transaction(
        function(tx) {
        var sql = "SELECT * FROM Department Where DepartmentID = " + $routeParams.id;
        tx.executeSql(sql, [],
             function(tx, results) {
                 var len = results.rows.length;
                      
                 if (len > 0) {
                      params.DepartmentName = results.rows.item(0).Name;
                      params.DescriptionHeading = results.rows.item(0).DescriptionHeading;
                      // hacky conversion from <p> to <li>s
                      params.Description = '<ul class="description_ul">'
                      params.Description += results.rows.item(0).Description;
                      params.Description = params.Description.replace(/<p>/g, '<li><span>')
                      params.Description = params.Description.replace(/<\/p>/g, '</span></li>')
                      params.Description += '</ul>'
                      // are these being used?
                      //params.ImagePathThumb = results.rows.item(0).ImagePathThumb;
                      //params.ImagePathIcon = results.rows.item(0).ImagePathIcon;
                      params.MarqueeImagePath = app.getImgPath(results.rows.item(0).MarqueeImagePath);
                      params.MarqueeTitle = results.rows.item(0).MarqueeTitle;
                      params.MarqueeLinkText = results.rows.item(0).MarqueeLinkText;
                      params.MarqueeLinkPath = results.rows.item(0).MarqueeLinkPath;
                      params.FW_DeptCode = results.rows.item(0).FW_DeptCode;                      
                 }
             }
             ,errorCB
        );
        sql = "Select count(*) AS COUNT from ProductDepartment PD, Department D Where PD.DepartmentID = D.DepartmentID And PD.DepartmentID = " + $routeParams.id;
        tx.executeSql(sql, [],
             function(tx, results) {
                var len = results.rows.length;
                params.ProductCount = results.rows.item(0).COUNT;
                params.RelProdHref  =  '';
                params.RelProductHref = 'index.html#/favorite-view/products/department/' + $routeParams.id;
             }
             ,errorCB
        );
        sql = "Select count(*) AS COUNT from RecipeIngredient RI, ProductDepartment PD, Department D Where RI.ProductID = PD.ProductID And PD.DepartmentID = D.DepartmentID And PD.DepartmentID = " + $routeParams.id;
        tx.executeSql(sql, [],
            function(tx, results) {
            var len = results.rows.length;
            params.RecipeCount = results.rows.item(0).COUNT;
            params.RelRecHref = 'index.html#/favorite-view/recipes/department/' + $routeParams.id;
            }
            ,errorCB
        );
                   
    },ReadError, ReadSuccess);
}