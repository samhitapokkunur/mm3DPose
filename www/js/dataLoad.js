/*
code pulled "as is"  out of populateDb.html
will work after only after device ready

changes 10.04 - 10.06
1. Added curator tables inserts from sprint4 branch : line #633
2. Added lastmodified to curator table (also see initializeDb.js);
2. also commented out //tx.executeSql('INSERT INTO Search (ID,EntityType,Content) VALUES (?,?,?)',[id, 'CuratorPost',Title + ' ' + Message]);
because it was failing to generate curator records
*/

var apikey = app.props.apikey; 
var appname = app.props.appname;
var db, UserID;

console.log ("loading dataLoad.js");

            function onFileSystemSuccess(fileSystem) {
                console.log(fileSystem.name);
            }
            
            function onResolveSuccess(fileEntry) {
                console.log(fileEntry.name);
            }
            
            function fail(evt) {
                console.log(evt.target.error.code);
            }

            var fail = function() {
                alert("error getting dir")
            }
                        
            
            function showLink(localurl){
                console.log(localurl);
            }
            
            

            var LoadAll = function()
            {
                
                
                
            }
            function gotFS(fileSystem) {
                alert(fileSystem.name);
            }
            function fail(evt) {
                alert("Generic fail callback:" + evt.target.error.code);
            }

            function findDB() {
                var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
                db.transaction(queryDB, errorCB);
            }
            function queryDB(tx) {
                //tx.executeSql('DROP TABLE IF EXISTS FW_Department');
                tx.executeSql('SELECT * FROM FW_Department', [], querySuccess, errorCB);
            }
            // Query the success callback
            //
            function querySuccess(tx, results) {
                var list = $('#dataParsed');
                list.html("samar " + document.getElementById("name").value);
                
                var len = results.rows.length;
                console.log("DEMO table: " + len + " rows found.");
                for (var i=0; i<len; i++){
                    console.log("Row = " + i + " ID = " + results.rows.item(i).id + " Data =  " + results.rows.item(i).Name);
                    list.append($(document.createElement('p')).html(results.rows.item(i).Name));
                    
                }
            }

            
            var ImageDic = new Array();
            function populateDB(tx) {
                console.log("In populateDB - called from view");
                console.log("key = " + apikey);
                //tx.executeSql('DROP TABLE IF EXISTS FW_Product');
                //tx.executeSql('DROP TABLE IF EXISTS FW_Department');
                servername = app.props.servername;
                console.log("Servername = "+servername);
                
                //User Tables
                //Create the user in pimcore
                var JSONUser = '{"path":"\/users\/","creationDate":1374523471,"modificationDate":1374524133,"userModification":2,"childs":null,"elements":[{"type":"user","value":"3","name":"user","language":null},{"type":"input","value":"' + device.name + '","name":"Name","language":null}],"className":"user","id":0,"parentId":36,"key":"' + device.name + '","published":true,"type":"object","userOwner":2,"properties":null}';
                $.post(
                       'http://' + servername + '/webservice/rest/object?apikey='+apikey,
                       JSONUser,
                       function(jsondata) {
                            UserID = jsondata.id;
                            if (UserID == undefined) UserID = "40"
                            
                            db.transaction(
                            function(tx) {
                            
                            tx.executeSql('DROP TABLE IF EXISTS User');
                       
                            tx.executeSql('CREATE TABLE IF NOT EXISTS User (UserID, FW_CustomerID, FirstName, LastName, EmailAddress, PostalCode, ImagePathBarCode, Phone, AgreedToTerms)');
                       
                            tx.executeSql('insert into User (UserID, AgreedToTerms) VALUES (?)',[UserID, false]);
                                           
                            });
                       }
                );
                
                console.log("Calling clearAndCreateAllTables");
                clearAndCreateAllTables(getAllImages);
                
              }


var getAllImages = function() {

           db = fwDatabase.open();
           
    console.log("In getAllImages -- app.props:");
    console.log("   app.props.servername = "+app.props.servername);
    console.log("   app.props.downloadAssetPath = "+app.props.downloadAssetPath);
                    console.log("local var servername = "+servername);
                                         
                //Get all the images
                var url = 'http://' + servername + '/webservice/rest/asset-list?apikey=' + apikey + '&order=&offset=0&orderKey=id&limit=&condition=type%3D%27image%27'
                console.log("Get image data using url: "+url);

                var imagecounter = 0, totalimagecount = 0;
                $.getJSON(url,
                          function(jsondata) {
                          items=jsondata.data;
                          totalimagecount = items.length;
                          $("#totalimagecount").text(totalimagecount);
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
                                                
                                                window.requestFileSystem(
                                                    LocalFileSystem.PERSISTENT, 0,
                                                    function onFileSystemSuccess(fileSystem) {
                                                    
                                                    fileSystem.root.getFile(
                                                        "dummy.html", {create: true, exclusive: false},
                                                        function gotFileEntry(fileEntry){
                                                                            
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


                                                                  // if (imagecounter == totalimagecount) {
                                                                  //     //LoadTheRest();
                                                                  //     populateImageDic();
                                                                  // } else {
                                                                      $("#imgcount").text(imagecounter);
                                                                              
                                                                  //}
                                                                  showLink(theFile.toURL());
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
                                 });  // end s.each
                                 
                                 
                        }
                          
                ); // end getJSON
} // end getAllImages

            var insertOrUpdateAssetFileData = function(asset_id, path, filename, totalCount, currentCount, successCB) {
 console.log("In insertOrUpdateAssetFileData with asset id = "+asset_id+" and currentcount = "+currentCount);
                db.transaction(
                        function(tx) {
                            console.log("insert or replace asset id = "+asset_id+", filename = "+filename+", and path = "+path);
                            tx.executeSql('INSERT OR REPLACE INTO AssetFile (assetId,filepath,assetspath) VALUES (?,?,?)',[asset_id,filename,path]);
                                            // function(tx,results){
                                            //     console.log("INSERT SUCCESS! "+asset_id);
                                            // },
                                            // dbErrorHandler);
                        },  
                        dbErrorHandler,
                        function(){  // success callback
                            console.log("Asset "+asset_id+" stored to AssetFile table");
                            if (totalCount == currentCount) {
                              console.log(" Finished recording all "+currentCount+" images.  Call callback.");
                              successCB();
                            }
                            // make sure asset is recorded in ImageDic array, used below for all inserts
                            //ImageDic[asset_id] = path+filename;
                        }

                );
            }


var populateImageDic = function () {

            var documentpath = app.props.builtinAssetPath;
            console.log("In populate ImageDic array with documentpath = "+documentpath);

            db = fwDatabase.open();

                // NOW repopulate ImageDic[] with all values from ImageFiles table
                    db.transaction(
                        function(tx) {
                            console.log("Getting all imagefile data into ImageDic array");
                            tx.executeSql('SELECT * from AssetFile',[],
                                function(tx,results){ 
                                    // alert("select from AssetFile got " + results.rows.length);
                                    for (var i=0; i<results.rows.length; i++) {
                                        ImageDic[results.rows.item(i).assetId]= results.rows.item(i).assetspath + results.rows.item(i).filepath; //results.rows.item(i).filePath;
                                       console.log("Image "+results.rows.item(i).assetId+" is "+ImageDic[results.rows.item(i).assetId]);
                                    }
                                },
                                dbErrorHandler);
                        },
                        dbErrorHandler,
                        function(){
                            console.log("success - ImageDic should contain data for all images. length = "+ImageDic.length);
                            // what does this success handler do?
                            //  getAllData();  // images done, load data
                            LoadTheRest();

                        }
                    )
                }


                
                var LoadTheRest = function () {

                                    db = fwDatabase.open();

                console.log("In LoadTheRest with db = "+ db);


                //Get All the diet preferences
                var url = 'http://' + servername + '/webservice/rest/object-list?apikey=' + apikey + '&objectClass=dietpreference';


                $.getJSON(url,
                  function(jsondata) {
                    items=jsondata.data;
                    var displayorder=0;
                          
                    $.each(items, function(key, val) {
                         var id = val.id;
                         var itemurl = 'http://' + servername + '/webservice/rest/object/id/' + id + '?apikey=' + apikey;
                           $.getJSON(itemurl,
                                     function(unitdata) {
                                     var unititems=unitdata.data;
                                     db.transaction(
                                                    function(tx) {
                                                    var Name = unititems.elements[0].value;
                                                    var Abbreviation = unititems.elements[1].value;
                                                    var Description = unititems.elements[2].value;
                                                    var ImagePathIcon = ImageDic[unititems.elements[3].value];
                                                    var IconClass = unititems.elements[4].value;
                                                    
                                                    displayorder = displayorder + 1;
                                                    tx.executeSql('INSERT INTO DietPreference (DietPreferenceID, Name, Abbreviation, DisplayOrder, Description, ImagePathIcon, IconClass) VALUES (?,?,?,?,?,?,?)',[id, Name, Abbreviation, displayorder, Description, ImagePathIcon,IconClass]);
                                                    
                                                    
                                                    })
                                     })
                     })
                   }
                )
                          
                                          
                //Get all the Tag Types
                var url = 'http://' + servername + '/webservice/rest/object-list?apikey=' + apikey + '&objectClass=tagtype'
                $.getJSON(url,
                  function(jsondata) {
                  items=jsondata.data;
                  var displayorder=0;
                  
                  $.each(items, function(key, val) {
                         var id = val.id;
                         var itemurl = 'http://' + servername + '/webservice/rest/object/id/' + id + '?apikey=' + apikey;
                         $.getJSON(itemurl,
                                   function(unitdata) {
                                   var unititems=unitdata.data;
                                   db.transaction(
                                                  function(tx) {
                                                  var TagLabel = unititems.elements[0].value;
                                                  var TagValue = unititems.elements[1].value;
                                                  var TagType = '';
                                                  
                                                  tx.executeSql('INSERT INTO TagType (TagID, TagLabel, TagValue, TagType) VALUES (?,?,?,?)',[id, TagLabel, TagValue, TagType]);
                                                  //alert(TagLabel);
                                                  }
                                                  )
                                   })
                         
                         })
                  }
                )
                
                
                var url = 'http://' + servername + '/webservice/rest/object-list?apikey=' + apikey + '&order=DESC&offset=0&orderKey=Name&limit=&objectClass=product&condition=o_path%3D%27/products/%27';
                
                
                var productcount = 0;
                $.getJSON(url,
                          function(jsondata) {
                          
                          items=jsondata.data;
                          $.each(items, function(key, val) {
                                 var id = val.id;
                                 var itemurl = 'http://' + servername + '/webservice/rest/object/id/' + id + '?apikey=' + apikey;
                                 
                                 $.getJSON(itemurl,
                                        function(unitdata) {
                                           var unititems=unitdata.data;
                                           
                                           db.transaction(
                                                        function(tx) {
                                                          var lastModified = unititems.modificationDate;

                                                          var Name = unititems.elements[0].value;
                                                          var DescriptionHeading = unititems.elements[1].value;
                                                          var Description = unititems.elements[2].value;
                                                          var SKU = unititems.elements[3].value;
                                                          var ImagePathLarge = ImageDic[unititems.elements[4].value];
                                                          var ImagePathMosaicLarge = ImageDic[unititems.elements[5].value];
                                                          var ImagePathMosaicSmall = ImageDic[unititems.elements[6].value];
                                                          var IsFeatured = unititems.elements[7].value;
                                                          var IsPopular = unititems.elements[8].value;

                                                          console.log("Got product id "+id+" last moficationdate = "+lastModified);
                                                          
                                                          tx.executeSql('INSERT INTO Product (ProductID, Name, DescriptionHeading, Description, FW_UPC, ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall, IsFeatured, IsPopular, LastModified) VALUES (?,?,?,?,?,?,?,?,?,?,?)',[id, Name, DescriptionHeading, Description, SKU, ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall, IsFeatured, IsPopular, lastModified]);
                                                          
                                                          //Departments
                                                          var depts = unititems.elements[9].value;
                                                          $.each(depts, function(key, val) {
                                                                 DepartmentID = val.id;
                                                                 tx.executeSql('INSERT INTO ProductDepartment (ProductID, DepartmentID) VALUES (?,?)',[id, DepartmentID]);
                                                          });
                                                          var producttags = unititems.elements[10].value;
                                                          $.each(producttags, function(key, val) {
                                                                 TagID = val.id;
                                                                 tx.executeSql('INSERT INTO ProductTag (ProductID, TagID) VALUES (?,?)',[id, TagID]);
                                                          });
                                                          var productdiet = unititems.elements[11].value;
                                                          $.each(productdiet, function(key, val) {
                                                                 DietPreferenceID = val.id;
                                                                 tx.executeSql('INSERT INTO ProductDietPreference (ProductID, DietPreferenceID) VALUES (?,?)',[id, DietPreferenceID]);
                                                          });
                                                          
                                                          var productattr = unititems.elements[12].value;
                                                          $.each(productattr, function(key, val) {
                                                                 productattrtype = val.value;
                                                                 
                                                                 var DataGroup = productattrtype[0].value;
                                                                 var Label = productattrtype[1].value;
                                                                 var DataGroupValue = productattrtype[2].value;
                                                                 var GroupDisplayOrder = productattrtype[3].value;
                                                                 
                                                                 tx.executeSql('INSERT INTO ProductAttributeValue (ProductID, DataGroup, Label, DataGroupValue, GroupDisplayOrder) VALUES (' + id + ',"' + DataGroup + '","' + Label + '","' + DataGroupValue + '","'+ GroupDisplayOrder + '")');
                                                                 //alert('INSERT INTO ProductAttributeValue (ProductID, DataGroup, Label, DataGroupValue, GroupDisplayOrder) VALUES (' + id + ',"' + DataGroup + '","' + Label + '","' + DataGroupValue + '","'+ GroupDisplayOrder + '")')
                                                          });
                                                          
                                                          },
                                                          this.txErrorHandler,
                                                          function(tx) {

                                                          //callback();
                                                          }
                                                          );
                                           });
                                 
                                 
                                 });
                          });
                
                
                
                // INSERT DEPARTMENTS
                var url = 'http://' + servername + '/webservice/rest/object-list?apikey=' + apikey + '&objectClass=department'
                var deptCount = 0;
                $.getJSON(url,
                          function(jsondata) {
                          
                          items=jsondata.data;
                          $.each(items, function(key, val) {
                                 var id = val.id;
                                 
                                 var itemurl = 'http://' + servername + '/webservice/rest/object/id/' + id + '?apikey=' + apikey;
                                 $.getJSON(itemurl,
                                           function(unitdata) {
                                           var unititems=unitdata.data;
                                           
                                           db.transaction(
                                                               function(tx) {
                                                                var Name = unititems.elements[0].value;
                                                                var CuratorID = "";
                                                                var DescriptionHeading = unititems.elements[2].value;
                                                                var Description = unititems.elements[3].value;
                                                                var DisplayOrder = unititems.elements[4].value;
                                                                var ImagePathThumb = ImageDic[unititems.elements[5].value];
                                                                var ImagePathIcon = ImageDic[unititems.elements[6].value];
                                                                var MarqueeImagePath = ImageDic[unititems.elements[7].value];
                                                                var MarqueeTitle = unititems.elements[8].value;
                                                                var MarqueeLinkText = unititems.elements[9].value;
                                                                var MarqueeLinkPath = unititems.elements[10].value;
                                                                var FW_DeptCode = unititems.elements[11].value;
                                                                var IconClass = unititems.elements[12].value;
                                                               
                                                         
                                                                tx.executeSql('INSERT INTO Department (DepartmentID, Name, CuratorID, DescriptionHeading, Description, DisplayOrder, ImagePathThumb, ImagePathIcon, MarqueeImagePath, MarqueeTitle, MarqueeLinkText, MarqueeLinkPath, FW_DeptCode, IconClass) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)',[id, Name, CuratorID, DescriptionHeading, Description, DisplayOrder, ImagePathThumb, ImagePathIcon, MarqueeImagePath, MarqueeTitle, MarqueeLinkText, MarqueeLinkPath, FW_DeptCode, IconClass]);
                                                           
                                                                //tx.executeSql('INSERT INTO User_DepartmentPreference (UserID, DepartmentID, DisplayOrder, IsHidden) VALUES (?,?,?,?)',[UserID, id, deptCount++,0]);
                                                          
                                                               },
                                                               this.txErrorHandler,
                                                               function(tx) {
                                                               //callback();
                                                               }
                                                               );
                                           });
                                 
                                 
                                 });
                          });
                
                
                
                
                // INSERT RECIPE
                var url = 'http://' + servername + '/webservice/rest/object-list?apikey=' + apikey + '&objectClass=recipe';
                
                
                $.getJSON(url,
                          function(jsondata) {
                          
                          items=jsondata.data;
                          $.each(items, function(key, val) {
                                 var id = val.id;
                                 var itemurl = 'http://' + servername + '/webservice/rest/object/id/' + id + '?apikey=' + apikey;
                                
                                 $.getJSON(itemurl,
                                           function(unitdata) {
                                           var unititems=unitdata.data;
                                           
                                           db.transaction(
                                                      function(tx) {
                                                          var lastModified = unititems.modificationDate;
                                                          var Name = unititems.elements[0].value;
                                                          var DescriptionHeading = unititems.elements[1].value;
                                                          var Description = unititems.elements[2].value;
                                                          var Serves = unititems.elements[3].value;
                                                          var SkillLevel = unititems.elements[4].value;
                                                          var TimeTotal = unititems.elements[5].value;
                                                          var TimePrep = unititems.elements[6].value;
                                                          var TimeCook = unititems.elements[7].value;
                                                          var CaloriesPerServing = unititems.elements[8].value;
                                                          var ImagePathLarge = ImageDic[unititems.elements[9].value];
                                                          var ImagePathMosaicLarge = ImageDic[unititems.elements[10].value];
                                                          var ImagePathMosaicSmall = ImageDic[unititems.elements[11].value];
                                                          var ImagePathStepsGrid = ImageDic[unititems.elements[12].value];
                                                          var IsFeatured = unititems.elements[13].value;
                                                          var IsPopular = unititems.elements[14].value;
                                                          var URLPathPlayList = unititems.elements[20].value;

                                                          console.log("Got recipe id "+id+" last moficationdate = "+lastModified);
                                                          
                                                          tx.executeSql('INSERT INTO Recipe (RecipeID, Name, DescriptionHeading, Description, Serves, SkillLevel, TimeTotal, TimePrep, TimeCook,CaloriesPerServing, ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall,ImagePathStepsGrid,IsFeatured,IsPopular, LastModified, URLPathPlayList) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',[id, Name, DescriptionHeading, Description, Serves, SkillLevel, TimeTotal, TimePrep, TimeCook, CaloriesPerServing, ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall,ImagePathStepsGrid,IsFeatured,IsPopular, lastModified, URLPathPlayList]);
                                                          
                                                          var productdiet = unititems.elements[15].value;
                                                          
                                                          $.each(productdiet, function(key, val) {
                                                                 DietPreferenceID = val.id;
                                                                 tx.executeSql('INSERT INTO RecipeDietPreference (RecipeID, DietPreferenceID) VALUES (?,?)',[id, DietPreferenceID]);
                                                                 });
                                                          var producttags = unititems.elements[16].value;
                                                          $.each(producttags, function(key, val) {
                                                                 TagID = val.id;
                                                                 tx.executeSql('INSERT INTO RecipeTag (RecipeID, TagID) VALUES (?,?)',[id, TagID]);
                                                          });
                                                          

                                                        
                                                          var recipeattr = unititems.elements[17].value;
                                                          $.each(recipeattr, function(key, val) {
                                                                 recipeattrtype = val.value;
                                                                 
                                                                 var DataGroup = recipeattrtype[0].value;
                                                                 var Label = recipeattrtype[1].value;
                                                                 var DataGroupValue = recipeattrtype[2].value;
                                                                 var GroupDisplayOrder = recipeattrtype[3].value;
                                                                 
                                                                 tx.executeSql('INSERT INTO RecipeAttributeValue (RecipeID, DataGroup, Label, DataGroupValue, GroupDisplayOrder) VALUES (' + id + ',"' + DataGroup + '","' + Label + '","' + DataGroupValue + '","'+ GroupDisplayOrder + '")');
                                                                
                                                                 });
                                                          var recipeing = unititems.elements[18].value;
                                                          $.each(recipeing, function(key, val) {
                                                                 recipeingtype = val.value;
                                                                 
                                                                 var DisplayOrder = recipeingtype[0].value;
                                                                 var GroupHeading = recipeingtype[1].value;
                                                                 var StepNumber = recipeingtype[2].value;
                                                                 var Instructions = recipeingtype[3].value;
                                                                 var ImagePath = ImageDic[recipeingtype[4].value];
                                                                 var TimerDuration = recipeingtype[5].value;
                                                                 var AlertHeading = recipeingtype[6].value;
                                                                 var AlertMessage = recipeingtype[7].value;
                                                                 
                                                                 tx.executeSql('INSERT INTO RecipeStep (RecipeID, DisplayOrder, GroupHeading, StepNumber, Instructions, ImagePath, TimerDuration, AlertHeading, AlertMessage) VALUES (?,?,?,?,?,?,?,?,?)',[id, DisplayOrder, GroupHeading, StepNumber, Instructions, ImagePath, TimerDuration, AlertHeading, AlertMessage]);
                                                                 
                                                                 
                                                                 });
                                                          if (unititems.elements[19] != null) {
                                                          var recipeing = unititems.elements[19].value;
                                                          $.each(recipeing, function(key, val) {
                                                                 recipeingtype = val.value;
                                                                 
                                                                 var Name = recipeingtype[0].value;
                                                                 var DisplayOrder = recipeingtype[1].value;
                                                                 var Quantity = recipeingtype[2].value;
                                                                 var GroupHeading = recipeingtype[3].value;
                                                                 var ProductID = recipeingtype[4].value;
                                                                 if (ProductID.length > 0) {
                                                                    ProductID = ProductID[0].id;
                                                                 }
                                                                 var IsMainIngredient = recipeingtype[4].value;
                                                                 
                                                                 tx.executeSql('INSERT INTO RecipeIngredient (RecipeID, Name, DisplayOrder,IsMainIngredient, Quantity, GroupHeading, ProductID) VALUES (?,?,?,?,?,?,?)',[id, Name, DisplayOrder, IsMainIngredient, Quantity, GroupHeading, ProductID]);
                                                                 });
                                                          }
                                                          
                                                          },
                                                          this.txErrorHandler,
                                                          function(tx) {
                                                          //callback();
                                                          }
                                                          );
                                                          $('#loader').hide();
                                                          $('#loaded').show();
                                           });
                                 
                                 
                                 });
                          });
                    
                    
                    
                    // INSERT REWARDS
                    var url = 'http://' + servername + '/webservice/rest/object-list?apikey=' + apikey + '&objectClass=reward'
                    var deptCount = 0;
                    $.getJSON(url,
                              function(jsondata) {
                              
                              items=jsondata.data;
                              $.each(items, function(key, val) {
                                     var id = val.id;
                                     
                                     var itemurl = 'http://' + servername + '/webservice/rest/object/id/' + id + '?apikey=' + apikey;
                                     $.getJSON(itemurl,
                                               function(unitdata) {
                                               var unititems=unitdata.data;
                                               
                                               db.transaction(
                                                              function(tx) {
                                                              var Name = unititems.elements[0].value;
                                                              var Description = unititems.elements[1].value;
                                                              var StartDate = unititems.elements[2].value;
													
                                                              var ExpireDate = unititems.elements[3].value;
															  var ImagePathSmall = ImageDic[unititems.elements[4].value];
                                                              var ImagePathLarge = ImageDic[unititems.elements[5].value];
                                                              var ImagePathBarcode = ImageDic[unititems.elements[6].value];
                                                              var ValueMessage = unititems.elements[7].value;
                                                                                                                           
                                                              tx.executeSql('INSERT INTO Reward (RewardID, Name, Description, ValueMessage, StartDate, ExpireDate, ImagePathSmall, ImagePathLarge, ImagePathBarcode) VALUES (?,?,?,?,?,?,?,?,?)',[id, Name, Description,ValueMessage, StartDate, ExpireDate, ImagePathSmall, ImagePathLarge, ImagePathBarcode]);
                                                              
                                                              },
                                                              this.txErrorHandler,
                                                              function(tx) {
                                                              //callback();
                                                              }
                                                              );
                                               });
                                     
                                     
                                     });
                              });
       /////////////////////////////////////////////////////////////////////////////////////////////////////
                           //Curator
                    var url = 'http://' + servername + '/webservice/rest/object-list?apikey=' + apikey + '&objectClass=curator'
                    $.getJSON(url,
                              function(jsondata) {
                              items=jsondata.data;
                              $.each(items, function(key, val) {
                                     var id = val.id;
                                     var itemurl = 'http://' + servername + '/webservice/rest/object/id/' + id + '?apikey=' + apikey;
                                     $.getJSON(itemurl,
                                               function(unitdata) {
                                               var unititems=unitdata.data;
                                               db.transaction(
                                                              function(tx) {
                                                                
                                                              var FirstName = unititems.elements[0].value;
                                                              var LastName = unititems.elements[1].value;
                                                              tx.executeSql('INSERT INTO Curator (CuratorID,FirstName,LastName) VALUES (?,?,?)',[id, FirstName, LastName]);
                                                              var posts = unititems.elements[2].value;
                                                              $.each(posts, function(key, val) {
                                                                     CuratorPostID = val.id;
                                                                     tx.executeSql('INSERT INTO CuratorPostJoin (CuratorID, CuratorPostID) VALUES (?,?)',[id, CuratorPostID]);
                                                              });
                                                              
                                                              },
                                                              dbErrorHandler,
                                                              function(tx) {
                                                              //callback();
                                                              }
                                                              );
                                               });
                                     });
                              },
                              function() {
                              console.log("json success curator");
                              });
    
                    //Curatorpost
                    var url = 'http://' + servername + '/webservice/rest/object-list?apikey=' + apikey + '&objectClass=curatorpost'
                    $.getJSON(url,
                              function(jsondata) {
                              items=jsondata.data;
                              $.each(items, function(key, val) {
                                     var id = val.id;
                                     var itemurl = 'http://' + servername + '/webservice/rest/object/id/' + id + '?apikey=' + apikey;
                                     $.getJSON(itemurl,
                                               function(unitdata) {
                                               var unititems=unitdata.data;
                                               
                                               db.transaction(
                                                    function(tx) {
                                                        var lastModified = unititems.modificationDate;
                                                        var PostDate = unititems.elements[0].value;
                                                        var Title = unititems.elements[1].value;
                                                        var Message = unititems.elements[2].value;
                                                        var ImagePathLarge = ImageDic[unititems.elements[3].value];
                                                        var ImagePathMosaicLarge = ImageDic[unititems.elements[4].value];
                                                        var ImagePathMosaicSmall = ImageDic[unititems.elements[5].value];
                                                        var DietPreferences = unititems.elements[7].value;

                                                        $.each(DietPreferences, function(key, val) {
                                                               DietPreferenceID = val.id;
                                                               tx.executeSql('INSERT INTO CuratorPostDietPreference (CuratorPostID, DietPreferenceID) VALUES (?,?)',[id, DietPreferenceID]);
                                                               console.log("CuratorPost "+id+" gets dietpreference "+DietPreferenceID);
                                                        });

                                                        tx.executeSql('INSERT INTO CuratorPost (CuratorPostID,PostDate,Title,Message,ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall, LastModified) VALUES (?,?,?,?,?,?,?,?)',[id, PostDate,Title,Message,ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall,lastModified]);
                                                        //tx.executeSql('INSERT INTO Search (ID,EntityType,Content) VALUES (?,?,?)',[id, 'CuratorPost',Title + ' ' + Message]);
                                                    
                                                    },
                                                    dbErrorHandler,
                                                    function(tx) {
                                                    //callback();
                                                    }                                                             
                                                  );
                                                              
                                               });
                                     });

                              },
                              function() {
                              console.log("json success curator");
                              });
       ///////////////////////////////////////////////////////////////////////////////////////////////////// 

                    InsertStores(db);
                    
                    //Insert about and Legal
                    var url = 'http://' + servername + '/webservice/rest/object-list?apikey=' + apikey + '&objectClass=about'
                    $.getJSON(url,
                              function(jsondata) {
                              items=jsondata.data;
                              $.each(items, function(key, val) {
                                     var id = val.id;
                                     var itemurl = 'http://' + servername + '/webservice/rest/object/id/' + id + '?apikey=' + apikey;
                                     $.getJSON(itemurl,
                                               function(unitdata) {
                                               var unititems=unitdata.data;
                                               db.transaction(
                                                      function(tx) {
                                                      var Title = unititems.elements[0].value;
                                                      var Version = unititems.elements[1].value;
                                                      var Copyright = unititems.elements[2].value;
                                                                                          
                                                      tx.executeSql('INSERT INTO AboutTheApp (AboutID,Title,Version,Copyright) VALUES (?,?,?,?)',[id,Title,Version,Copyright]);
                                                      
                                                      },
                                                      this.txErrorHandler,
                                                      function(tx) {
                                                      //callback();
                                                      }
                                                      );
                                               });
                                     });
                              });
                    var url = 'http://' + servername + '/webservice/rest/object-list?apikey=' + apikey + '&objectClass=legal'
                    $.getJSON(url,
                              function(jsondata) {
                              items=jsondata.data;
                              $.each(items, function(key, val) {
                                     var id = val.id;
                                     var itemurl = 'http://' + servername + '/webservice/rest/object/id/' + id + '?apikey=' + apikey;
                                     $.getJSON(itemurl,
                                               function(unitdata) {
                                               var unititems=unitdata.data;
                                               db.transaction(
                                                      function(tx) {
                                                      var Title = unititems.elements[0].value;
                                                      var Overview = unititems.elements[1].value;
                                                      
                                                                                          
                                                      tx.executeSql('INSERT INTO Legal (LegalID,Title,Overview) VALUES (?,?,?)',[id,Title,Overview]);
                                                      
                                                      },
                                                      this.txErrorHandler,
                                                      function(tx) {
                                                      //callback();
                                                      }
                                                      );
                                               });
                                     });
                              });


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
             
                // app.removeSplashAndFinishAppInit();
                }  // end LoadTheRest
            
            
            // Transaction error callback
            //
            function errorCB(tx, err) {
                alert("Transaction error callback after populateDb "+err);
            }
            
            // Transaction success callback
            //
            function successCB() {
                //alert("success!");
            }
  
function InsertStores(db) {
                            
    //Store Locations
    db.transaction(function(tx) {
        tx.executeSql('DROP TABLE IF EXISTS GeoRegion');
        tx.executeSql('CREATE TABLE IF NOT EXISTS GeoRegion (GeoRegionID,Label,IconClass)');
        tx.executeSql('DROP TABLE IF EXISTS Store');
        tx.executeSql('CREATE TABLE IF NOT EXISTS Store (StoreID,Name,Description,Address1,Address2,City,State,PostalCode,Latitude,Longitude,Phone,OpenDate,ImagePathStoreLayout)');
        tx.executeSql('DROP TABLE IF EXISTS GeoRegionStore');
        tx.executeSql('CREATE TABLE IF NOT EXISTS GeoRegionStore (GeoRegionID,StoreID)');
        tx.executeSql('DROP TABLE IF EXISTS ServiceType');
        tx.executeSql('CREATE TABLE IF NOT EXISTS ServiceType (ServiceTypeID,Label,DataGroup,DisplayOrderInGroup,ImagePathIconClass)');
        tx.executeSql('DROP TABLE IF EXISTS StoreService');
        tx.executeSql('CREATE TABLE IF NOT EXISTS StoreService (StoreID,ServiceTypeID,Description,ImagePathLarge)');
        tx.executeSql('DROP TABLE IF EXISTS StoreHours');
        tx.executeSql('CREATE TABLE IF NOT EXISTS StoreHours (StoreID,ServiceTypeID,DayID,OpenTime,CloseTime)');
        tx.executeSql('DROP TABLE IF EXISTS BestTimeToShop');
        tx.executeSql('CREATE TABLE IF NOT EXISTS BestTimeToShop (BestTimeToShopID,Title,Description,Overview)');
        tx.executeSql('DROP TABLE IF EXISTS StoreBestTimeToShop');
        tx.executeSql('CREATE TABLE IF NOT EXISTS StoreBestTimeToShop (StoreID,BestTimeToShopID)');
        tx.executeSql('DROP TABLE IF EXISTS User_StorePreference');
        tx.executeSql('CREATE TABLE IF NOT EXISTS User_StorePreference (UserID,StoreID,CREATED)');
    });
    
    //Insert the ServiceTypes
    var url = 'http://' + servername + '/webservice/rest/object-list?apikey=' + apikey + '&objectClass=servicetype'
    $.getJSON(url, function(jsondata) {
      items=jsondata.data;
      var servicetypecount = 0;
      $.each(items, function(key, val) {
         var ServiceTypeID = val.id;
         var itemurl = 'http://' + servername + '/webservice/rest/object/id/' + ServiceTypeID + '?apikey=' + apikey;

         $.getJSON(itemurl, function(unitdata) {
            var unititems=unitdata.data;
            db.transaction(function(tx) {
                var Label = unititems.elements[0].value;
                var DataGroup = unititems.elements[1].value;
                var ImagePathIconClass = unititems.elements[2].value;
                
                tx.executeSql('INSERT INTO ServiceType (ServiceTypeID,Label,DataGroup,DisplayOrderInGroup,ImagePathIconClass) VALUES (?,?,?,?,?)',[ServiceTypeID,Label,DataGroup,servicetypecount++,ImagePathIconClass]);

                },
                this.txErrorHandler,
                function(tx) {}
                );
            });
        });
     });
  
     //Get the besttime to shop
     var url = 'http://' + servername + '/webservice/rest/object-list?apikey=' + apikey + '&objectClass=besttimetoshop'
     $.getJSON(url, function(jsondata) {
      items=jsondata.data;
      $.each(items, function(key, val) {
         var id = val.id;
         var itemurl = 'http://' + servername + '/webservice/rest/object/id/' + id + '?apikey=' + apikey;
         $.getJSON(itemurl, function(unitdata) {
            var unititems=unitdata.data;
            db.transaction(function(tx) {
                var Title = unititems.elements[0].value;
                var Description = unititems.elements[1].value;
                var Overview = unititems.elements[2].value;
                                                                                          
                tx.executeSql('INSERT INTO BestTimeToShop (BestTimeToShopID,Title,Description,Overview) VALUES (?,?,?,?)',[id,Title,Description,Overview]);

                },
                this.txErrorHandler,
                function(tx) {}
                );
            });
        });
     });
    
    //Insert GeoRegions
    var url = 'http://' + servername + '/webservice/rest/object-list?apikey=' + apikey + '&objectClass=georegion'
    $.getJSON(url, function(jsondata) {
      items=jsondata.data;
      $.each(items, function(key, val) {
         var id = val.id;
         var itemurl = 'http://' + servername + '/webservice/rest/object/id/' + id + '?apikey=' + apikey;
         $.getJSON(itemurl, function(unitdata) {
            var unititems=unitdata.data;
            db.transaction(function(tx) {
                 var StoreID = "";
                 var Label = unititems.elements[0].value;
                 var StoreIDArray = unititems.elements[1].value;
				 var IconClass = unititems.elements[2].value;
                 
                 tx.executeSql('INSERT INTO GeoRegion (GeoRegionID,Label,IconClass) VALUES (?,?,?)',[id,Label,IconClass]);
                 //Insert the Geo Stores
                 var stores = unititems.elements[1].value;
                 $.each(stores, function(key, val) {
                      storesid = val.id;
                      tx.executeSql('INSERT INTO GeoRegionStore (GeoRegionID,StoreID) VALUES (?,?)',[id,storesid]);
                 });          
                },
                this.txErrorHandler,function(tx) {}
            );
            });
        });
     });
    
    //Insert all the stores
    //Get the StoreInfo
    var url = 'http://' + servername + '/webservice/rest/object-list?apikey=' + apikey + '&objectClass=store'
    $.getJSON(url, function(jsondata) {
    items=jsondata.data;
    $.each(items, function(key, val) {
    var StoreID = val.id;
    var storeurl = 'http://' + servername + '/webservice/rest/object/id/' + StoreID + '?apikey=' + apikey;
    $.getJSON(storeurl, function(storedata) {
    var storeitems=storedata.data;
    db.transaction(function(tx) {
         var Name = storeitems.elements[0].value;
         var Description = storeitems.elements[1].value;
         var Address1 = storeitems.elements[2].value;
         var Address2 = storeitems.elements[3].value;
         var City = storeitems.elements[4].value;
         var State = storeitems.elements[5].value;
         var PostalCode = storeitems.elements[6].value;
         var Latitude = storeitems.elements[7].value;
         var Longitude = storeitems.elements[8].value;
         var Phone = storeitems.elements[9].value;
         var OpenDate = storeitems.elements[10].value;
         var ImagePathStoreLayout = ImageDic[storeitems.elements[11].value];
                   
         tx.executeSql('INSERT INTO Store (StoreID,Name,Description,Address1,Address2,City,State,PostalCode,Latitude,Longitude,Phone,OpenDate,ImagePathStoreLayout) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)',[StoreID,Name,Description,Address1,Address2,City,State,PostalCode,Latitude,Longitude,Phone,OpenDate,ImagePathStoreLayout]);
                  
         var storeservices = storeitems.elements[12].value;
         $.each(storeservices, function(key, val) {
             storeserviceid = val.id;
             var storeserviceurl = 'http://' + servername + '/webservice/rest/object/id/' + storeserviceid + '?apikey=' + apikey;
             $.getJSON(storeserviceurl, function(storeservicedata) {
                var storeserviceitems=storeservicedata.data;
                db.transaction(function(tx) {
                    var ServiceTypeID = storeserviceitems.elements[0].value[0].id;
                    var Description = storeserviceitems.elements[1].value;
                    var ImagePathLarge = ImageDic[storeserviceitems.elements[2].value];
                                                                
                    tx.executeSql('INSERT INTO StoreService (StoreID,ServiceTypeID,Description,ImagePathLarge) VALUES (?,?,?,?)',[StoreID,ServiceTypeID,Description,ImagePathLarge]);
                               
                    //Insert the store hours
                    var storehours = storeserviceitems.elements[3].value;
                    $.each(storehours, function(key, val) {
                          storehoursattrtype = val.value;
                          var DayID = storehoursattrtype[0].value;
                          var OpenTime = storehoursattrtype[1].value;
                          var CloseTime = storehoursattrtype[2].value;
                          tx.executeSql('INSERT INTO StoreHours (StoreID,ServiceTypeID,DayID,OpenTime,CloseTime) VALUES (?,?,?,?,?)',[StoreID,ServiceTypeID,DayID,OpenTime,CloseTime]);
                     });
                               
                 },
                 this.txErrorHandler,
                   function(tx) {}
                 );
              });
          });
                   
          var storehours = storeitems.elements[13].value;
          $.each(storehours, function(key, val) {
                 storehoursattrtype = val.value;
                 var DayID = storehoursattrtype[0].value;
                 var OpenTime = storehoursattrtype[1].value;
                 var CloseTime = storehoursattrtype[2].value;
                 tx.executeSql('INSERT INTO StoreHours (StoreID,ServiceTypeID,DayID,OpenTime,CloseTime) VALUES (?,?,?,?,?)',[StoreID,0,DayID,OpenTime,CloseTime]);
          });
          var besttimetoshop = storeitems.elements[14].value;
          $.each(besttimetoshop, function(bestkey, bestval) {
              tx.executeSql('INSERT INTO StoreBestTimeToShop (StoreID,BestTimeToShopID) VALUES (?,?)',[StoreID,bestval.id]);
          });
       },
       this.txErrorHandler,function(tx) {}
    );
    });
    });
    });
}

var clearAndCreateAllTables = function(successCB) {
        db = fwDatabase.open();

        console.log("In clearAndCreateAllTables with db = "+db);

        db.transaction(
            function(tx) {
                console.log("Running clearAndCreateAllTables with tx = "+tx);

                // CREATE ALL DB TABLES
                
              tx.executeSql('DROP TABLE IF EXISTS User_DietPreference');
               tx.executeSql('CREATE TABLE IF NOT EXISTS User_DietPreference (UserID, DietPreferenceID)');

               tx.executeSql('DROP TABLE IF EXISTS User_DepartmentPreference');
               tx.executeSql('CREATE TABLE IF NOT EXISTS User_DepartmentPreference (UserID, ItemType, DepartmentID, DisplayOrder, IsHidden)');


                tx.executeSql('DROP TABLE IF EXISTS User_Favorite_Recipe');
                tx.executeSql('CREATE TABLE IF NOT EXISTS User_Favorite_Recipe (UserID INTEGER, RecipeID INTEGER unique, created DATE)');
                tx.executeSql('DROP TABLE IF EXISTS User_Favorite_Product');
                tx.executeSql('CREATE TABLE IF NOT EXISTS User_Favorite_Product (UserID INTEGER, ProductID INTEGER unique, created DATE)');
                tx.executeSql('DROP TABLE IF EXISTS User_ShoppingList');
                tx.executeSql('CREATE TABLE IF NOT EXISTS User_ShoppingList (UserID INTEGER, ID unique, created DATE)');
                tx.executeSql('DROP TABLE IF EXISTS User_RewardAction');
                tx.executeSql('CREATE TABLE IF NOT EXISTS User_RewardAction (UserID INTEGER, RewardID, ActionID, ActionType, ActionDate DATE)');
                
                
                
                tx.executeSql('DROP TABLE IF EXISTS DietPreference');
                tx.executeSql('CREATE TABLE IF NOT EXISTS DietPreference (DietPreferenceID INTEGER, Name, Abbreviation, DisplayOrder, Description, ImagePathIcon, IconClass)');
                
                tx.executeSql('DROP TABLE IF EXISTS ProductDietPreference');
                tx.executeSql('CREATE TABLE IF NOT EXISTS ProductDietPreference (ProductID,DietPreferenceID)');
                tx.executeSql('DROP TABLE IF EXISTS RecipeDietPreference');
                tx.executeSql('CREATE TABLE IF NOT EXISTS RecipeDietPreference (RecipeID,DietPreferenceID)');
                
                
                tx.executeSql('DROP TABLE IF EXISTS TagType');
                tx.executeSql('CREATE TABLE IF NOT EXISTS TagType (TagID, TagLabel, TagValue, TagType)');
                
            //  tx.executeSql('DROP TABLE IF EXISTS Search');
            //  tx.executeSql('CREATE VIRTUAL TABLE IF NOT EXISTS Search USING fts3 (ID,content)');

                
                tx.executeSql('DROP TABLE IF EXISTS Product');

              //  tx.executeSql('CREATE VIRTUAL TABLE IF NOT EXISTS Product USING fts3 (ProductID unique, Name, DescriptionHeading, Description, FW_UPC, ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall, IsFeatured, IsPopular, LastModified)');
                tx.executeSql('CREATE TABLE IF NOT EXISTS Product (ProductID unique, Name, DescriptionHeading, Description, FW_UPC, ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall, IsFeatured, IsPopular, LastModified)');

                tx.executeSql('DROP TABLE IF EXISTS ProductAttributeValue');
                tx.executeSql('CREATE TABLE IF NOT EXISTS ProductAttributeValue (ProductID, DataGroup, Label, DataGroupValue, GroupDisplayOrder)');
                tx.executeSql('DROP TABLE IF EXISTS ProductDepartment');
                tx.executeSql('CREATE TABLE IF NOT EXISTS ProductDepartment (ProductID, DepartmentID)');
                tx.executeSql('DROP TABLE IF EXISTS ProductTag');
                tx.executeSql('CREATE TABLE IF NOT EXISTS ProductTag (ProductID, TagID)');
                tx.executeSql('DROP TABLE IF EXISTS RecipeTag');
                tx.executeSql('CREATE TABLE IF NOT EXISTS RecipeTag (RecipeID, TagID)');
                tx.executeSql('DROP TABLE IF EXISTS Department');
                tx.executeSql('CREATE TABLE IF NOT EXISTS Department (DepartmentID unique, Name, CuratorID, DescriptionHeading, Description, DisplayOrder, ImagePathThumb, ImagePathIcon, MarqueeImagePath, MarqueeTitle, MarqueeLinkText, MarqueeLinkPath, FW_DeptCode, IconClass)');
                
                //Recipe
                tx.executeSql('DROP TABLE IF EXISTS Recipe');
                tx.executeSql('CREATE TABLE IF NOT EXISTS Recipe(RecipeID unique, Name, DescriptionHeading, Description, Serves, SkillLevel, TimeTotal, TimePrep, TimeCook, CaloriesPerServing, ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall, ImagePathStepsGrid, IsFeatured, IsPopular,URLPathPlayList,LastModified)');

                tx.executeSql('DROP TABLE IF EXISTS RecipeAttributeValue');
                tx.executeSql('CREATE TABLE IF NOT EXISTS RecipeAttributeValue (RecipeID, DataGroup, Label, DataGroupValue, GroupDisplayOrder)');
                tx.executeSql('DROP TABLE IF EXISTS RecipeIngredient');
                tx.executeSql('CREATE TABLE IF NOT EXISTS RecipeIngredient (RecipeID, Name, DisplayOrder, IsMainIngredient, Quantity, GroupHeading, ProductID)');
                tx.executeSql('DROP TABLE IF EXISTS RecipeStep');
                tx.executeSql('CREATE TABLE IF NOT EXISTS RecipeStep (RecipeID, DisplayOrder, GroupHeading, StepNumber, Instructions, ImagePath, TimerDuration, AlertHeading, AlertMessage)');
                
                //Rewards
                tx.executeSql('DROP TABLE IF EXISTS Reward');
                          tx.executeSql('CREATE TABLE IF NOT EXISTS Reward (RewardID unique, Name, Description, ValueMessage, StartDate DATETIME, ExpireDate DATETIME, ImagePathSmall, ImagePathLarge, ImagePathBarcode)');
                //User Filters
                tx.executeSql('DROP TABLE IF EXISTS User_Filters');
                tx.executeSql('CREATE TABLE IF NOT EXISTS User_Filters (UserID INTEGER, ItemType,TagID,TagLabel,Status)');
                
                //About And Legal
                tx.executeSql('DROP TABLE IF EXISTS AboutTheApp');
                tx.executeSql('CREATE TABLE IF NOT EXISTS AboutTheApp (AboutID,Title,Version,Copyright)');
                tx.executeSql('DROP TABLE IF EXISTS Legal');
                tx.executeSql('CREATE TABLE IF NOT EXISTS Legal (LegalID,Title,Overview)');
                       
               //Curator and Curator Posts
               tx.executeSql('DROP TABLE IF EXISTS Curator');
               tx.executeSql('CREATE TABLE IF NOT EXISTS Curator (CuratorID,FirstName,LastName)');
               tx.executeSql('DROP TABLE IF EXISTS CuratorPostJoin');
               tx.executeSql('CREATE TABLE IF NOT EXISTS CuratorPostJoin (CuratorID,CuratorPostID)');
               tx.executeSql('DROP TABLE IF EXISTS CuratorPost');
               tx.executeSql('CREATE TABLE IF NOT EXISTS CuratorPost (CuratorPostID,PostDate,Title,Message,ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall, LastModified)');
              tx.executeSql('DROP TABLE IF EXISTS CuratorPostDietPreference');
               tx.executeSql('CREATE TABLE IF NOT EXISTS CuratorPostDietPreference (CuratorPostID,DietPreferenceID)');

               tx.executeSql('CREATE TABLE IF NOT EXISTS LastUpdate (LastUpdateTime)');  // Used to store the time of last data update (unix timestamp)

                // Table for keeping track of all image asset files
                   tx.executeSql('DROP TABLE IF EXISTS AssetFile');
                   tx.executeSql('CREATE TABLE IF NOT EXISTS AssetFile (assetId Primary Key, filepath, assetspath)');

          },dbErrorHandler,
          function() {
                console.log("Finished clearAndCreateAllTables");

                //initializeImages(tx);
                successCB();
              });

};


