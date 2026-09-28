/*
copied from dataLoad.js 10/11/13
For download of only data that has been modified since last update time
*/

var apikey = app.props.apikey; 
var appname = app.props.appname;
var db, UserID;
var lastUpdateTime;
var servername;
var startTime=0;
var ImageDic = new Array();  // deprecated
var ImageLookup = new Array();  // deprecated (now in app.props)
var updateInterval = 28800000;  // in milliseconds.  1800000 = 30 minutes; 300000 = 5 minutes, 43200000 = 12 hours, 28800000 = 8 hours

console.log ("loading dataLoadDelta.js");

var checkDbVersion = function(cur_vers, deltaload_cb) {
  // check which version of the db is being used
  db.transaction(
      function(tx) {
        
        
                 
                 
        tx.executeSql('select value from metadata where name = ?', ['db_version'],
          function(tx, results) {  // success
                console.log("got db_version metadata");
                var count = results.rows.length;
                if (count > 0) {
                    console.log("Got db_version value= "+results.rows.item(0).value);
                    if (results.rows.item(0).value < cur_vers) {
                      // need to run db update scripts
                      updateDb();
                    } else {
                      deltaload_cb();
                    }
                } else {
                  console.log("// no result from Metadata, need to run db update script");
                  updateDb();
                } 
          },
          function(tx,err) {  // error CB
                console.log("Couldn't get db_version metadata: db error '"+err.message+"'");
                updateDb();
          }  
        );
      },
      dbErrorHandler,
      successCB
  );

};

var updateDb = function(tx) {
  console.log("Need to re=initialize db in case there are schema changes, and for new packaged content");
  dropAllNonUserTables(tx);
};


var dropAllNonUserTables = function(tx) {
console.log("Dropping all tables that aren't user preference tables so we can reload the db");
  db.transaction(
      function(tx) {
        tx.executeSql('DROP TABLE IF EXISTS DietPreference');
                
                tx.executeSql('DROP TABLE IF EXISTS ProductDietPreference');
                tx.executeSql('DROP TABLE IF EXISTS RecipeDietPreference');
                
                
                tx.executeSql('DROP TABLE IF EXISTS TagType');
                
                tx.executeSql('DROP TABLE IF EXISTS Product');
                tx.executeSql('DROP TABLE IF EXISTS ProductAttributeValue');
                tx.executeSql('DROP TABLE IF EXISTS ProductDepartment');
                tx.executeSql('DROP TABLE IF EXISTS ProductTag');
                tx.executeSql('DROP TABLE IF EXISTS RecipeTag');
                tx.executeSql('DROP TABLE IF EXISTS Department');
                
                //Recipe
                tx.executeSql('DROP TABLE IF EXISTS Recipe');
                tx.executeSql('DROP TABLE IF EXISTS RecipeAttributeValue');
                tx.executeSql('DROP TABLE IF EXISTS RecipeIngredient');
                tx.executeSql('DROP TABLE IF EXISTS RecipeStep');
                
                //Rewards
                tx.executeSql('DROP TABLE IF EXISTS Reward');
                
                //User Filters
                tx.executeSql('DROP TABLE IF EXISTS User_Filters');
                
                //About And Legal
                tx.executeSql('DROP TABLE IF EXISTS AboutTheApp');
                tx.executeSql('DROP TABLE IF EXISTS Legal');

                tx.executeSql('DROP TABLE IF EXISTS Metadata');
                tx.executeSql('DROP TABLE IF EXISTS AssetFile');
                tx.executeSql('DROP TABLE IF EXISTS LastUpdate');


        tx.executeSql('DROP TABLE IF EXISTS GeoRegion');
        tx.executeSql('DROP TABLE IF EXISTS Store');
        tx.executeSql('DROP TABLE IF EXISTS GeoRegionStore');
        tx.executeSql('DROP TABLE IF EXISTS ServiceType');
        tx.executeSql('DROP TABLE IF EXISTS StoreService');
        tx.executeSql('DROP TABLE IF EXISTS StoreHours');
        tx.executeSql('DROP TABLE IF EXISTS BestTimeToShop');
        tx.executeSql('DROP TABLE IF EXISTS StoreBestTimeToShop');

                tx.executeSql('DROP TABLE IF EXISTS Curator');
                tx.executeSql('DROP TABLE IF EXISTS CuratorPost');
                tx.executeSql('DROP TABLE IF EXISTS CuratorPostDietPreference');
                tx.executeSql('DROP TABLE IF EXISTS CuratorPostJoin');


                tx.executeSql('DROP TABLE IF EXISTS StoreServiceLookup');

          },
          dbErrorHandler,
          initDbFromSqlDump  // on success, go ahead and re-initialize the whole db
    );
}



var checkIntervalToGetNewData = function() {


    console.log("In checkIntervalToGetNewData");
    // need to get last update time, and the retrieve all content updated since that time.
    var f = function(t) {
        console.log("Got timestamp = "+t);
        lastUpdateTime = Math.floor(t/1000);   // timestamp is in milliseconds   

        var nowms = new Date().getTime();
        var interval = nowms-t;
        console.log("Interval = "+interval);
        if (interval > updateInterval) {

          startTime = nowms;
          getNewImages(lastUpdateTime);   
        } else {
          console.log("Not time to update, so clean up.");
          populateImageDic(app.removeSplashScreen);
        }
    };
    if (LastUpdate_Table!== undefined) {
        console.log("get timestamp from LastUpdate_Table");
        LastUpdate_Table.GetTimestamp(f);
    } 
    // app.removeSplashAndFinishAppInit();

};

var getNewData = function(tx) {

  startTime = new Date().getTime();

    console.log("In getNewData");
    // need to get last update time, and the retrieve all content updated since that time.
    var f = function(t) {
        console.log("Got timestamp = "+t);
        lastUpdateTime = Math.floor(t/1000);   // timestamp is in milliseconds   
//            getNewImages(tx,lastUpdateTime-400000);   // for testing
        getNewImages(lastUpdateTime);   

    };
    if (LastUpdate_Table!== undefined) {
        console.log("get timestamp from LastUpdate_Table");
        LastUpdate_Table.GetTimestamp(f);
    } 

};

            function showLink(localurl){
                console.log(localurl);
            };

            function fail(evt) {
                console.log(evt.target.error.code);
            };

            var fail = function() {
                alert("error getting dir")
            };



var getNewImages = function(last_update) {

    console.log("In getNewImages -- app.props:");
    console.log("   app.props.servername = "+app.props.servername);
    console.log("   app.props.downloadAssetPath = "+app.props.downloadAssetPath);
    servername = app.props.servername;
                    console.log("global var servername = "+servername);
                                         
                //Get all the images
                var url = 'http://' + servername + '/webservice/rest/asset-list?apikey=' + apikey + '&order=&offset=0&orderKey=id&limit=&condition=type%3D%27image%27';
                url = url + '%20AND%20modificationDate%3E' + last_update;
                
                console.log("Get image data using url: "+url);

                var imagecounter = 0, totalimagecount = 0;
                $.getJSON(url,
                          function(jsondata) {
                            items=jsondata.data;
                            totalimagecount = items.length;
                            $("#totalimagecount").text(totalimagecount);
                            if (totalimagecount >0) { // download new image files
                              console.log("Getting "+totalimagecount+" new images.");
                              $.each(items, function(key, val) {
                                 
                                 var id = val.id;
                                 var itemurl = 'http://' + servername + '/webservice/rest/asset/id/' + id + '?apikey=' + apikey + '&light=true';
                                 console.log("Get asset info for id "+id+" with url: "+itemurl);
                                 
                                 $.getJSON(itemurl,
                                           function(unitdata) {
                                                var unititems=unitdata.data;
                                                var foldername = unititems.path;
                                                var filepath = foldername + unititems.filename;
                                                var fileurl = 'http://' + servername + '/website/var/assets' + filepath;
                                           
                                                var webURL = fileurl;
                                                var webFilename = filepath;  // needs to be var so captured in scope of getFile success callback.
                                            
                                                //ImageDic[id] = "assets" + unititems.path + unititems.filename;
                                                console.log("requestFileSystem for image file download for webURL "+fileurl);
                                                window.requestFileSystem(
                                                    LocalFileSystem.PERSISTENT, 0,
                                                    function onFileSystemSuccess(fileSystem) {
                                                    console.log("filesystem success");
                                                    fileSystem.root.getFile(
                                                        "dummy.html", {create: true, exclusive: false},
                                                        function gotFileEntry(fileEntry){
                                                                            console.log("got File Entry: "+fileEntry.fullPath);
                                                        var sPath = fileEntry.fullPath.replace("dummy.html",appname + "/www/assets");

                                                        // ImageDic[id] = sPath + webFilename;
                                                                            
                                                        //alert(fileEntry.fullPath + "--" + sPath);
                                                        var fileTransfer = new FileTransfer();
                                                        fileEntry.remove();
                                                        
                                                        //fileTransfer.onprogress = function(result){
                                                        //    var percent =  result.loaded / result.total * 100;
                                                        //    percent = Math.round(percent);
                                                        //    console.log('Downloaded:  ' + percent + '%');
                                                        //};
                                                        console.log("\n\n\trequesting asset id "+id + ":" + webURL +"\n to "+webFilename +"\n and "+ sPath);
                                                        fileTransfer.download(
                                                              webURL,
                                                              sPath + webFilename,
                                                              function(theFile) {   // success

                                                                  imagecounter++;  // count successful downloads

                                                                  console.log("\n\n\tdownload #"+imagecounter+" complete: " + theFile.toURL() + "\n have info: id = "+id+", webFilename = "+webFilename+".\n sPath = "+sPath+"\n AND FILE NAME = "+theFile.name+"   and fullpath = "+theFile.fullPath+"\n");

                                                                  // save new image file data and location to AssetFile table
                                                                   
                                                                  insertOrUpdateAssetFileData(id, sPath, webFilename, totalimagecount, imagecounter, populateImageDic); 

                                                                  console.log("Back from insertOrUpdateAssetFileData");


                                                                  $("#imgcount").text(imagecounter);

                                                              },
                                                              function(error) {
                                                                  console.log("download error source " + error.source);
                                                                  console.log("download error target " + error.target);
                                                                  console.log("upload error code: " + error.code);
                                                                  //navigator.notification.alert('Seems to be an error downloading this background. Try again later.', null, 'Error', 'OK');
                                                              }
                                                              );
                                                        },
                                                        fail);
                                                    },
                                                    fail);  // end requestFileSystem
                                           }); // end getJSON
                                 });  // end $.each items
                              } else { 
                                // no new images
                                console.log("No new images - continue to populateImageDic and get the rest of the data");
                                populateImageDic(DeltaLoadTheRest);
                              }          
                                 
                        }
                          
                ); // end getJSON
}; // end getNewImages

            var insertOrUpdateAssetFileData = function(asset_id, path, filename, totalCount, currentCount, successCB) {
 console.log("In insertOrUpdateAssetFileData with asset id = "+asset_id+" and currentcount = "+currentCount);
                db.transaction(
                        function(tx) {
                            console.log("insert or replace asset id = "+asset_id+", filename = "+filename+", and path = "+path);
                            tx.executeSql('INSERT OR REPLACE INTO AssetFile (assetId,filepath,assetspath,isDownloaded) VALUES (?,?,"",1)',[asset_id,filename]);  // set isDownloaded to 1 (== TRUE)
                        },  
                        function(err){  // error callback
                            console.log("Asset "+asset_id+" | DB Error: "+err.message + "\nCode="+err.code);
                            if (totalCount == currentCount) {
                              console.log(" Finished trying to record all "+currentCount+" images.  Call callback.");
                              successCB(DeltaLoadTheRest);
                              // NOTE: This will allow all new content to download, but if any images failed to be saved, they will not be able to be displayed
                              // the other solution is to drop out at the first failure, and just go back to remove the splash screen
                            }
                        },
                        function(){  // success callback
                            console.log("Asset "+asset_id+" stored to AssetFile table");
                            if (totalCount == currentCount) {
                              console.log(" Finished recording all "+currentCount+" images.  Call callback.");
                              successCB(DeltaLoadTheRest);
                            }
                        }

                );
            };


var populateImageDic = function (contCB) {

            var documentpath = app.props.builtinAssetPath;
            console.log("In populate ImageDic array with builtinAssetPath = "+documentpath+"\t and downloadAssetPath = "+app.props.downloadAssetPath);

            db = fwDatabase.open();

                // NOW repopulate ImageDic[] with all values from ImageFiles table
                    db.transaction(
                        function(tx) {
                            console.log("Getting all imagefile data into ImageDic array");
                            tx.executeSql('SELECT * from AssetFile',[],
                                function(tx,results){ 
                                    // alert("select from AssetFile got " + results.rows.length);
                                    for (var i=0; i<results.rows.length; i++) {
                                      // console.log("ImageDic OLD for assetId "+results.rows.item(i).assetId+ " = "+ImageDic[results.rows.item(i).assetId]);
                                      //   ImageDic[results.rows.item(i).assetId]= results.rows.item(i).assetspath + results.rows.item(i).filepath; //results.rows.item(i).filePath;
                                      //  console.log("\t NOW Image "+results.rows.item(i).assetId+" is "+ImageDic[results.rows.item(i).assetId]);

                                      //  // now do it the new way
                                      

                                       var assetid = results.rows.item(i).assetId;
                                       console.log("ImageLookup OLD for assetId "+assetid+ " = "+app.props.imageLookup[assetid]);
                                       var filepath = results.rows.item(i).filepath;
                                       if (results.rows.item(i).isDownloaded > 0) {
                                          filepath = app.props.downloadAssetPath + filepath;
                                       } else {
                                          filepath = "assets"+filepath;
                                       }
                                       app.props.imageLookup[assetid] = filepath;
                                       console.log("\t NOW ImageLookup[ "+assetid+" ] is "+app.props.imageLookup[assetid]);
                                    }
                                },
                                dbErrorHandler);
                        },
                        dbErrorHandler,
                        function(){
                            console.log("success - ImageLookup should contain data for all images. lastid = "+(app.props.imageLookup.length-1));
                            // what does this success handler do?
                            //  getAllData();  // images done, load data
                            contCB();

                        }
                    )
                }; // end populateImageDic


                
      var DeltaLoadTheRest = function () {


          db = fwDatabase.open();

          console.log("In DeltaLoadTheRest with db = "+ db);
          
          // GET ALL DATA in one call from pimcore
          var allDataUrl = 'http://' + servername + '/webservice/rest/data-list?apikey=' + apikey;
          console.log("Get all data from: "+allDataUrl);
          $.getJSON(allDataUrl,
              function(jsondata) {
                  items=jsondata.data;
                  var totalNumber = items.length;
                  var itemcounter = 0;
                  $("#totalitemcount").text(totalNumber);
                  console.log("Got all data: "+totalNumber+" objects!");
                      
                  // all in one transaction, so rollback works if there are any failures
                  db.transaction(
                    function(tx) {

                        // first, clear and recreate all data tables
                        clearAllDataTables(tx);

                        // iterate through each object received, and insert in correct table
                        $.each(items, function(key, unititems) {                            
                          itemcounter++;
                          var id = unititems.id;
                          var objectType = unititems.className;
                          console.log("item "+itemcounter+": id = "+id+": type = "+objectType);

                          // switch on objectType, so know what to do with this record
                          switch (objectType) {
                             case "dietpreference": doDietPreference(tx,unititems); break;
                             case "tagtype": doTagType(tx,unititems); break;
                             case "department": doDepartment(tx,unititems); break;
                             case "reward": doReward(tx,unititems); break;   // problem with rewards -- getting them twice, causing error.
                             case "about": doAbout(tx,unititems); break;
                             case "legal": doLegal(tx,unititems); break;
                             case "recipe": doRecipe(tx,unititems); break;
                             case "product": doProduct(tx,unititems); break;
                             case "curator": doCurator(tx,unititems); break;
                             case "curatorpost": doCuratorPost(tx,unititems); break;
                             case "servicetype": doServiceType(tx,unititems); break;
                             case "besttimetoshop": doBestTimeToShop(tx,unititems); break;
                             case "georegion": doGeoRegion(tx,unititems); break;
                             case "store": doStore(tx,unititems); break; 
                             case "storeservice": doStoreService(tx,unititems); break;
                          }

                          $("#itemcount").text(itemcounter);
                        }); // end $.each  item retrieved
                    },
                    dbErrorHandler,
                    function() { // success
                      console.log("Data Download Success!");
                      $('#loader').hide();
                      $('#loaded').show();
                      var endTime = new Date().getTime();
                      var timeelapsed = endTime - startTime;
                      $('#elapsedtime').text(timeelapsed);

                      app.removeSplashScreen();  // in case loading screen is still showing, turn it off

                      // update lastUpdateTime
                      db.transaction(
                          function(tx) {  
                            console.log("Save lastUpdateTime");
                            var nowTime = new Date().getTime();  // in milliseconds
                            tx.executeSql('UPDATE LastUpdate set LastUpdateTime=?',[nowTime]);
                            // this should be an update, so there's only one record....

                          },
                          dbErrorHandler,  // failure
                          function(tx) {} // success
                      );
                    }
                  ); // end db.transaction
          });  // end getJSON

console.log("AFTER GET JSON FOR ALL OBJECTS");



            };  // end DeltaLoadTheRest
            
            



