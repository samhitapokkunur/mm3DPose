
//
//
//
function CuratorPostViewCtrl($rootScope, $scope, $routeParams, $window) {
  var onSuccess;
  var postID;

  // Get routing arguments
  postID = $routeParams.id;
  console.log(postID)
  
  // Initialize View
  resetTopNav($rootScope);
  initApplicationView($rootScope, $scope,'detailView curatorpost');
  $rootScope.params.topnavTitle ="Fairway Blog";
  $rootScope.$apply();

  // Apply data to the view  
  var onSuccess = function (data) {
      
      function formatDate(dt) {

        var d = new Date(dt);       
        var dd = d.getDate();
        var dm = d.getMonth(); //0 - 11
        var dy = d.getFullYear();
        var monthNames = [ "January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December" ];
        return  '' + monthNames[dm] + ' ' + dd +', '+  dy;
        //return 'October 6, 2013';  //test
      }

      $scope.postMessage = data[0]['Message'];
      $scope.$apply();

      $rootScope.params.BackgroundImage = app.getImgPath(data[0]['ImagePathLarge']);
      $rootScope.params.ViewTitle = data[0]['Title'];
      window.GA.trackView("Curator Post - " + $rootScope.params.ViewTitle);
      
      $rootScope.params.ViewSubtitle = formatDate(data[0].PostDate)
          + '&nbsp;&nbsp;&nbsp;&nbsp;' + data[0].FirstName + ' ' + data[0].LastName;
      $rootScope.$apply();
      //
      smartenUpRefs();
  };

  ReadError = function() {
    //
  };

  // Reassign <a> funcitonality
  var smartenUpRefs = function () {
    var a_tags, a_refs, tgt_ref, last_a_tag, i;
    //
    a_tags = $('.detailView.curatorpost p a');
    a_refs = [];
    tgt_ref = '';
    i = 0;
    //
    for(i = 0; i < a_tags.length; i++){
      a_refs.push($(a_tags[i]).attr('href'));
    }
    //
    for (i = 0; i < a_refs.length; i++) {
      tgt_ref = a_refs[i];
      $(a_tags[i]).bind('click', function (e) {
        e.preventDefault();
        window.open(tgt_ref, '_system');
      });
    }
    //

    last_a_tag = a_tags[a_tags.length - 1];
    $(last_a_tag).addClass('button').css({'padding-left': '20px', 'padding-right': '20px'});
  };

  var sql_statement = "SELECT P.CuratorPostID as CuratorPostID, P.PostDate as PostDate, P.Title as Title, P.Message as Message, P.ImagePathLarge as ImagePathLarge , C.FirstName as FirstName, C.LastName as LastName"
                      + " FROM CuratorPost P, Curator C, CuratorPostJoin CPJ"
                      + " WHERE C.CuratorID = CPJ.CuratorID And P.CuratorPostID = CPJ.CuratorPostID AND P.CuratorPostID = " + postID;
  var key_array = ['CuratorPostID', 'PostDate', 'Title', 'Message', 'ImagePathLarge', 'FirstName','LastName'];
  dbLookup(sql_statement, key_array, onSuccess);
}

