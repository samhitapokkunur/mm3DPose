console.log("Loading initializeDb");

var dbErrorHandler = function(err) {
      console.log("DB Error: "+err.message + "\nCode="+err.code);
 //     alert("DB Error: "+err.message + "\nCode="+err.code);
      app.removeSplashAndReloadHomeScreen();  // so an error doesn't cause app to hang
};
//

var dbTxSuccessCb = function(tx) {
    console.log("db transaction success");
};




var dbdumpfile = ""
function initDbFromSqlDump() {
  // Load all db data from saved sql dump file

  console.log("In initDbFromSqlDump.  Built-in asset files in: "+app.props.builtinAssetPath+" and local storage in "+app.props.downloadAssetPath);

  // read in sql dump file into a string
  dbdumpfile = app.props.builtinAssetPath+"sqlitedbdump.sql";

  console.log("looking for db dump file "+dbdumpfile);

  $.ajax({
      url : 'assets/sqlitedbdump.sql',
      type : "get",
      dataType : "text",
      success : function(data, textStatus, jqXHR) {

        console.log("replacing the image paths");
    // regex replace of image paths that was used in David's simulator, with the path for this installed app, so all image paths are correct
    // replace "/Users/dgochfeld/Library/Application%20Support/iPhone%20Simulator/6.1/Applications/DDC5B020-D787-472C-9DA7-52335A443BE6/Fairway.app/www/assets//" 
    //    with builtinAssetPath

       // data = data.replace(/\/Users\/dgochfeld\/Library\/Application%20Support\/iPhone%20Simulator\/6.1\/Applications\/896884CC-94A7-43E3-AD47-4A77DF9052A7\/Documents\/Fairway.app\/www\/assets\/\//g,app.props.builtinAssetPath);
        
        data = data.replace(/__BUILTINASSETPATH__\/?/g,app.props.builtinAssetPath);
        console.log('data replaced ');

        console.log("split into array");
        var sqlarray = data.split(");\n");

        console.log("got "+sqlarray.length+" sql statements");

         // tx.executeSql for the whole damn string
        var db = fwDatabase.open();
        console.log("got db = "+db);
        db.transaction(
           function(tx) {

              console.log("executing the sql");
              for(i=0;i<sqlarray.length;i++) {

                  if (i%100 == 0) {
                    console.log("at db statement #"+i);
                  }

                if (sqlarray[i]!="") {
//                  console.log("sql "+i+": "+sqlarray[i]+');');
                  tx.executeSql(sqlarray[i]+');');
                }
              }
            },
            function(err) {// fail
              console.log("db insert did not work\n\t"+"DB Error: "+err.message + "\n\tCode="+err.code);
              app.props.nowInitializingDb = false;  // let other processes know that we're not initializing db anymore
              populateImageDic(app.removeSplashAndReloadHomeScreen);
            },
            function() { //success
              
              db.transaction(
                     function(tx) {
                         tx.executeSql('select ImagePathBarCode from User',[],
                            function(tx, results) {  // success
                                       console.log("hello:" + results.rows.length);
                               imagepath = results.rows.item(0).ImagePathBarCode;
                               console.log("got user metadata" + imagepath);
                               if (imagepath.indexOf("assets") > 0) {
                                 imagepath = imagepath.substr(imagepath.lastIndexOf("/"));
                                 tx.executeSql("Update User set ImagePathBarCode='" + imagepath + "'");
                               }
                          });
                     },
                     function(err) {// fail
                        console.log("db init: fixing barcode path failed\n\t"+"DB Error: "+err.message + "\n\tCode="+err.code);
                        app.props.nowInitializingDb = false;  // let other processes know that we're not initializing db anymore
                        populateImageDic(app.removeSplashAndReloadHomeScreen);
                     },
                     function() {
                         console.log("db should be loaded");
                         app.props.nowInitializingDb = false;  // let other processes know that we're not initializing db anymore
                         // console.log("trying redirect to reload home");
                         // location.href="index.html#/home-reload";
                         populateImageDic(app.removeSplashAndReloadHomeScreen);
                     }
              );
              /*
              console.log("db should be loaded");
              app.props.nowInitializingDb = false;  // let other processes know that we're not initializing db anymore
              // console.log("trying redirect to reload home");
              // location.href="index.html#/home-reload";
              populateImageDic(app.removeSplashAndReloadHomeScreen);
              */
            }
          );
      },
      error : function(jqXHR, textStatus, errorThrown) {
            console.log('error loading data :' + errorThrown);
      }
  });  // end $.ajax
}  // end initDbFromSqlDump

console.log("Loaded initializeDb.js");

