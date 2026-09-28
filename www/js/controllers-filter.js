///////////////////////////////////////////////////////////////////////////////////////////////////////////////
// -------------------------------------- Filter Page ----------------------------------------------------------
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  //
  // DATA ACCESS FUNCTIONS
  // TODO: create wrapper object, 
  // move read functions from controller and then move all to data access files
  //
  // MAINT NOTES: 
  // Why department preferences needed the separate table?
  // DisplaySequence and IsHidden columns are currently NOT USED
  //
  //

  function UpdateDeptFilter(itemType, departmentId, successCB) {
      console.log('-- Update Department Filter Start --')
      var err, ok;
      var deleteSql, insertSql;
      var userId = DataAccess.userId;
      console.log(userId);
      
      err = function(e) {
          console.log('Update Department Filter -- error');
          console.log(e.code + ':' +e.message);
      };

      ok = function(){
          console.log('Update Department Filter -- success');
          if (successCB !== undefined) {
            successCB();
          }
      };


      var deleteSql = 'DELETE from User_DepartmentPreference'
            + ' WHERE UserID = '  + userId   
            + ' AND ItemType = "' + itemType + '"' ;
     
      var insertSql = 'INSERT INTO User_DepartmentPreference (UserID, ItemType, DepartmentID)'
            + ' Values (?,?,?)';

      db = fwDatabase.open();
      db.transaction(function(tx) { 
        tx.executeSql(deleteSql);
        // department id 0 is equivalent of having no filters
        if (departmentId !== 0) {
          tx.executeSql(insertSql,[userId, itemType, departmentId]);
        }
      }
      , err, ok); 
  
  }

  //
  //
  //

  function UpdateFilter(itemType, tagId, tagLabel, successCB) {
      console.log('update filter');
      var err, ok;
      var deleteSql, insertSql;
      
      var userId = DataAccess.userId;
      console.log(userId);

      deleteSql  = 'DELETE from User_Filters' 
                  + ' WHERE UserID = ' + userId
                  + ' AND ItemType = "' + itemType +'"'
                  + ' AND TagLabel = "' + tagLabel + '"';

      insertSql = 'INSERT INTO User_Filters (UserID, ItemType, TagID, TagLabel) Values (?,?,?,?)';
                  
      err = function(e) {
          console.log('Update Filters -- error');
          console.log(e.message);
      };

      ok = function(){
          console.log('Update Filters -- success');
          if (successCB !== undefined) {
            successCB();
          }
      };

      db = fwDatabase.open();
      db.transaction(function(tx) { 
          tx.executeSql(deleteSql);
          // tagid 0 is equivalent of having no filters
          if (tagId !== 0 ) {
            tx.executeSql(insertSql, [userId, itemType,tagId,tagLabel]); 
          }   
    }, err, ok); 
  }

  //
  //
  // TODO - this is yet another hack - using tagId  with special values 
  // to store diet preferencees setting... i don't have time to clean this up
  function UpdateDietSwitch(itemType,isOn){
    console.log('update diet switch');
    var tagId = (isOn) ? 9999 : 0; 
    UpdateFilter(itemType,tagId,'dietpreference');
  } 

  //
  //
  //
  function SelectLabels(itemtype, successCB) {
    
    var err, sql, retObj;
    var processResultSet;

    console.log(itemtype);
    //
    //
    sql = " SELECT 'Department' AS TagLabel,"
          + " (select count(*) from User_DepartmentPreference UDP where UDP.ItemType='" + itemtype + "') as ItemCount "        
          + " UNION "
          + " SELECT DISTINCT TagLabel, "
          + "(select count(*) from User_Filters UF where TT.TagLabel = UF.TagLabel and UF.ItemType = '" + itemtype + "') as ItemCount"
          + " FROM TagType TT" ;

    retObj = [];

    err = function(err) {
      console.log('select labels transaction error ' + err.message);
    };


    processResultSet = function (tx,rs) {
      console.log ('process result set');
      var i, len;
      len = rs.rows.length;
      console.log(len);
      for (i = 0 ; i < len ; i ++ ) {
        // dl = (rs.rows.item(i).TagLabel == 'Category') ? "Categories" : rs.rows.item(i).TagLabel + "s";
        dl = rs.rows.item(i).TagLabel;
        retObj.push( { 
          tagLabel : rs.rows.item(i).TagLabel,
          itemCount: rs.rows.item(i).ItemCount, 
          displayLabel: dl
       }); }
    };

    db = fwDatabase.open();
    db.transaction(function(tx) { 
        console.log(sql);
        tx.executeSql(sql,[],processResultSet);
    }
    , err, function() { labels = retObj; successCB( labels ); }); 
  }

  //----------------------------------------------------------------------------------
  //  UI FUNCTIONS
  //----------------------------------------------------------------------------------

  var _FilterViewUI = function(itemtype) {
    var done, cancel, additem, flip, getlabels;
    
    var itemType = itemtype;
    var tagType = "";
    var dietSwitch = null;
    var labels=[];
    //
    //
    //
    done = function() {
      console.log ('filter view done clicked') ;
      function cb() {     
        history.back();        
      }

      // save diet preferences switch
      var switchON = $('.onoffswitch input').is(':checked');
      UpdateDietSwitch(itemType,switchON);
      dietSwitch = null; // next time controller runs, database value will be used

      // save department or tags preferences and go back to the previous sreen
      if (tagType > '') {
          var obj = $(".filterLink.selected a");
          var itemId = $(obj).data("itemid");
     
          if (tagType.toLowerCase() === "department") {
            UpdateDeptFilter(itemType, itemId, cb);
          } else {  
            UpdateFilter(itemType,itemId,tagType, cb);
          } 
      } else { 
        cb();
      }
    
    };
    //
    //
    //
    cancel = function() {
      console.log ('filter view cancel clicked');
      dietSwitch = null;  // null will tell the controller to set the value from the database, fix along with db access cleanup
      if (tagType !== '') 
        history.back();
      else
        location.href = 'index.html#/' + itemType +'-landing/';  // forcing refresh
    };
    //
    //
    //
    additem = function(event) {
       var obj = event.target;
       var itemId = $(obj).data("itemid");

       $('.filterLink').removeClass('selected');
       $(obj).parent().addClass('selected');
    };
    //
    //
    //
    flipswitch = function() {
      //console.log('filter flip switch');
      dietSwitch = $(this).is(':checked');
      console.log(dietPrefSwitch);
    };
    //
    //
    //

    setTagType = function(val) {
      tagType = val;
    };
    //
    //
    // select labels from the database and launch callback  
    //why can't i just set this.Labels = ... in callback???
    getlabels = function(cb) {
      console.log('Filter Labels: UI call to data access');
      SelectLabels(this.itemType,function(l){ cb(l); });
    };

    // Object API

    return {
      itemType: itemType,    // products or recipes
      tagType: tagType,      // empty for the main view, otherwise equal to "department", "course", etc...
      Labels: labels,
      SetTagType: setTagType,
      Done: done,
      Cancel: cancel,
      FlipSwitch:flipswitch,
      AddItem: additem,
      CreateLabel: function() {
        if(tagType > '') {
          return (tagType == 'Category') ? "Categories" : tagType + "s";
        }
        return '';
      },
      GetSwitch: function(){return dietSwitch;},
      GetLabels: getlabels
    }

};


var ProdFilterViewUI = _FilterViewUI ('products');
var RecFilterViewUI  = _FilterViewUI ('recipes');


//----------------------------------------------------------------------
// Filter View Controller
//----------------------------------------------------------------------

function FilterViewCtrl($rootScope, $scope, $routeParams, $window) {
 
  var UI;  // UI manager object
  var dietSettingDB = "";  
  var GetLabels;

 // Get Routing parameters

  var itemtype = $routeParams.type;
  var tagtype  = $routeParams.tagtype;


 // Controller variables: todo - cleanup 

  var GetDietPrefSetting, GetMarkup, GetDepartmentLinksMarkup, GetLinksMarkup;
  var ReadDietPrefError, ReadDietPrefSuccess, ReadError, ReadSuccess;
  var filterparams, filterHTML;
  filterparams = {};
  filterHTML = "";
 
 // Initialize View

  resetTopNav($rootScope);
  filterparams.ItemType = itemtype;
  initApplicationView($rootScope, $scope,'filterView');
  $rootScope.params.BackgroundImage = 'img/bkg640-filter.png';
  
//$rootScope.params.filterTitle = 'Filter ' + itemtype;
  $rootScope.params.filterTitle = 'Select Filters';
  $rootScope.$apply();


// Assign UI Manager object
  if (itemtype === ProdFilterViewUI.itemType) {
      UI = ProdFilterViewUI;
  } else {
      UI = RecFilterViewUI;
  }

// Set View State ( when tagtype is provided, show its tags, otherwise show tag labels will be shown)
  if (tagtype !== undefined ) {
    UI.SetTagType(tagtype);
  } else {
    UI.SetTagType("");
  }
// We also want to show it on the view
  $scope.filterLabel = UI.CreateLabel();

// Get labels function - called at the end of the script for now (instead of "getmarkeup") - because all data access scropts need to be cleaned up
  GetLabels = function() {
  UI.GetLabels( function(l) {
    UI.Labels = l;
    $scope.labels = UI.Labels;  
    $scope.itemType = UI.itemType;
    $scope.$apply();
  });  
};

// Google Analytics
    
var trackingType = itemtype[0].toString().toUpperCase() + itemtype.substr(1);
var trackingTag =  (tagtype !== undefined && tagtype !== null)?' - ' + tagtype:'';
var trackVal = trackingType + " - Filter View" + trackingTag; 
// console.log('-----------------------------');
// console.log(trackingTag);
// console.log(trackVal);
// console.log('-----------------------------');

window.GA.trackView(trackVal);

// Bind UI elements (cancel and done exist in global scope - unbinding first)

  $('#onoffswitch').bind('click',UI.FlipSwitch);

  $('header .doneLink').unbind('click');
  $('header .doneLink').bind('click', UI.Done);

  $('header .cancelLink').unbind('click');
  $('header .cancelLink').bind('click', UI.Cancel);


  // Success Callbacks are to inject any view code 
  // that requires data  

  ReadDietPrefSuccess = function() {
    console.log('ui switch ' + UI.GetSwitch());
    if (UI.GetSwitch() == null) {
      $scope.UseDietPref = dietSettingDB;
      $scope.$apply();
    }
  }; 

  ReadDietPrefError = function() {
  };

  ReadSuccess = function() {
    // bind category items after they have been retrieved and inserted into our view;
    $('.filterLink a').bind('click', UI.AddItem);
  }; 

  ReadError = function() {
  };

  //
  // here goes all database stuff
  // TODO: separate markup and db queries
  //
  /////////////////////////////////////////////////////////////////////////////
  
  GetDietPrefSetting = function() {

    db.transaction(
             function(tx) {
             var sql = "SELECT ItemType,TagId,TagLabel FROM User_Filters "
             + " WHERE ItemType = '"  + itemtype +"'"
             + " AND TagLabel = 'dietpreference' and TagId > 0";
             tx.executeSql(sql, [],
                   function(tx, results) {
                   dietSettingDB = (results.rows.length > 0);
                   }
                   ,errorCB
                   );
             }, ReadDietPrefError,ReadDietPrefSuccess );
  };

  
  //

  /* replaced by GetLabels */
  /*
  GetMarkup = function () {

  filterHTML = '<a class="filterCategory" href="index.html#/filter-view/' + itemtype + '/department/">Departments</a>';
        
  db.transaction(
             function(tx) {
             var sql = "SELECT DISTINCT TagLabel FROM TagType ";
             tx.executeSql(sql, [],
                   function(tx, results) {
                   var len = results.rows.length;
                   
                   for (var i = 0; i < len; i++) {
                    filterHTML += '<a class="filterCategory" href="index.html#/filter-view/' + itemtype + '/' + results.rows.item(i).TagLabel +  '/">'
                      + (results.rows.item(i).TagLabel == 'Category' ? 'Categorie' :results.rows.item(i).TagLabel) + 's</a>';
                   }
                   
                  
                   
                   filterparams.TagTypes = filterHTML;
                   $scope.params = filterparams;
                   $scope.$apply();
                   }
                   ,errorCB
                   );
             
             } ,ReadError, ReadSuccess);
  };
  
  */

  //
  
    GetDepartmentLinksMarkup = function() {
    db.transaction(
             function(tx) {
             
          
             var sql = "SELECT D.DepartmentID AS DepartmentID, D.Name, UDP.DepartmentID AS ID From Department D LEFT OUTER JOIN User_DepartmentPreference UDP ON D.DepartmentID = UDP.DepartmentID"
                    + " and UDP.ItemType = '" + itemtype + "'  ";
  
              

             console.log('oooooooo' + itemtype);
             tx.executeSql(sql, [],
                   function(tx, results) {
                   var checkflag = 0;
                   var selectedClass = 0;
                   var len = results.rows.length;

                   console.log('departments'+ len);

                   filterHTML = '';
                                     //var dept = (itemtype == "products" ? 0 : 1)
                   for (var i=0; i<len; i++) {
                      var check = "";
                      if (results.rows.item(i).ID != null ) { checkflag=1; check = "-- Selected -- "; }
                      else {check = ""};
                   
                      selectedClass=(check !== '')? 'selected':'';
                   
                      filterHTML += '<span class="filterLink ' + selectedClass+'">'
                             + '<a '
                             + ' data-itemid="' + results.rows.item(i).DepartmentID + '"'
                             + '>' 
                             + results.rows.item(i).Name + '</a></span>';
                   }
                   
                   if (!checkflag) check = "-- Selected --";
                   else check = "";
                   
                   selectedClass=(check !== '')?'selected':'';
                   
                   filterHTML = '<span class="filterLink ' + selectedClass
                                  +'">'
                          //+ check
                          + '<a data-itemid="0">'                        
                          + 'All'
                          + '</a></span>' + filterHTML;
                   filterparams.TagValues = filterHTML;
                   $scope.params = filterparams;
                   $scope.$apply();
                   }
                   ,errorCB
                   );
             },ReadError, ReadSuccess);
  };
  
  //
  
  GetLinksMarkup = function() {
    
    db.transaction(
             function(tx) {
             var sql = "SELECT TT.TagID as TagID, TT.TagValue, UF.TagID as ID, ItemType, Status FROM TagType TT LEFT OUTER JOIN User_Filters UF ON TT.TagID = UF.TagID Where TT.TagLabel = '" + tagtype + "' Order by TT.TagValue, Status";
             tx.executeSql(sql, [],
                   function(tx, results) {
                   var len = results.rows.length;
                   var checkflag = 0;
                   var selectedClass = '';
                   filterHTML = "";
                   for (var i = 0; i < len; i++) {
                                     
                       var check = "";
                       if (results.rows.item(i).ID != null && itemtype == results.rows.item(i).ItemType && checkflag==0 ) { checkflag=1; check = "-- Selected -- "; }
                       else check = "";
                       
                       selectedClass=(check !== '')?'selected':'';
                       
                       filterHTML += '<span class="filterLink ' + selectedClass + '">'
                        //+ check
                        + '<a data-itemid="' + results.rows.item(i).TagID +'"'
                        //+ ' data-tagtype="'+ UI.TagType + '"'
                        +'>'
                        + results.rows.item(i).TagValue
                        + '</a></span>';
                       }
                       if (!checkflag) check = "-- Selected --";
                       else check = "";
                       
                       selectedClass=(check !== '')?'selected':'';
                       filterHTML = '<span class="filterLink ' + selectedClass + '"' + '">'
                       //+ check
                       + '<a data-itemid="0"'
                       // + ' data-tagtype="' + UI.TagType + '"'
                       + '>'
                       + 'All'
                       + '</a></span>' + filterHTML;
                       
                       filterparams.TagValues = filterHTML;
                       $scope.params = filterparams;
                       $scope.$apply();
                   }
                   ,errorCB
                   );
             },ReadError, ReadSuccess);
    };
//
//
//

    var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
  
    GetDietPrefSetting(ReadDietPrefError,ReadDietPrefSuccess);

    if (tagtype != null) {
        if (tagtype.toLowerCase() === "department") {
          GetDepartmentLinksMarkup();
        } 
        else {
          GetLinksMarkup();
       }
    } 
    else {
      GetLabels();
  }; 
    
}
