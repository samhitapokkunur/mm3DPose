
//
//
// curator test data

var testsql = [];
testsql[0] = 'delete from curator where CuratorId=111';
testsql[1] = 'delete from curatorpostjoin where CuratorId=111';
testsql[2] = 'delete from curatorpost where CuratorPostId=1001';

testsql[3] = "INSERT OR REPLACE INTO Curator (CuratorID,FirstName,LastName) VALUES (111,'Elena','Gartshtein');"
testsql[4] = "INSERT OR REPLACE INTO CuratorPostJoin (CuratorID, CuratorPostID) VALUES (111, 1001)";
testsql[5] = "INSERT OR REPLACE INTO CuratorPost (CuratorPostID,PostDate,Title,Message,ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall, lastModified ) values (1001,0,'Seriously?','This is a test post and will be removed for production release. It persists in local database only. <p><b>lorem ipsum bold text</b><ul><li>lorem ipsum list item one</li> <li>lorem ipsum list item two</li></ul></p>','img/demo-assets/curators/detail/aceto_balsamico_di_modena_00019_640x1136.jpg', 'img/demo-assets/curators/landing-mosaic/large/aceto_balsamico_di_modena_00019_427x300.jpg', 'img/demo-assets/curators/landing-mosaic/small/aceto_balsamico_di_modena_00019_213x300.jpg', 1379096988)";

//
//
// this function is used for test purposes only
// call inside transaction before selects
function insertTestDataCurator(tx) {
  var i = 0;
  for (i = 0 ; i <  testsql.length; i++) {
    tx.executeSql(testsql[i]);
  }
}

//
//
// homepage sql
var homeSqlSelect = "Select SearchMe, Sequence, Name, ID, ImagePathMosaicLarge,ImagePathMosaicSmall,type,Count From (" +
                          "SELECT (ifnull(Name,' ') || ' ' || ifnull(DescriptionHeading,' ') || ' ' || ifnull(Description,' ')) as SearchMe, lastModified as Sequence, Name, ProductID as ID, ImagePathMosaicLarge, ImagePathMosaicSmall, 'product' as type,  (Select count(*) from ProductDietPreference PDP, User_DietPreference UDP Where PDP.DietPreferenceID = UDP.DietPreferenceID And PDP.ProductID = P.ProductID) AS Count From Product P  " +
                      " UNION ALL " +
                          "SELECT (ifnull(Name,' ') || ' ' || ifnull(DescriptionHeading,' ') || ' ' || ifnull(Description,' ')) as SearchMe, lastModified as Sequence, Name, RecipeID as ID, ImagePathMosaicLarge, ImagePathMosaicSmall, 'recipe' as type, (Select count(*) from RecipeDietPreference RDP, User_DietPreference UDP Where RDP.DietPreferenceID = UDP.DietPreferenceID And RDP.RecipeID = R.RecipeID) AS Count From Recipe R " +
                      " UNION ALL " +
                          "SELECT (ifnull(Title,' ') || ' ' || ifnull(FirstName,' ') || ' ' || ifnull(LastName,' ') || ' ' || ifnull(Message,' ') ) as SearchMe, lastModified as Sequence, (Title || ' - ' || FirstName || ' ' || LastName ) As Name , CP.CuratorPostID as ID, ImagePathMosaicLarge, ImagePathMosaicSmall, 'curatorpost' as type, "+
                          "(Select count(*) from CuratorPostDietPreference CDP, User_DietPreference UDP Where CDP.DietPreferenceID = UDP.DietPreferenceID And CDP.CuratorPostID = CP.CuratorPostID) AS Count " +
                          " From Curator C, CuratorPost CP, CuratorPostJoin CPJ Where C.CuratorID=CPJ.CuratorID And CP.CuratorPostID = CPJ.CuratorPostID " +
                     
                      " ) ";
var homeSqlWhere = '';
var homeSqlOrder = "Order by Count DESC, Sequence DESC ";

var homeSql = homeSqlSelect + ' ' + homeSqlOrder;

//
//
// this function is used by both search and homepage
// TODO : separate markup from sql
function getHomepageMosaic(sql,$scope) {

  var homeparams = {};  
  var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);   
  var homeHTML = "";
    db.transaction(
        function(tx) {      
            //insertTestDataCurator(tx); 

            tx.executeSql(sql, [],
                 function(tx, results) {
                      var len = results.rows.length;

                      homeHTML = "<div class=''>";
                      var i = 0, lines = 0;
                      for (i=0; i < len; i++) {
                          // console.log(results.rows.item(i).Count);
                          // console.log(results.rows.item(i).Sequence);
                          // console.log(results.rows.item(i).type);
                          
                          

                          var image = "", lefttype="product", righttype="product", currentHTML = "", cellType = "", leftimage="", rightimage="", smallimage="", largeimage="";
              
                          smallimage = app.getImgPath(results.rows.item(i).ImagePathMosaicSmall);
                          largeimage = app.getImgPath(results.rows.item(i).ImagePathMosaicLarge);
                          // console.log(" HomepageMosaic images = "+smallimage+" and "+largeimage);
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
                          '<a href="index.html#/' + type + '-view/' + results.rows.item(i).ID + '"  >' +
              '<img src="' + leftimage + '" />' +
                          '<div class="landing-item">';
                          
                          var targetLength = 60;
                          if (i%2 != 1) {
                            if (!(lines % 2 == 0)) targetLength = 20;
                          }
                          leftHTML += (results.rows.item(i).Name.length > targetLength ? results.rows.item(i).Name.slice(0, targetLength) + '...' : results.rows.item(i).Name)
                          + '</div>' +
                          '<div class="landing-icon"></div>' +
                          '</a>' +
                          '</div>';

                          var rightHTML = '<div class="' + type + '-cell cell cell-{{CELLTYPE}}">' +
                          '<a href="index.html#/' + type + '-view/' + results.rows.item(i).ID + '"  ng-click="slidePage(\'/' + type + '-view\')">' +
                          '<img src="' + rightimage + '" />' +
                          '<div class="landing-item">';

                          targetLength = 60;
                          if (i % 2 == 1) {
                            if (lines % 2 == 0) targetLength = 20;
                          }

                          
                          rightHTML += (results.rows.item(i).Name.length > targetLength ? results.rows.item(i).Name.slice(0, targetLength) + '...' : results.rows.item(i).Name)
                          + '</div>' +
                          '<div class="landing-icon"></div>' +
                          '</a>' +
                          '</div>';


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
                      //console.log(homeHTML);
                      if (homeHTML === "<div class=''>") {
                        homeHTML = '<div class="no-content">We&#39;re sorry, no results were found.</div>';
                      }
                      homeparams.homeHTML = homeHTML;
                      $scope.params = homeparams;
                      $scope.$apply();
                 }
                 ,errorCB
            );
         }
    );
}


/////////////////////////////////////////////////////////////////////////////////////////////////
// ...finally controllers
////////////////////////////////////////////////////////////////////////////////////////////////

function HomeCtrl($rootScope,$scope,$location) {
  
  // initialize View
  resetTopNav($rootScope);
  initApplicationView($rootScope, $scope,'landingView Home');
  $rootScope.params.ViewTitle = 'FAIRWAY MARKET';
  $rootScope.$apply();
  window.GA.trackView("Home");

  var initialFlow = $rootScope.initialFlow != undefined ? $rootScope.initialFlow : false;
  if (!initialFlow) {
    dbLookup("Select * From User", ['UserID', 'AgreedToTerms'], function(data) {
      //console.log('this is the agreed to terms: ' + data[0].AgreedToTerms);
      if (data[0].AgreedToTerms == "false") { 
        $rootScope.current_UserID = data[0].UserID;
        $rootScope.$apply();
        window.location.href = "index.html#/initialFlow/dp";
      }
      else {
        // build mosaic
        var sql = homeSql;
        getHomepageMosaic(sql,$scope);
      }
    });
  } else {
    var sql = homeSql;
    getHomepageMosaic(sql,$scope);
  }

}
function InitialFlowCtrl ($scope, $rootScope, $routeParams) {
  if ($routeParams['step'] == 'dp') {
    $scope.landing = true;
    window.location.href = "index.html#/food-profile-initial/dp";
  }
  else if ($routeParams['step'] == 'terms') {
    resetTopNav($rootScope);
    initApplicationView($rootScope, $scope,'detailView initialFlow-agreement');
    $scope.landing = false;
    $scope.$apply();
    $rootScope.params.BackgroundImage = 'img/bkg640-about.jpg';
    $rootScope.params.topnavTitle = '';
    $rootScope.$apply();
  }

}
//
//
//
function getSearchSql(searchText) {

  var searchSqlSelect = homeSqlSelect;
  var searchSqlWhere = "where (SearchMe like '%" + searchText + "%')";
  var searchSqlOrder = homeSqlOrder;
  var searchSql = searchSqlSelect + ' ' + searchSqlWhere + ' ' + searchSqlOrder;
  return searchSql;
}
//
//
//
function SearchCtrl($rootScope,$scope) {

  // get search string
  var searchText = $rootScope.searchText;

  // initialize View
  resetTopNav($rootScope);  
  initApplicationView($rootScope, $scope,'landingView Search');
  $rootScope.params.ViewTitle = 'Search Results For : ' + '"' + searchText +'"';
  //$rootScope.params.ViewSubtitle = '"' + searchText +'"';
  $rootScope.$apply();
  //window.GA.trackView("Search -" + $rootScope.params.ViewTitle);
  window.GA.trackView( $rootScope.params.ViewTitle);

  // build mosaic
  var sql = getSearchSql(searchText);
  getHomepageMosaic(sql,$scope);
  //
 } 


