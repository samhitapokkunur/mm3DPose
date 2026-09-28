/////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ----------------------------------------- LOCATIONS ------------------------------------------------------
///////////////////////////////////////////////////////////////////////////////////////////////////////////////

//
//
// Landing Page




function LocationsLandingCtrl($rootScope, $scope, $routeParams, $location, $window) {
  
    var ReadError, ReadSuccess, params, locations;
    
    locations = [];
    //params = {};
	  
    //  Initialize View
    console.log('1');
    resetTopNav($rootScope);
    initApplicationView($rootScope, $scope,'landingView locations');
    $rootScope.params.ViewTitle = 'Store Locations';
    window.GA.trackView("Store Locations");
    $rootScope.params.BackgroundImage = 'img/bkg640-locations-landing.jpg';
    $rootScope.$apply();
    

    var onSuccess = function (data) {
      console.log(data.length);
      $rootScope.locations = data;
      $rootScope.$apply();
    };

    if (typeof($rootScope.locations) === 'undefined'
        || $rootScope.locations.length == 0) {
      var sql_statement = "SELECT Label,GeoRegionID,IconClass, (Select Count(*) From GeoRegionStore Where GeoRegionID=GR.GeoRegionID) As Count FROM GeoRegion GR  ";
      var key_array = ['IconClass', 'GeoRegionID', 'Label', 'Count'];
      dbLookup(sql_statement, key_array, onSuccess);
    }

}


function StoreListMapCtrl($rootScope, $scope, $routeParams, $location, $window) {
   
    var GeoRegionID = $routeParams.id;
    var ReadError, ReadSuccess, region_name, lat_lng_array, map, mapBounds;
    lat_lng_array = [];

    var flag = 0;
    var horizontalMapListCentering = function () {
      //
      var selected_icon, selected_icon_left, selected_icon_width, entire_list, app_width, tgt_scroll;
      //
      flag++;
      if (flag >= 2) {
        flag = 0;
        //
        //
        app_width = $('body').width();
        selected_icon = $("#filter .selected");
        selected_icon_left = selected_icon.position().left;
        selected_icon_width = selected_icon.width();
        entire_list = $(".allLocationsIconsWrapper");
        //
        //
        console.log(selected_icon_left);
        entire_list.scrollLeft(selected_icon_left - (app_width/2) + (selected_icon_width/2) + 14);
        //
        //
      }
    };

    // initialize view
    // initApplicationView($rootScope, $scope,'landingView storeListMap');
    // resetTopNav($rootScope);
    initApplicationView($rootScope, $scope,'detailView storeListMap');
    $rootScope.params.topnavTitle = "Store Locations";
    $rootScope.GeoRegionID = GeoRegionID;
    $rootScope.map_activity = 'active';
    $rootScope.list_activity = 'inactive';
    $rootScope.store_key = false;
    $scope.filterState = 'hideFilter';
    $rootScope.$apply();

    var sql_statement = "SELECT Label,GeoRegionID,IconClass, (Select Count(*) From GeoRegionStore Where GeoRegionID=GR.GeoRegionID) As Count FROM GeoRegion GR  ";
    var key_array = ['IconClass', 'GeoRegionID', 'Label', 'Count'];
    var onSuccess_one = function (data) {
      $scope.locations = data;
      $scope.$apply();
      horizontalMapListCentering();
    };
    dbLookup(sql_statement, key_array, onSuccess_one);

    var sql_statement_two = "SELECT * from Store S, GeoRegionStore GRS, GeoRegion GR Where GR.GeoRegionID = GRS.GeoRegionID And S.StoreID=GRS.StoreID And GR.GeoRegionID = " + GeoRegionID;
    var key_array_two = ['Label', 'Latitude', 'Longitude', 'Name', 'Address1',
                         'Address2', 'StoreID'];
    var onSuccess_two = function (data) {
      $rootScope.params.ViewTitle = data[0].Label;
      window.GA.trackView("Store Locations - " + $rootScope.params.ViewTitle);
      $rootScope.$apply();
      horizontalMapListCentering();
      drawMap(data, 'map-canvas', 'store-view/', true);
    };
    dbLookup(sql_statement_two, key_array_two, onSuccess_two);

    if (typeof($rootScope.keys) === 'undefined') {
      var key_params = {};
      var sql = "SELECT * From ServiceType Order By DataGroup, Label ASC";
      var lookup_keys = ['DataGroup', 'Label', 'ImagePathIconClass'];
      var success = function (data) {
        for (var i=0; i < data.length; i++) {
          var group = data[i].DataGroup.toLowerCase();
          if (typeof(key_params[group]) === "undefined")
            key_params[group] = [];
          key_params[group].push({
            name: data[i].Label,
            class: data[i].ImagePathIconClass
          });
        }
        $rootScope.keys = key_params;
        $rootScope.$apply();
      }
      dbLookup(sql, lookup_keys, success);
    }
    
    if (typeof($rootScope.hideKey) === 'undefined') {
      $rootScope.hideKey = function () {
        $rootScope.store_key = false;
      }
    }
  

} 


//////////////////////////////////////////////////////////////////////////////////

function StoreListCtrl($rootScope, $scope, $routeParams, $location, $window) {
    //
    var GeoRegionID = $routeParams.id;
    var ReadError, ReadSuccess, params;

    // initialize view
    // initApplicationView($rootScope, $scope,'landingView storeList');
    // resetTopNav($rootScope);
    initApplicationView($rootScope, $scope,'detailView storeList');
    $rootScope.params.topnavTitle = "Store Locations";
    $rootScope.GeoRegionID = GeoRegionID;
    $rootScope.map_activity = 'inactive';
    $rootScope.list_activity = 'active';
    $rootScope.params.BackgroundImage = 'img/bkg640-store.jpg';
    $rootScope.store_key = false;
    console.log('georegionid = ' + GeoRegionID);
    $rootScope.$apply();

    if (GeoRegionID == "favs") {
        var sql = "SELECT * from Store S, User_StorePreference USP Where S.StoreID=USP.StoreID ";
        var servicesql = "SELECT Distinct SS.StoreID As StoreID, ST.ImagePathIconClass as IconClass, ST.Label As Label From ServiceType ST, StoreService SS Where ST.ServiceTypeID=SS.ServiceTypeID And SS.StoreID In (Select StoreID From User_StorePreference) Group By SS.StoreID, ST.Label ";
    } else {
        var sql = "SELECT * from Store S, GeoRegionStore GRS, GeoRegion GR Where GR.GeoRegionID = GRS.GeoRegionID And S.StoreID=GRS.StoreID And GRS.GeoRegionID=" + GeoRegionID;
        var servicesql = "SELECT Distinct SS.StoreID As StoreID, ST.ImagePathIconClass as IconClass, ST.Label As Label From GeoRegionStore GRS, ServiceType ST, StoreService SS Where GRS.StoreID = SS.StoreID And ST.ServiceTypeID=SS.ServiceTypeID And GRS.GeoRegionID=" + GeoRegionID + " Group By SS.StoreID, ST.Label ";
    }
    
    $scope.key = false;
    var store_id_lookup = {};
    var store_success = function (data) {
      params = data;
      console.log('the length of data is: ' + data.length);
      for (var i=0; i < data.length; i++) {
        store_id_lookup[data[i].StoreID] = i;
      }
      $rootScope.params.ViewTitle = data[0].Label;
      window.GA.trackView("Store Locations - " + $rootScope.params.ViewTitle);
      $rootScope.$apply();
    };
    var key_array = ['Name', 'StoreID', 'Address1', 'Address2', 'Phone', 'Label'];
    dbLookup(sql, key_array, store_success);
    
    var second_key_array = ['StoreID', 'IconClass'];
    var services_success = function(data) {
      for (var i=0; i < data.length; i++) {
        var arr_location = store_id_lookup[data[i].StoreID];
        if (typeof(params[arr_location]['icons']) === 'undefined')
          params[arr_location]['icons'] = [];
        params[arr_location]['icons'].push(data[i].IconClass);
      }
      $scope.items = params;
      $scope.$apply();
    };
    dbLookup(servicesql, second_key_array, services_success);

    var key_params = {};

    var sql = "SELECT * From ServiceType Order By DataGroup, Label ASC";
    var lookup_keys = ['DataGroup', 'Label', 'ImagePathIconClass'];
    var success = function (data) {
      for (var i=0; i < data.length; i++) {
        var group = data[i].DataGroup.toLowerCase();
        if (typeof(key_params[group]) === "undefined")
          key_params[group] = [];
        key_params[group].push({
          name: data[i].Label,
          class: data[i].ImagePathIconClass
        });
      }
      $rootScope.keys = key_params;
      $rootScope.$apply();
    }
    dbLookup(sql, lookup_keys, success);

    $rootScope.hideKey = function () {
      $rootScope.store_key = false;
    }
}

/////////////////////////////////////////////////////////////////////////////

function StoreKeyCtrl($rootScope, $scope, $routeParams, $location, $window) {
    initApplicationView($rootScope, $scope,'detailView storeKey');
    var GeoRegionID = $routeParams.id;
    
    $rootScope.params.topnavTitle = "Icons Legend";
    $rootScope.$apply();

    var storeKeyHTML = '', params = {};

    var sql = "SELECT * From ServiceType Order By DataGroup, Label ASC";
    var lookup_keys = ['DataGroup', 'Label', 'ImagePathIconClass'];
    var success = function (data) {
      for (var i=0; i < data.length; i++) {
        var group = data[i].DataGroup.toLowerCase();
        if (typeof(params[group]) === "undefined")
          params[group] = [];
        params[group].push({
          name: data[i].Label,
          class: data[i].ImagePathIconClass
        });
      }
      $scope.keys = params;
      $scope.$apply();
    }
    dbLookup(sql, lookup_keys, success);
}

 
/////////////////////////////////////////////////////////////////////////////

function StoreViewCtrl($rootScope, $scope, $routeParams, $location, $window) {
  
  var db, ReadSuccess, ReadError;  
  var storeViewHTML, params;

  // get routing parameters
  var StoreID = $routeParams.id;

  console.log('on store view id is: ' + StoreID);

  // initialize view
  resetTopNav($rootScope);
  initApplicationView($rootScope, $scope,'detailView store');
  $rootScope.params.BackgroundImage = 'img/bkg640-store.jpg';
  $rootScope.$apply();


  
  // apply data to the view
  ReadSuccess = function() {
    $scope.params = params;
    $scope.$apply();
    $rootScope.params.topnavTitle = $scope.store_info.Name;
    window.GA.trackView("Store Location Detail - " + $scope.store_info.Name);
    $rootScope.storeDetailParams = {
      id: params.StoreID,
      title: params.StoreName,
      lat: params.Latitude,
      lng: params.Longitude
    };
    $rootScope.$apply();
  };
    
  // handle data read error
  ReadError = function() {

  };

  // view functions
  $scope.AddToFavs = function (ID) {
        var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
        db.transaction(
           function(tx) {
           tx.executeSql('SELECT UserID FROM User', [],
                         function(tx, results) {
                         var UserID = results.rows.item(0).UserID;
                         var StoreID = ID;
                         var d = new Date();
                         tx.executeSql('INSERT OR IGNORE INTO User_StorePreference (UserID,StoreID,CREATED) VALUES (?,?,?)',[UserID,StoreID,d.getTime()]);
                         //alert(UserID + ":" + ProductID + " added the products to your shopping list");
             $window.location.href="index.html#/store-list/favs/";
                         }
                         ,errorCB);
           }
        );
  };

  // read data
  db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);

  storeViewHTML = '', params = {};

  // utility for organizing hours information
  function createHoursObject(openTime, closeTime, startDayID, endDayID) {
    return {
      start: PrettyDay(startDayID) || 'Daily',
      end: PrettyDay(endDayID) || "",
      openTime: PrettyTime(openTime),
      closeTime: PrettyTime(closeTime)
    }
  }


  // get store information
  var sql = "Select * from Store S where S.StoreID=" + StoreID;
  var lookup_keys = ['StoreID', 'Name', 'Latitude', 'Longitude', 'Address1',
                     'Address2', 'City', 'State', 'PostalCode', 'Phone',
                     'Description', 'ImagePathStoreLayout'];
  var lookup_success = function (data) {
    if (data.length == 1)
      $scope.store_info = data[0];
      $scope.store_info.ImagePathStoreLayout = app.getImgPath( $scope.store_info.ImagePathStoreLayout );
      $scope.$apply();

  };
  dbLookup(sql, lookup_keys, lookup_success);

  // $scope.store_info.store_hours = [];
  // get store hour information
  var store_hrs_sql = "SELECT * From StoreHours SH Where ServiceTypeID=0 And StoreID=" + StoreID;
  var store_hrs_lookup_keys = ['DayID', 'OpenTime', 'CloseTime'];
  var store_hrs_CB = function (data) {
      // same store hours everyday
      var tmp = []
      
    if (data.length == 1) {
      tmp.push(
        createHoursObject(data[0].OpenTime, data[0].CloseTime)
      );
    } else {
      var prev_time, cur_time;
      for (var i=0; i < data.length; i++) {
        cur_time = data[i].OpenTime;
        if (i == 0)
          start_day = data[i].DayID;
        
        if (prev_time != cur_time && i != 0) {
          tmp.push(
            createHoursObject(data[i-1].OpenTime, data[i-1].CloseTime,
                              start_day, data[i-1].DayID)
          );
          start_day = data[i].DayID;
        } else if (i == data.length - 1) {
          tmp.push(
            createHoursObject(data[i].OpenTime, data[i].CloseTime,
                              start_day, data[i].DayID)
          );  
        }
        prev_time = cur_time;
      }
    }
    if (typeof($scope.store_info.store_hours) === 'undefined' && typeof(data[0].Label) !== 'undefined') {
        $scope.store_info.store_hours = {};
        $scope.store_info.store_hours[data[0].Label] = tmp;
    } else
        $scope.store_info.store = tmp;
    $scope.$apply();
  };
  dbLookup(store_hrs_sql, store_hrs_lookup_keys, store_hrs_CB);
  
  //get service icons
  var service_sql = "SELECT Distinct SS.StoreID as StoreID, ST.ImagePathIconClass as IconClass, ST.Label As Label From ServiceType ST, StoreService SS Where ST.ServiceTypeID=SS.ServiceTypeID And SS.StoreID=" + StoreID;
  dbLookup(service_sql, ['IconClass'], function (data) {
    $scope.store_info.store_services = data;
    $scope.$apply();
  });

  var service_hrs_sql = "SELECT * From ServiceType ST, StoreHours SH Where ST.ServiceTypeID=SH.ServiceTypeID And SH.StoreID=" + StoreID + " Order By Label, DayID ";
  var service_hrs_keys = ['Label', 'DayID', 'OpenTime', 'CloseTime'];
  dbLookup(service_hrs_sql, service_hrs_keys, store_hrs_CB);
  
  db.transaction(function(tx) {
                   
         tx.executeSql("SELECT * From Store S, BestTimeToShop BS, StoreBestTimeToShop ST Where S.StoreID = ST.StoreID And BS.BestTimeToShopID=ST.BestTimeToShopID And S.StoreID=" + StoreID, [], function(tx, serviceresults) {
             if (serviceresults.rows.length > 0) {
               params.BestTitle = serviceresults.rows.item(0).Title;
               params.BestDescription = serviceresults.rows.item(0).Description;
               params.BestOverview = serviceresults.rows.item(0).Overview;
               params.BestOverview = params.BestOverview.replace(/<p>\s*<\/p>/g, '');
               params.BestOverview = params.BestOverview.replace(/<p>&nbsp;<\/p>/g, '');
             } else {
               $('li#besttime').remove();
             }
         }
         ,errorCB);

    }, ReadError, ReadSuccess);
}
//
//
///////////////////////////////////////////////////////////////////////////////////

function StoreViewOnMapCtrl ($rootScope, $scope, $routeParams, $location, $window) {
  initApplicationView($rootScope, $scope, 'detailView store-map-view');
  var StoreID = $routeParams.id;
  $rootScope.$apply();
  window.GA.trackView('Store View on Map');
  var sql = "Select * from Store S where S.StoreID=" + StoreID;
  var key_array = ['Latitude', 'Longitude', 'Name', 'StoreID'];
  var onSuccess = function (data) {
    if (data.length == 1) {
      $rootScope.params.topnavTitle = data[0].Name;
      window.GA.trackView("Store Locations - " + $rootScope.params.topnavTitle);
      $rootScope.$apply();
      drawMap(data, 'map-canvas', 'store-view/');
    }
  }
  dbLookup(sql, key_array, onSuccess);
}

function StoreHoursCtrl($rootScope, $scope, $routeParams, $location, $window) {
    initApplicationView($rootScope, $scope,'detailView');
    var StoreID = $routeParams.id;
    window.GA.trackView('Store Hours');
    var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);

    var storeViewHTML = '', params = {};
    db.transaction(function(tx) {
        tx.executeSql("Select * from Store S where S.StoreID=" + StoreID, [], function(tx, results) {
             var len = results.rows.length;
             storeViewHTML = '<div>';
             for (var i=0; i < len; i++) {
                 params.StoreID = results.rows.item(i).StoreID;
                 params.StoreName = results.rows.item(i).Name;
                 params.Address = results.rows.item(i).Address1 +
                                      (results.rows.item(i).Address2 != "" ? ", " + results.rows.item(i).Address2 : "") + '<br/>' +
                      results.rows.item(i).City + ', ' + results.rows.item(i).State + ' ' + results.rows.item(i).PostalCode;
                 params.Phone = results.rows.item(i).Phone;
                 params.DialPhone = results.rows.item(i).Phone.replace("(","").replace(")","").replace(" ","").replace("-","");
                 params.Description = results.rows.item(i).Description;

             }
             $scope.params = params;
             $scope.$apply();
         }
         ,errorCB);
                   
         tx.executeSql("SELECT * From StoreHours SH Where ServiceTypeID=0 And StoreID=" + StoreID, [], function(tx, serviceresults) {
             var servicelen = serviceresults.rows.length;
             var localstorehours = "", servicestorehours ="",curid = "", prvid = "";
             for (var j=0; j < servicelen; j++) {
               localstorehours += "Daily : " + PrettyTime(serviceresults.rows.item(j).OpenTime) + " to " + PrettyTime(serviceresults.rows.item(j).CloseTime);
             }
             
             params.StoreHours = "<b>Store Hours</b><p><br/></p>" + localstorehours;
             $scope.params = params;
             $scope.$apply();
         }
         ,errorCB);
        
         tx.executeSql("SELECT * From BestTimeToShop BS, StoreBestTimeToShop ST Where BS.BestTimeToShopID=ST.BestTimeToShopID And StoreID=" + StoreID, [], function(tx, serviceresults) {
             var BestTimeToShop = "";
             if (serviceresults.rows.length > 0) {
               BestTimeToShop = '<p><br/></p><a href="index.html#/store-besttimetoshop/' + StoreID + '/">Best Times to Shop</a><p></p>';
             }
             params.BestTimeToShop = BestTimeToShop;
             $scope.params = params;
             $scope.$apply();
         }
         ,errorCB);
         
         
         tx.executeSql("SELECT * From ServiceType ST, StoreHours SH Where ST.ServiceTypeID=SH.ServiceTypeID And SH.StoreID=" + StoreID + " Order By Label, DayID ", [], function(tx, serviceresults) {
             var servicelen = serviceresults.rows.length;
             var servicestorehours = "", curid = "", prvid = "", curdayid="", prvdayid="", curopentime="", prvopentime="";
             for (var j=0; j < servicelen; j++) {
               curid = serviceresults.rows.item(j).Label.toLowerCase();
               curdayid =  serviceresults.rows.item(j).DayID;
               curopentime =  serviceresults.rows.item(j).OpenTime;
                       
               //Make sure the curdate and next date are similar
               if (curid != prvid) {
                   servicestorehours += "<p><br/></p><b>" + serviceresults.rows.item(j).Label + "</b><p><br/></p>";
               }
               if (curdayid == 0) {
                   servicestorehours += "Daily : " + PrettyTime(serviceresults.rows.item(j).OpenTime) + " to " + PrettyTime(serviceresults.rows.item(j).CloseTime) + "<br/>"
               } else {
                   if (prvopentime != curopentime) {
                       if (prvopentime != "")
                           servicestorehours = servicestorehours.replace("{{EndDay}}"," - " + PrettyDay(prvdayid));
                        servicestorehours += PrettyDay(curdayid) + " {{EndDay}} : " + PrettyTime(serviceresults.rows.item(j).OpenTime) + " to " + PrettyTime(serviceresults.rows.item(j).CloseTime) + "<br/>";
                   }
                   
                   prvopentime = curopentime;
                   prvdayid = curdayid;
                }
              
                prvid = curid;
             }
             if (prvopentime != "")
             servicestorehours = servicestorehours.replace("{{EndDay}}"," - " + PrettyDay(prvdayid));
             
             params.ServiceHours = servicestorehours;
             $scope.params = params;
             $scope.$apply();
         }
         ,errorCB);
    });
}
//
//
//
function StoreBestTimeToShopCtrl($rootScope, $scope, $routeParams, $location, $window) {
    initApplicationView($rootScope, $scope,'detailView');
    var StoreID = $routeParams.id;   
    var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
    window.GA.trackView('Store Best Time To Shop');
 
    var storeKeyHTML = '', params = {};
    db.transaction(function(tx) {
         tx.executeSql("SELECT * From Store S, BestTimeToShop BS, StoreBestTimeToShop ST Where S.StoreID = ST.StoreID And BS.BestTimeToShopID=ST.BestTimeToShopID And S.StoreID=" + StoreID, [], function(tx, serviceresults) {
             if (serviceresults.rows.length > 0) {
               params.Title = serviceresults.rows.item(0).Title;
               params.Description = serviceresults.rows.item(0).Description;
               params.Overview = serviceresults.rows.item(0).Overview;
               params.StoreName = serviceresults.rows.item(0).Name;
             }
             $scope.params = params;
             $scope.$apply();
         }
         ,errorCB);
    });
}
//
//
//
function StoreLayoutCtrl($rootScope, $scope, $routeParams, $location, $window) {
    initApplicationView($rootScope, $scope,'detailView');
    var StoreID = $routeParams.id;
    window.GA.trackView('Store Layout');

    var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
 
    var storeKeyHTML = '', params = {};
    db.transaction(function(tx) {
         tx.executeSql("SELECT * From Store Where StoreID=" + StoreID, [], function(tx, serviceresults) {
             if (serviceresults.rows.length > 0) {
               params.ImagePathStoreLayout = serviceresults.rows.item(0).ImagePathStoreLayout;
               params.StoreName = serviceresults.rows.item(0).Name;
               params.StoreID = serviceresults.rows.item(0).StoreID;
             }
             $scope.params = params;
             $scope.$apply();
         }
         ,errorCB);
    });
}
//
//
//
function StoreServiceViewCtrl($rootScope, $scope, $routeParams, $location, $window) {
    initApplicationView($rootScope, $scope,'detailView');
    var StoreID = $routeParams.id;
    var ServiceTypeID = $routeParams.servicetypeid;
    window.GA.trackView('Store Service Detail');
    var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);

    var storeViewHTML = '', params = {};
    db.transaction(function(tx) {
        tx.executeSql("Select * from Store S where S.StoreID=" + StoreID, [], function(tx, results) {
             var len = results.rows.length;
             storeViewHTML = '<div>';
             if (results.rows.length > 0) {
                 params.StoreID = results.rows.item(0).StoreID;
                 params.StoreName = results.rows.item(0).Name;
             }
             $scope.params = params;
             $scope.$apply();
         }
         ,errorCB);
                   
         tx.executeSql("SELECT * From ServiceType ST, StoreHours SH, StoreService SS Where SS.ServiceTypeID = ST.ServiceTypeID And SS.StoreID = SH.StoreID And ST.ServiceTypeID=SH.ServiceTypeID And SH.StoreID=" + StoreID + " And ST.ServiceTypeID=" + ServiceTypeID + " Order By Label, DayID ", [], function(tx, serviceresults) {
             var servicelen = serviceresults.rows.length;
             var servicestorehours = "", curid = "", prvid = "", curdayid="", prvdayid="", curopentime="", prvopentime="";
                       
             servicestorehours += "<b>Hours</b><br/>"
             for (var j=0; j < servicelen; j++) {
               curid = serviceresults.rows.item(j).Label.toLowerCase();
               curdayid =  serviceresults.rows.item(j).DayID;
               curopentime =  serviceresults.rows.item(j).OpenTime;
               params.Description = serviceresults.rows.item(j).Description;
               params.ImagePathLarge = serviceresults.rows.item(j).ImagePathLarge;
               params.ServiceName = serviceresults.rows.item(j).Label;
                       
               //Make sure the curdate and next date are similar
               if (curdayid == 0) {
                   servicestorehours += "Daily : " + PrettyTime(serviceresults.rows.item(j).OpenTime) + " to " + PrettyTime(serviceresults.rows.item(j).CloseTime) + "<br/>"
               } else {
                   if (prvopentime != curopentime) {
                       if (prvopentime != "")
                           servicestorehours = servicestorehours.replace("{{EndDay}}"," - " + PrettyDay(prvdayid));
                        servicestorehours += PrettyDay(curdayid) + " {{EndDay}} : " + PrettyTime(serviceresults.rows.item(j).OpenTime) + " to " + PrettyTime(serviceresults.rows.item(j).CloseTime) + "<br/>";
                   }
                   
                   prvopentime = curopentime;
                   prvdayid = curdayid;
                }
              
                prvid = curid;
             }
             if (prvopentime != "")
             servicestorehours = servicestorehours.replace("{{EndDay}}"," - " + PrettyDay(prvdayid));
             
             params.ServiceHours = servicestorehours;
             $scope.params = params;
             $scope.$apply();
         }
         ,errorCB);
    });
}

function TestViewCtlr ($rootScope, $scope, $routeParams, $location, $window) {
  var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
  resetTopNav($rootScope);
  initApplicationView($rootScope, $scope,'landingView test');
  $rootScope.params.ViewTitle = 'Store Locations';
  $rootScope.params.BackgroundImage = 'img/bkg640-about.jpg';
  $rootScope.$apply();
  $scope.filterState = 'hideFilter';
  $scope.params = {};
  $scope.params.otherLocations = [];
  
  db.transaction(function(tx) {
      tx.executeSql("SELECT Label,GeoRegionID,IconClass, (Select Count(*) From GeoRegionStore Where GeoRegionID=GR.GeoRegionID) As Count FROM GeoRegion GR  ", [], function(tx, results) {
         var len = results.rows.length;
         //var geoHTML = '<div>';
        for (var i=0; i < len; i++) {
          $scope.params.otherLocations.push({
            class: results.rows.item(i).IconClass,
            id: results.rows.item(i).GeoRegionID,
            label: results.rows.item(i).Label,
            count: results.rows.item(i).Count
          });
        }
       }
       ,errorCB);
  });
}

function PrettyTime(timestr) {
    var timer = timestr.split(":");
    var hour = parseInt(timer[0]);
    return (hour > 12 ? (hour-12):hour) + ":" + timer[1] + " " + (hour > 12 ? "PM":"AM");
}
function PrettyDay(dayid) {
    switch(parseInt(dayid)) {
        case 1: return "Mon";break;
        case 2: return "Tue";break;
        case 3: return "Wed";break;
        case 4: return "Thu";break;
        case 5: return "Fri";break;
        case 6: return "Sat";break;
        case 7: return "Sun";break;
    }
}
function onError(error) {
    alert('code: '    + error.code    + '\n' +
          'message: ' + error.message + '\n');
}