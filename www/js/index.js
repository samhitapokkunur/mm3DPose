/*
* Licensed to the Apache Software Foundation (ASF) under one
* or more contributor license agreements.  See the NOTICE file
* distributed with this work for additional information
* regarding copyright ownership.  The ASF licenses this file
* to you under the Apache License, Version 2.0 (the
* "License"); you may not use this file except in compliance
* with the License.  You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing,
* software distributed under the License is distributed on an
* "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
* KIND, either express or implied.  See the License for the
* specific language governing permissions and limitations
* under the License.
*/
var app = {
    // global properties
    props: {
        state: 'closed',
        appname: "Fairway.app",
        servername: "mobile.fairwaymarket.com", // production CMS server
        devserver: "mobile.fairwaymarket.com",  // cms server to use when running in simulator 
        FW_API_server: "m.fairwaymarket.com",    // server for the user account API at Fairway
        apikey: "ec027e0a707439dcdfbc71ee7a8c05b9",  // api key for pimcore REST api
        gacaccount : "UA-43929026-1",
        os_version : null,
        db_version: 2,
        imageLookup : new Array()  // used to store the full path to the image files, based on the relative path from the AssetFile db, and whether the file is downloaded, or built-in.  Index by asset id.
    },
    // Application Constructor
    initialize: function() {
        this.bindEvents();
        console.log("Initialize app");
    },

    // Bind any events that are required on startup. Common events are:
    // 'load', 'deviceready', 'offline', and 'online'.
    bindEvents: function() {
        window.addEventListener('load', this.onLoad, false);

        window.addEventListener("orientationchange", this.orientationChange, true);
        document.addEventListener("online", this.onOnline, false);
        document.addEventListener("offline", this.onOffline, false);
        document.addEventListener("resume", this.onResume, false);
        document.addEventListener('deviceready', this.onDeviceReady, false);
    },
    onLoad: function() {
        console.log("in OnLoad!");
    },

    onOnline: function() {
        console.log("Device is online!");
        app.props.isOnline = true;
        $('#NotConnected').hide();
        app.checkWhetherToDoDataLoad();

    },
    onOffline: function() {
        console.log("Device is OFFline!");
        app.props.isOnline = false;

        // NOTE: THIS MIGHT CAUSE AN ERROR IF THIS STATE IS TRIGGERED WHILE APP IS OPENING FOR THE FIRST TIME.  WHY?

        // need to get last update time, and put in NotConnected div, and then display it.
        var f = function(t) {
            console.log("Got timestamp = "+t);
            //app.props.LastUpdate = t;   
            $('#NotConnected .last_updated').html("Last Updated:&nbsp;&nbsp;"+t);   //.append(t); //text("Last Updated:&nbsp;&nbsp;"+t);
            $('#NotConnected').show();
        };
        if (LastUpdate_Table!== undefined) {
            console.log("get timestamp from LastUpdate_Table");
            LastUpdate_Table.GetTimestamp(f, true);
         } 

         // also need to check if in middle of doing data load -- and figure out how to pause or back out of that process...


    },
    orientationChange: function() {

    },
    // deviceready Event Handler
    onDeviceReady: function() {
        console.log("in OnDeviceReady!");
        window.GA.trackerWithTrackingId("UA-43929026-1");
        window.GA.trackView("App Loading");
        //var myAnalyticsAccount = "UA-43929026-1";
        //gaPlugin = window.plugins.gaPlugin;
        //gaPlugin.init(function() {}, errorHandler, myAnalyticsAccount, 10);
        //gaPlugin.trackPage(function() {}, errorHandler, "/index.html");
        
        navigator.splashscreen.show();
        app.props.DeviceReady = true;
   
        // These are pretty useless
   console.log("device.platform = "+device.platform);
   console.log("device.cordova = "+device.cordova);
   console.log("device.version = "+device.version);
   console.log("device.model = "+device.model);

   app.props.os_version = device.version;


        console.log("// find out where downloaded files are stored");

            console.log("Ask for filesystem to find downloadAssetPath");
            window.requestFileSystem(LocalFileSystem.PERSISTENT, 0,
                function onFileSystemSuccess(fileSystem) {
                            console.log(fileSystem.name);
                            console.log(fileSystem.root.name);
                            console.log(fileSystem.root.fullPath);  // THIS GIVES US FULL PATH TO THE Documents DIRECTORY
                            fileSystem.root.getFile(
                                        "dummy.html", {create: true, exclusive: false},
                                        function gotFileEntry(fileEntry){
                                            var sPath = fileEntry.fullPath.replace("dummy.html",app.props.appname + "/www/assets");
                                            console.log("Got sPath = "+sPath);
                                            app.props.downloadAssetPath = sPath;
                                            // now store in localstorage for later use  (DEPRECATED: this breaks when the app is updated -- because the App ID in the file path changes)
                                            window.localStorage.setItem("downloadAssetPath", sPath);

                                            if (sPath.indexOf("Simulator")>-1) {
                                                console.log("In Simulator, setting server name to: "+app.props.devserver);
                                                app.props.servername = app.props.devserver;
                                            }
                                        },
                                        function() {
                                            console.log("FAILED TO GET FILE");
                                        }
                            );
                },
                function failure() {
                    console.log("COULD NOT GET FILESYSTEM");
                }
            );


        console.log("// find out where built-in files are stored");
        app.props.builtinAssetPath = window.location.pathname.replace("index.html","")+"assets/";

        console.log("//  Initialize local db tables that are not loaded from server");
        DataAccess.CreateLocalTables();    

        console.log("// if this is the first time App is run, need to initialize db with local assets");
        app.initDbIfFirstRun();

        // bind affordances for add to favorites and add to shopping list
        app.bindAffordances();

    },
    onResume: function() {      // this is run when app resumes from background
                console.log("in onResume! page is "+window.location.href);

                app.checkWhetherToDoDataLoad();

    },
    updateUser:function(id, $scope) {
        var userData = "";
        var db = fwDatabase.open();
        db.transaction(function(tx) {
            //Get the user Details
            tx.executeSql('select * from User', [],
                 function(tx, results) {
                    console.log("updateUser got User record: "+JSON.stringify(results.rows.item(0)));
                     var FW_CustomerID = results.rows.item(0).FW_CustomerID;
                     userData = '{"user":{"id":' + (results.rows.item(0).FW_CustomerID != '' ? results.rows.item(0).FW_CustomerID:null) + ',"firstName":"' + results.rows.item(0).FirstName + '", "lastName":"' + results.rows.item(0).LastName + '","email":"' + results.rows.item(0).EmailAddress + '","phone":"' + results.rows.item(0).Phone + '", "postalCode":"' + results.rows.item(0).PostalCode + '","departmentPreferences": []';
                     console.log("user data for user id "+results.rows.item(0).UserID +" = "+ userData);
                     tx.executeSql('select DP.Name from DietPreference DP, User_DietPreference UDP Where DP.DietPreferenceID = UDP.DietPreferenceID', [],
                     function(tx, results) {
                          userData += ', "foodPreferences":[';
                          var len = results.rows.length;
                           
                          for (var i=0; i < len; i++) {
                             if (i > 0) userData += ",";
                             userData += '{"name":"' + results.rows.item(i).Name + '"}';
                          }
                          userData += '], "device": { "name": "' + device.name + '", "platform": "' + device.platform + '", "version": "' + device.version + '" } }}';
                          
                          //Send the request to fairway.
                          //Get the fairway Barcode via API
                                   console.log(userData);
                          $.ajax({
                            url:'https://'+app.props.FW_API_server+'/GWService/GWService.svc/PostData/Process',
                            data: userData,
                            method: "POST",
                            success: function(jsondata) {
                                    var jsonobj = eval("(" + jsondata + ")");
                                    console.log("AJAX Success.  User data response = "+JSON.stringify(jsondata));
                                    console.log("Sateesh1");
                                    var UserID = jsonobj.result.user.id;
                                    var BarCodeImagePath = jsonobj.result.user.rewardBarcodeImageURL;
                                    console.log("updateUser json success, got user id & barcode image path -- "+ UserID + ":" + BarCodeImagePath);
                                    $scope.db_data[id] = $scope.inputs[id].value;
                                    $scope.$apply();
                                    if (BarCodeImagePath != "") {
                                        //Download the image from the url given and save the path
                                        window.requestFileSystem(LocalFileSystem.PERSISTENT, 0,
                                              function onFileSystemSuccess(fileSystem) {
                                                    fileSystem.root.getFile(
                                                    "dummy.html", {create: true, exclusive: false},
                                                    function gotFileEntry(fileEntry){                    
                                                       var sPath = fileEntry.fullPath.replace("dummy.html",app.props.appname + "/www/assets");
                                                       var webFilename = BarCodeImagePath.substr(BarCodeImagePath.lastIndexOf("/"));            
                                                       var ImagePath = sPath + webFilename;
                                                       console.log("downloading barcode to image path:" + ImagePath);                 
                                                       var fileTransfer = new FileTransfer();
                                                       fileEntry.remove();
                                                       fileTransfer.download(
                                                          BarCodeImagePath,
                                                          ImagePath,
                                                          function(theFile) {   // success
                                                              db.transaction(
                                                                    function(tx) {
                                                                        // CREATE USER TABLE
                                                                        tx.executeSql('Update User Set FW_CustomerID=?, ImagePathBarCode=?',[UserID,webFilename]);  // don't store full path - only the filename
                                                                    },
                                                                    dbErrorHandler
                                                                    //successCB(tx)
                                                               );
                                                          },
                                                          function(error) {
                                                             
                                                          }
                                                        );
                                                       
                                                    },
                                                    function() {
                                                    console.log("FAILED TO GET FILE");
                                                    });
                                             },
                                             function failure() {
                                             console.log("COULD NOT GET FILESYSTEM");
                                             }
                                         );
                                    }
                               },
                              error: function (error) {
                                // console.log('textStatus is: ' + textStatus);
                                console.log('AJAX ERROR.  ga is: ' + typeof(GA));
                                console.log('statusText: ' + error.statusText);
                                console.log('status is: ' + error.status);
                                window.GA.trackView('API Error: status - ' + error.status + ' statusText - ' + error.statusText);
                                $scope.inputs[id].value = $scope.db_data[id];
                                console.log('db_data is: ' + $scope.db_data[id]);
                                if (id === 'PostalCode') {
                                  $scope.inputs[id].displayVal = $scope.makeZipCodeNice($scope.inputs[id].value);
                                }
                                sql = "Update User Set " + id + "='" + $scope.inputs[id].value + "' Where UserID ='" + $scope.db_id + "'";
                                var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
                                $scope.$apply();
                                db.transaction(function(tx) {
                                  tx.executeSql(sql, [], function() {
                                    navigator.notification.alert(
                                      'There was an error, please try again later',
                                      function () {},
                                      'Submission Error',
                                      'OK'
                                      );
                                  });
                                });
                              }
                            });
                          
                      },errorCB);
                          
                 },
             errorCB);
        });
        console.log("sateesh");
        

    },
    bindAffordances: function() {

        var aff_fav = $('#aff_favorites').bind('touchend', function () {
            //
            var passed_param;
            //
            if ($('body').hasClass('product')){
                passed_param = angular.element('section').scope().params.ProductID
            }
            if ($('body').hasClass('recipe')){
                passed_param = angular.element('section').scope().params.RecipeID
            }
            //
            app.favoritesSelected(angular.element('section').scope(), passed_param);
        });

        var aff_shp = $('#aff_shopping').bind('touchend', function () {
            //
            var passed_param;
            //
            if ($('body').hasClass('product')){
                passed_param = angular.element('section').scope().params.ProductID
            }
            if ($('body').hasClass('recipe')){
                passed_param = angular.element('section').scope().params.RecipeID
            }
            //
            app.shoppinglistSelected(angular.element('section').scope(), passed_param);
        });
    },
    removeSplashAndReloadHomeScreen: function() {
        console.log("called back to removeSplashAndReloadHomeScreen");
        location.href="index.html#/home-reload";

        navigator.splashscreen.hide();

    },
    removeSplashScreen: function() {
        console.log("called back to removeSplashScreen");
        if ($("body").hasClass("Home")) {
            //location.href.indexOf("/home")>0) {
            console.log("on home screen: reload it");
            location.href="index.html#/home-reload";
        }

        navigator.splashscreen.hide();


    },
    checkWhetherToDoDataLoad: function() {
        // all data is presently loaded when app first loads.  Will need to do the following test for downloading new data, when ready to do that.
         console.log("Should we try loading data?");
         if (app.props.DeviceReady && !app.props.nowInitializingDb) {  // don't call this if onDeviceReady hasn't been called, or if already initializingDb.  Will prevent two load processes running at once.
             console.log("Yes, try loading data because device is ready and no one else is trying to do it");
             app.initDbIfFirstRun(); // if didn't load first time, try again, and if it did, check whether it is time to incrementally load
         } else {
             console.log("No, don't try loading data because device is not ready or someone else is initializing db");
         }
    },
    initDbIfFirstRun: function(successCB) {   
        console.log("In initDbIfFirstRun");
                // debugging
        console.log("got assetpaths:");
        console.log("   download = "+app.props.downloadAssetPath);
        console.log("   built-in = "+app.props.builtinAssetPath);

        console.log("fwDatabase = "+fwDatabase);

        db = fwDatabase.open();
        console.log("db = "+db);

        db.transaction(
            function(tx) { 
                console.log("//Check if the app is loading the first time");
                tx.executeSql('SELECT * FROM Product limit 1', [], 
                    function(tx, results) {  // success
                        console.log("got some kind of results");
                        var count = results.rows.length;
                            if (count > 0) {
                              console.log("not the first time! data should be loaded");
                              // next: check if db schema is up-to-date
                              // if not, update it
                              // then, check for lastDownloadTime, and do incremental update if needed
                              checkDbVersion(app.props.dbVersion, checkIntervalToGetNewData);
                              //app.removeSplashAndFinishAppInit();
                            } else {
                              console.log("look for products: none found");
                              initDbFromSqlDump();
                            }

                    },    
                    function(tx,err) {  // error CB
                        console.log("Data Not Loaded: db error '"+err.message+"'");
                        initDbFromSqlDump();
                    }  
                );
            },
                dbErrorHandler,
                successCB
        );
    },
    toggleNav: function() {
        if(app.props.state === 'closed'){
            app.openNav();
        } else {
            app.closeNav();
        }
    },

    closeNav: function () {
        var topnav = $('#top_nav_bar');
        var bg_image = $('#bg_image');
        var content = $('#view_content');
        var footer = $('#foot_nav');
        var global = $('#global_nav');

        function navCloseComplete () {
            global.css({'display': 'none'});
            app.props.state = 'closed';
            $('.menuOpenSwiper').hide();
        }

        global.css({'display': 'block'});
        TweenMax.to(topnav, .3, {'left': '0%'});
        TweenMax.to(bg_image, .3, {'left': '0%'});
        TweenMax.to(content, .3, {'left': '0%'});
        TweenMax.to(footer, .3, {'left': '0%'});
        TweenMax.to(global, .3, {'margin-left': '-85%', onComplete:navCloseComplete});
    },

    openNav: function () {
        window.GA.trackView('Menu Clicked');
        var topnav = $('#top_nav_bar');
        var bg_image = $('#bg_image');
        var content = $('#view_content');
        var footer = $('#foot_nav');
        var global = $('#global_nav');

        function navOpenComplete () {
            app.props.state = 'open';
            $('.menuOpenSwiper').show();
        }

        global.css({'display': 'block'});
        TweenMax.to(topnav, .3, {'left': '85%'});
        TweenMax.to(bg_image, .3, {'left': '85%'});
        TweenMax.to(content, .3, {'left': '85%'});
        TweenMax.to(footer, .3, {'left': '85%'});
        TweenMax.to(global, .3, {'margin-left': '0%', onComplete:navOpenComplete});
    },

    favoritesSelected: function (angularapp, prodid) {
        console.log(prodid);
        angularapp.AddToFavorite(prodid)
    },

    shoppinglistSelected: function (angularapp, prodid) {
        console.log(prodid);
        angularapp.AddToShoppingList(prodid)
    },

    getImgPath: function (assetId) {
        // console.log("===============  getImgPath for assetId "+assetId+" = "+app.props.imageLookup[assetId]);
        return app.props.imageLookup[assetId];
    }
};

