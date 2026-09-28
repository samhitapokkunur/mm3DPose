/************
 * deltaLoadFunctions
 * functions for each data type to parse the data from the pimcore api and insert the records into the db
 *
 * loaded in index.html, so functions are available whenever we might need to do a delta load
 *
 **************/

 // note: might want to change all INSERTs into INSERT OR REPLACE -- but not sure.  tables should be cleared, but might get duplicate data from api

var displayorder = 0;  // global integer for counting display order for objects that need it

var doSQL = function(tx, sql, params) {
    tx.executeSql(sql, params);
};

  var doDietPreference = function(tx,unititems) {
      var objectType = unititems.className;
      var id = unititems.id;
      var Name = unititems.elements[0].value;
      var Abbreviation = unititems.elements[1].value;
      var Description = unititems.elements[2].value;
      var ImagePathIcon = unititems.elements[3].value;
      var IconClass = unititems.elements[4].value;
      
      displayorder = displayorder + 1;
      var sql = 'INSERT INTO DietPreference (DietPreferenceID, Name, Abbreviation, DisplayOrder, Description, ImagePathIcon, IconClass) VALUES (?,?,?,?,?,?,?)';
      var params = [id, Name, Abbreviation, displayorder, Description, ImagePathIcon,IconClass];

      // console.log("DietPreference: "+JSON.stringify(params));
      tx.executeSql(sql, params);
      //tx.executeSql('INSERT INTO DietPreference (DietPreferenceID, Name, Abbreviation, DisplayOrder, Description, ImagePathIcon, IconClass) VALUES (?,?,?,?,?,?,?)',[id, Name, Abbreviation, displayorder, Description, ImagePathIcon,IconClass]);
                                          
  };

  var doTagType = function(tx,unititems) {
    var objectType = unititems.className;
    var id = unititems.id;
        var TagLabel = unititems.elements[0].value;
    var TagValue = unititems.elements[1].value;
    var TagType = '';
    
    var sql = 'INSERT INTO TagType (TagID, TagLabel, TagValue, TagType) VALUES (?,?,?,?)';
    var params = [id, TagLabel, TagValue, TagType];

    // console.log("TagType: "+JSON.stringify(params));
    tx.executeSql(sql, params); 
  };

  var doProduct = function(tx,unititems) {
    var objectType = unititems.className;
      var id = unititems.id;
      var lastModified = unititems.modificationDate;

        var Name = unititems.elements[0].value;
        var DescriptionHeading = unititems.elements[1].value;
        var Description = unititems.elements[2].value;
        var SKU = unititems.elements[3].value;
        var ImagePathLarge = unititems.elements[4].value;
        var ImagePathMosaicLarge = unititems.elements[5].value;
        var ImagePathMosaicSmall = unititems.elements[6].value;
        var IsFeatured = unititems.elements[7].value;
        var IsPopular = unititems.elements[8].value;

        console.log("Got product id "+id+" last modificationdate = "+lastModified);
        
        var productSql = 'INSERT INTO Product (ProductID, Name, DescriptionHeading, Description, FW_UPC, ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall, IsFeatured, IsPopular, LastModified) VALUES (?,?,?,?,?,?,?,?,?,?,?)';
        var productParams = [id, Name, DescriptionHeading, Description, SKU, ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall, IsFeatured, IsPopular, lastModified];

        //console.log(objectType+": "+JSON.stringify(productParams));
        tx.executeSql(productSql,productParams);

//        tx.executeSql('INSERT INTO Product (ProductID, Name, DescriptionHeading, Description, FW_UPC, ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall, IsFeatured, IsPopular, LastModified) VALUES (?,?,?,?,?,?,?,?,?,?,?)',[id, Name, DescriptionHeading, Description, SKU, ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall, IsFeatured, IsPopular, lastModified]);
        
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

               var productAttrSql = 'INSERT INTO ProductAttributeValue (ProductID, DataGroup, Label, DataGroupValue, GroupDisplayOrder) VALUES (?,?,?,?,?)';
               var productAttrParams = [id, DataGroup,Label,DataGroupValue,GroupDisplayOrder];

               //console.log("ProductAttributeValue: "+JSON.stringify(productAttrParams));
               tx.executeSql(productAttrSql,productAttrParams);
               //tx.executeSql('INSERT INTO ProductAttributeValue (ProductID, DataGroup, Label, DataGroupValue, GroupDisplayOrder) VALUES (' + id + ',"' + DataGroup + '","' + Label + '","' + DataGroupValue + '","'+ GroupDisplayOrder + '")');
               //alert('INSERT INTO ProductAttributeValue (ProductID, DataGroup, Label, DataGroupValue, GroupDisplayOrder) VALUES (' + id + ',"' + DataGroup + '","' + Label + '","' + DataGroupValue + '","'+ GroupDisplayOrder + '")')
        });
  };
      
  var doDepartment = function(tx,unititems) {
        var objectType = unititems.className;
        var id = unititems.id;

        var Name = unititems.elements[0].value;
        var CuratorID = "";
        var DescriptionHeading = unititems.elements[2].value;
        var Description = unititems.elements[3].value;
        var DisplayOrder = unititems.elements[4].value;
        var ImagePathThumb = unititems.elements[5].value;
        var ImagePathIcon = unititems.elements[6].value;
        var MarqueeImagePath = unititems.elements[7].value;
        var MarqueeTitle = unititems.elements[8].value;
        var MarqueeLinkText = unititems.elements[9].value;
        var MarqueeLinkPath = unititems.elements[10].value;
        var FW_DeptCode = unititems.elements[11].value;
        var IconClass = unititems.elements[12].value;
       
        var sql = 'INSERT INTO Department (DepartmentID, Name, CuratorID, DescriptionHeading, Description, DisplayOrder, ImagePathThumb, ImagePathIcon, MarqueeImagePath, MarqueeTitle, MarqueeLinkText, MarqueeLinkPath, FW_DeptCode, IconClass) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)';
        var params = [id, Name, CuratorID, DescriptionHeading, Description, DisplayOrder, ImagePathThumb, ImagePathIcon, MarqueeImagePath, MarqueeTitle, MarqueeLinkText, MarqueeLinkPath, FW_DeptCode, IconClass];

        //console.log(objectType+": "+JSON.stringify(params));
        tx.executeSql(sql, params); 

        //tx.executeSql('INSERT INTO Department (DepartmentID, Name, CuratorID, DescriptionHeading, Description, DisplayOrder, ImagePathThumb, ImagePathIcon, MarqueeImagePath, MarqueeTitle, MarqueeLinkText, MarqueeLinkPath, FW_DeptCode, IconClass) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)',[id, Name, CuratorID, DescriptionHeading, Description, DisplayOrder, ImagePathThumb, ImagePathIcon, MarqueeImagePath, MarqueeTitle, MarqueeLinkText, MarqueeLinkPath, FW_DeptCode, IconClass]);

  };

  var doRecipe = function(tx,unititems) {
        var objectType = unititems.className;
        var id = unititems.id;

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
        var ImagePathLarge = unititems.elements[9].value;
        var ImagePathMosaicLarge = unititems.elements[10].value;
        var ImagePathMosaicSmall = unititems.elements[11].value;
        var ImagePathStepsGrid = unititems.elements[12].value;
        var IsFeatured = unititems.elements[13].value;
        var IsPopular = unititems.elements[14].value;
        var URLPathPlayList = unititems.elements[20].value;

        console.log("Got recipe id "+id+" last moficationdate = "+lastModified);
        
        var sql = 'INSERT INTO Recipe (RecipeID, Name, DescriptionHeading, Description, Serves, SkillLevel, TimeTotal, TimePrep, TimeCook,CaloriesPerServing, ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall,ImagePathStepsGrid,IsFeatured,IsPopular, LastModified, URLPathPlayList) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)';
        var params = [id, Name, DescriptionHeading, Description, Serves, SkillLevel, TimeTotal, TimePrep, TimeCook, CaloriesPerServing, ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall,ImagePathStepsGrid,IsFeatured,IsPopular, lastModified, URLPathPlayList];

       //console.log(objectType+": "+JSON.stringify(params));
       tx.executeSql(sql, params); 
        //tx.executeSql('INSERT INTO Recipe (RecipeID, Name, DescriptionHeading, Description, Serves, SkillLevel, TimeTotal, TimePrep, TimeCook,CaloriesPerServing, ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall,ImagePathStepsGrid,IsFeatured,IsPopular, LastModified, URLPathPlayList) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',[id, Name, DescriptionHeading, Description, Serves, SkillLevel, TimeTotal, TimePrep, TimeCook, CaloriesPerServing, ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall,ImagePathStepsGrid,IsFeatured,IsPopular, lastModified, URLPathPlayList]);
        
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

              var recipeAttrSql = 'INSERT INTO ProductAttributeValue (RecipeID, DataGroup, Label, DataGroupValue, GroupDisplayOrder) VALUES (?,?,?,?,?)';
               var recipeAttrParams = [id, DataGroup,Label,DataGroupValue,GroupDisplayOrder];

               //console.log("RecipeAttributeValue: "+JSON.stringify(recipeAttrParams));
               
               tx.executeSql('INSERT INTO RecipeAttributeValue (RecipeID, DataGroup, Label, DataGroupValue, GroupDisplayOrder) VALUES (' + id + ',"' + DataGroup + '","' + Label + '","' + DataGroupValue + '","'+ GroupDisplayOrder + '")');
              
               });
        var recipestep = unititems.elements[18].value;
        $.each(recipestep, function(key, val) {
               var recipeingtype = val.value;
               
               var DisplayOrder = recipeingtype[0].value;
               var GroupHeading = recipeingtype[1].value;
               var StepNumber = recipeingtype[2].value;
               var Instructions = recipeingtype[3].value;
               var ImagePath = recipeingtype[4].value;
               var TimerDuration = recipeingtype[5].value;
               var AlertHeading = recipeingtype[6].value;
               var AlertMessage = recipeingtype[7].value;
               
               var recipeStepSql = 'INSERT INTO RecipeStep (RecipeID, DisplayOrder, GroupHeading, StepNumber, Instructions, ImagePath, TimerDuration, AlertHeading, AlertMessage) VALUES (?,?,?,?,?,?,?,?,?)';
               var recipeStepParams = [id, DisplayOrder, GroupHeading, StepNumber, Instructions, ImagePath, TimerDuration, AlertHeading, AlertMessage];
               //console.log("RecipeStep: "+JSON.stringify(recipeStepParams));

               tx.executeSql('INSERT INTO RecipeStep (RecipeID, DisplayOrder, GroupHeading, StepNumber, Instructions, ImagePath, TimerDuration, AlertHeading, AlertMessage) VALUES (?,?,?,?,?,?,?,?,?)',[id, DisplayOrder, GroupHeading, StepNumber, Instructions, ImagePath, TimerDuration, AlertHeading, AlertMessage]);
               
               
               });
        if (unititems.elements[19] != null) {
            var recipeing = unititems.elements[19].value;
            $.each(recipeing, function(key, val) {
                   var recipeingtype = val.value;
                   
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
        
  };

  var doReward = function(tx,unititems) {
        var objectType = unititems.className;
        var id = unititems.id;

        var Name = unititems.elements[0].value;
        var Description = unititems.elements[1].value;
        var StartDate = unititems.elements[2].value;

        var ExpireDate = unititems.elements[3].value;
        var ImagePathSmall = unititems.elements[4].value;
        var ImagePathLarge = unititems.elements[5].value;
        var ImagePathBarcode = unititems.elements[6].value;
        var ValueMessage = unititems.elements[7].value;
                         
        var sql = 'INSERT INTO Reward (RewardID, Name, Description, ValueMessage, StartDate, ExpireDate, ImagePathSmall, ImagePathLarge, ImagePathBarcode) VALUES (?,?,?,?,?,?,?,?,?)';
        var params = [id, Name, Description,ValueMessage, StartDate, ExpireDate, ImagePathSmall, ImagePathLarge, ImagePathBarcode];

        // console.log(objectType+": "+JSON.stringify(params));
        tx.executeSql(sql, params);                                   
        //tx.executeSql('INSERT INTO Reward (RewardID, Name, Description, ValueMessage, StartDate, ExpireDate, ImagePathSmall, ImagePathLarge, ImagePathBarcode) VALUES (?,?,?,?,?,?,?,?,?)',[id, Name, Description,ValueMessage, StartDate, ExpireDate, ImagePathSmall, ImagePathLarge, ImagePathBarcode]);

  };

  var doAbout = function(tx,unititems) {
        var objectType = unititems.className;
        var id = unititems.id;

        var Title = unititems.elements[0].value;
        var Version = unititems.elements[1].value;
        var Copyright = unititems.elements[2].value;
        
        var sql = 'INSERT INTO AboutTheApp (AboutID,Title,Version,Copyright) VALUES (?,?,?,?)';
        var params = [id,Title,Version,Copyright];

        // console.log(objectType+": "+JSON.stringify(params));
        tx.executeSql(sql, params); 
        //tx.executeSql('INSERT INTO AboutTheApp (AboutID,Title,Version,Copyright) VALUES (?,?,?,?)',[id,Title,Version,Copyright]);
        
  };

  var doLegal = function(tx,unititems) {
        var objectType = unititems.className;
        var id = unititems.id;

        var Title = unititems.elements[0].value;
        var Overview = unititems.elements[1].value;
        
        var sql = 'INSERT INTO Legal (LegalID,Title,Overview) VALUES (?,?,?)';
        var params = [id,Title,Overview];
                                            
        //tx.executeSql('INSERT INTO Legal (LegalID,Title,Overview) VALUES (?,?,?)',[id,Title,Overview]);
        
       //console.log(objectType+": "+JSON.stringify(params));
       tx.executeSql(sql, params); 

  };

var doCurator = function(tx,unititems) {
        var objectType = unititems.className;
        var id = unititems.id;
          
        var FirstName = unititems.elements[0].value;
        var LastName = unititems.elements[1].value;
        tx.executeSql('INSERT INTO Curator (CuratorID,FirstName,LastName) VALUES (?,?,?)',[id, FirstName, LastName]);
        var posts = unititems.elements[2].value;
        $.each(posts, function(key, val) {
               CuratorPostID = val.id;
               tx.executeSql('INSERT INTO CuratorPostJoin (CuratorID, CuratorPostID) VALUES (?,?)',[id, CuratorPostID]);
        });
};

var doCuratorPost = function(tx,unititems) {
        var objectType = unititems.className;
        var id = unititems.id;

        var lastModified = unititems.modificationDate;
        var PostDate = unititems.elements[0].value;
        var Title = unititems.elements[1].value;
        var Message = unititems.elements[2].value;
        var ImagePathLarge = unititems.elements[3].value;
        var ImagePathMosaicLarge = unititems.elements[4].value;
        var ImagePathMosaicSmall = unititems.elements[5].value;
        var DietPreferences = unititems.elements[7].value;

        $.each(DietPreferences, function(key, val) {
               DietPreferenceID = val.id;
               tx.executeSql('INSERT INTO CuratorPostDietPreference (CuratorPostID, DietPreferenceID) VALUES (?,?)',[id, DietPreferenceID]);
               // console.log("CuratorPost "+id+" gets dietpreference "+DietPreferenceID);
        });

        //console.log("Curator Post "+id+" elements: "+JSON.stringify(unititems.elements));

        tx.executeSql('INSERT INTO CuratorPost (CuratorPostID,PostDate,Title,Message,ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall, LastModified) VALUES (?,?,?,?,?,?,?,?)',[id, PostDate,Title,Message,ImagePathLarge, ImagePathMosaicLarge, ImagePathMosaicSmall,lastModified]);
                                                     
};

var doServiceType = function(tx,unititems) {
        var objectType = unititems.className;
        var id = unititems.id;

//console.log("in doServiceType. id = "+id+" and objecttype = "+objectType);
        var Label = unititems.elements[0].value;
        var DataGroup = unititems.elements[1].value;
        var ImagePathIconClass = unititems.elements[2].value;
        displayorder = displayorder + 1;

        var sql = 'INSERT INTO ServiceType (ServiceTypeID,Label,DataGroup,DisplayOrderInGroup,ImagePathIconClass) VALUES (?,?,?,?,?)';
        var params = [id,Label,DataGroup,displayorder,ImagePathIconClass];

        console.log(objectType+": "+JSON.stringify(params));
        tx.executeSql(sql, params);
//        tx.executeSql('INSERT INTO ServiceType (ServiceTypeID,Label,DataGroup,DisplayOrderInGroup,ImagePathIconClass) VALUES (?,?,?,?,?)',[ServiceTypeID,Label,DataGroup,servicetypecount++,ImagePathIconClass]);

};

var doBestTimeToShop = function(tx,unititems) {
        var objectType = unititems.className;
        var id = unititems.id;
        var Title = unititems.elements[0].value;
        var Description = unititems.elements[1].value;
        var Overview = unititems.elements[2].value;
                                                                                  
        tx.executeSql('INSERT INTO BestTimeToShop (BestTimeToShopID,Title,Description,Overview) VALUES (?,?,?,?)',[id,Title,Description,Overview]);
};

var doGeoRegion = function(tx,unititems) {
        var objectType = unititems.className;
        var id = unititems.id;
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


};

var doStore = function(tx,unititems) {
        var objectType = unititems.className;
        var id = unititems.id;
        var StoreID = id;

        var storeitems = unititems;
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
         var ImagePathStoreLayout = storeitems.elements[11].value;
                   
        var sql = 'INSERT INTO Store (StoreID,Name,Description,Address1,Address2,City,State,PostalCode,Latitude,Longitude,Phone,OpenDate,ImagePathStoreLayout) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)';
        var params = [StoreID,Name,Description,Address1,Address2,City,State,PostalCode,Latitude,Longitude,Phone,OpenDate,ImagePathStoreLayout];
        
        // console.log("Got store: "+JSON.stringify(params));

        tx.executeSql(sql, params);
        // tx.executeSql('INSERT INTO Store (StoreID,Name,Description,Address1,Address2,City,State,PostalCode,Latitude,Longitude,Phone,OpenDate,ImagePathStoreLayout) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)',[StoreID,Name,Description,Address1,Address2,City,State,PostalCode,Latitude,Longitude,Phone,OpenDate,ImagePathStoreLayout]);
                  
         var storeservices = storeitems.elements[12].value;
         $.each(storeservices, function(key, val) {
             storeserviceid = val.id;
                    //var storeserviceSql = 'INSERT or replace INTO StoreService (StoreID,StoreServiceID) VALUES (?,?)'; 
                    //var storeserviceParams = [StoreID,storeserviceid];


// HERE -- instead of getting the storeservice info from the API, SELECT it from the StoreServiceLookup table!

             var lookupSql = "SELECT * FROM StoreServiceLookup where StoreServiceID=?";
             // console.log("Lookup StoreService id "+storeserviceid);
             tx.executeSql(lookupSql, [storeserviceid], 
                    function(tx,results){ 
                                    // console.log("select from StoreServiceLookup got " + results.rows.length);
                                    for (var i=0; i<results.rows.length; i++) {
                                      var ServiceTypeID = results.rows.item(i).ServiceTypeId;
                                      var Description = results.rows.item(i).Description;
                                      var ImagePathLarge = results.rows.item(i).ImagePathLarge;
                                      var StoreServiceHours = results.rows.item(i).StoreServiceHours;

                                      // console.log("select from StoreServiceLookup got " + JSON.stringify(results.rows.item(i)));

                                      
                                      tx.executeSql('INSERT INTO StoreService (StoreID,ServiceTypeID,Description,ImagePathLarge) VALUES (?,?,?,?)',[StoreID,ServiceTypeID,Description,ImagePathLarge]);  

                                      //console.log("Storeservice id = "+storeserviceid+" And Hours are: "+StoreServiceHours);
                                      var hoursobj = $.parseJSON(StoreServiceHours);

                                      $.each(hoursobj, function(key, val) {
                                        //console.log("Hours key = "+key+" and val = "+JSON.stringify(val));
                                             storehoursattrtype = val.value;
                                             var DayID = storehoursattrtype[0].value;
                                             var OpenTime = storehoursattrtype[1].value;
                                             var CloseTime = storehoursattrtype[2].value;
                                             //console.log("Meaning DayID = "+DayID+" OpenTime = "+OpenTime+" CloseTime = "+CloseTime);
                                            tx.executeSql('INSERT INTO StoreHours (StoreID,ServiceTypeID,DayID,OpenTime,CloseTime) VALUES (?,?,?,?,?)',[StoreID,ServiceTypeID,DayID,OpenTime,CloseTime]);
                                      });
                                  }
                    },
                    dbErrorHandler

             );
             // var storeserviceurl = 'http://' + servername + '/webservice/rest/object/id/' + storeserviceid + '?apikey=' + apikey;
             // $.getJSON(storeserviceurl, function(storeservicedata) {
             //    var storeserviceitems=storeservicedata.data;
             //    db.transaction(function(tx) {
             //                var ServiceTypeID = storeserviceitems.elements[0].value[0].id;
             //        var Description = storeserviceitems.elements[1].value;
             //        var ImagePathLarge = ImageDic[storeserviceitems.elements[2].value];
                    
             //        //tx.executeSql('INSERT INTO StoreService (StoreID,ServiceTypeID,Description,ImagePathLarge) VALUES (?,?,?,?)',[StoreID,ServiceTypeID,Description,ImagePathLarge]);                                            
             //        // var storeserviceSql = 'INSERT or replace INTO StoreService (StoreServiceID, ServiceTypeID,Description,ImagePathLarge, StoreID) VALUES (?,?,?,?,(select StoreID from StoreService where StoreServiceId = ?))',[storeserviceid,ServiceTypeID,Description,ImagePathLarge,storeserviceid]);
                               
             //        //Insert the store hours for this service type
             //        var storehours = storeserviceitems.elements[3].value;
             //        $.each(storehours, function(key, val) {
             //              storehoursattrtype = val.value;
             //              var DayID = storehoursattrtype[0].value;
             //              var OpenTime = storehoursattrtype[1].value;
             //              var CloseTime = storehoursattrtype[2].value;
             //              tx.executeSql('INSERT INTO StoreHours (StoreID,ServiceTypeID,DayID,OpenTime,CloseTime) VALUES (?,?,?,?,?)',[StoreID,ServiceTypeID,DayID,OpenTime,CloseTime]);
             //         });
                               
             //     },
             //     this.txErrorHandler,
             //       function(tx) {}
             //     );
             //  });
          });
                
          // overall store hours   
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
};

var doStoreService = function(tx,unititems) {
        var objectType = unititems.className;
        var id = unititems.id;
        var storeserviceid = id;

        

        var sql = 'INSERT INTO StoreServiceLookup (StoreServiceID, ServiceTypeId, Description, ImagePathLarge, StoreServiceHours) VALUES (?,?,?,?,?)';

        // console.log("\n ServiceTypeId is "+JSON.stringify(unititems.elements[0].value));
        var ServiceTypeId = unititems.elements[0].value[0].id;
        var Description = unititems.elements[1].value;
        var ImagePathLarge = unititems.elements[2].value;
        var StoreServiceHours = JSON.stringify(unititems.elements[3].value);  // this is a nested JSON object with hours entries

        var params = [id, ServiceTypeId, Description, ImagePathLarge, StoreServiceHours];

        // console.log("\n\n"+objectType+" "+id+": "+JSON.stringify(unititems)+"\n"+JSON.stringify(params));
        tx.executeSql(sql, params);


};


var clearAllDataTables = function(tx) {
  console.log("In clearAllDataTables with transaction: "+tx);

                               
                tx.executeSql('DROP TABLE IF EXISTS DietPreference');
                tx.executeSql('CREATE TABLE IF NOT EXISTS DietPreference (DietPreferenceID INTEGER, Name, Abbreviation, DisplayOrder, Description, ImagePathIcon, IconClass)');
                
                tx.executeSql('DROP TABLE IF EXISTS ProductDietPreference');
                tx.executeSql('CREATE TABLE IF NOT EXISTS ProductDietPreference (ProductID,DietPreferenceID)');
                tx.executeSql('DROP TABLE IF EXISTS RecipeDietPreference');
                tx.executeSql('CREATE TABLE IF NOT EXISTS RecipeDietPreference (RecipeID,DietPreferenceID)');
                
                
                tx.executeSql('DROP TABLE IF EXISTS TagType');
                tx.executeSql('CREATE TABLE IF NOT EXISTS TagType (TagID, TagLabel, TagValue, TagType)');
                
               
                tx.executeSql('DROP TABLE IF EXISTS Product');
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

               // Stores
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

                // this is a temporary join table to allow us to get a storeservice data when we have the store data, so we can create the correct storeservice and storehours (per service) records
                tx.executeSql('DROP TABLE IF EXISTS StoreServiceLookup');
                tx.executeSql('CREATE TABLE IF NOT EXISTS StoreServiceLookup (StoreServiceID primary key, ServiceTypeId, Description, ImagePathLarge, StoreServiceHours)'); // note: store service hours must be json of all hours data
    
    console.log("Fired off all drop and create table statements");              
};
