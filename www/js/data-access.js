/*
 * Fairway App Data Access Functions
 * TODO: move sql from Controllers to DataAccess Layer
 */

var fwDatabase = {
   open: function() {
      return window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
   }
}; 


//
//
//
var _ShoppingListItem_Table = function() {
 
  var db, userId, listId;
  var InsertRowSql, DropTableSql, CreateTableSql, SelectSql, SelectAllSql;
  
  // api functions
  var ReadAll, 
      DeleteAll, 
      DeleteSet,
      ReplaceAll, 
      PushItem, 
      PushRecipeIngredients,
      CreateTbl;

  // properties

  // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  // these values are hardcoded because multiple lists and multiple users are not implemented yet
  userId = 40;
  listId = 1;
  db = null;
  // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  InsertRowSql =  'INSERT OR IGNORE INTO User_ShoppingListItem (UserID, ListID, Name, DisplayOrder, isChecked, Quantity, created) ' 
                  + 'VALUES (?,?,?,?,?,?,?)' ;
  DropTableSql = 'DROP TABLE IF EXISTS User_ShoppingListItem';
  DeleteAllSql = 'DELETE FROM User_ShoppingListItem';
  SelectAllSql = 'SELECT * FROM User_ShoppingListItem ORDER BY isChecked ASC, DisplayOrder ASC';

  CreateTableSql =  'CREATE TABLE IF NOT EXISTS User_ShoppingListItem ('
                    +'  UserID INTEGER'
                    +', ListID INTEGER'
                    +', Name'
                    +', DisplayOrder INTEGER'
                    +', isChecked INTEGER'
                    +', Quantity'
                    +', created DATE)';     
  MinSequenceSql = 'SELECT MIN(DisplayOrder) - 1 As MinSequence FROM User_ShoppingListItem WHERE isChecked = 0';                             
  

  //
  //
  //
  ReCreateTable = function () {

    // alert('CreateTable');
    
    var err = function(tx, e) {
      console.log("ReCreateTable Error processing SQL: " + e.message);
    };

    var ok = function(){};

    db = fwDatabase.open();
    db.transaction(function(tx) { tx.executeSql(DropTableSql) }, err, ok); 
    db.transaction(function(tx) { tx.executeSql(CreateTableSql) }, err, ok); 

  } ;
  //
  //
  //
  
  CreateTable = function () {

    // alert('CreateTable');
    
    var err = function(tx, e) {
      alert("CreateTable Error processing SQL: " + e.message);
    };

    var ok = function(){};

    db = fwDatabase.open();
    db.transaction(function(tx) { tx.executeSql(CreateTableSql) }, err, ok); 

  } ;

  //
  //
  //                   
  ReplaceAll = function (checkedItems, uncheckedItems) {
      //alert('replace all');

      db = fwDatabase.open();
      db.transaction( function(tx) { 
      
      tx.executeSql(DeleteAllSql);
      
      insertList(checkedItems, '1');
      insertList(uncheckedItems, '0');

      function insertList(arr, isChecked) {
          var i, len, d, timestamp;
          len = arr.length;
          d = new Date();
          timestamp = d.getTime();

          for (i = 0 ; i < len; i ++ ) {
            tx.executeSql(InsertRowSql, [userId, listId , arr[i].name, i, isChecked, 0, timestamp]);
          } 
      } 
    });
  };

 //
 //
 //                   
  ReplaceSet = function (Items,isChecked) {
      
      var delSql; 
      delSql = DeleteAllSql + ' WHERE isChecked =' + isChecked;

      db = fwDatabase.open();
      db.transaction( function(tx) { 
      
          tx.executeSql(delSql);
          
          insertList(Items, isChecked);
          
          function insertList(arr, isChecked) {
              var i, len, d, timestamp;
              len = arr.length;
              d = new Date();
              timestamp = d.getTime();

              for (i = 0 ; i < len; i ++ ) {
                tx.executeSql(InsertRowSql, [userId, listId , arr[i].name, i, isChecked, 0, timestamp]);
              } 
          } 
    });
  };
  //
  //
  //
  DeleteSet = function (isChecked) {
      
      var delSql; 
      delSql = DeleteAllSql + ' WHERE isChecked =' + isChecked;

      db = fwDatabase.open();
      db.transaction( function(tx) {     
        tx.executeSql(delSql);
    });
  };

  //
  // 
  //
  ReadAll = function (successCB) {

    var execSuccess, execError, tranSuccess, tranError;
    var retVal, checkedList, uncheckedList;

    retVal = {};
    checkedList = [];
    uncheckedList = [];

    // populate return value
    execSuccess = function(tran, res) {
      var len, i;
      len = res.rows.length;
      for (i = 0; i < len ; i++ ) {
        var obj = {};
        obj.name = res.rows.item(i).Name;
        if (res.rows.item(i).isChecked)
          checkedList.push(obj);
        else
          uncheckedList.push(obj);
      } 
      retVal.checked = checkedList;
      retVal.unchecked = uncheckedList;    
    };

    // fire up callback function 
    tranSuccess = function (tran) {
        if (successCB !== undefined ) {
          successCB(retVal);
        }
    };

    tranError = function (tran,err) {
    };

    execError = function(tran, err) {
        console.log(err.message);
    };

    
    db = fwDatabase.open();
    db.transaction( function(tx) {     
      tx.executeSql(SelectAllSql,[], execSuccess, execError);
    }, tranError, tranSuccess);

  };
  //
  //
  //
  PushItem = function (item, tranSuccess, tranError) {
    var d, timestamp;
    d = new Date();
    timestamp = d.getTime();

    function insertItem(tx, rs) {
        var sequence = rs.rows.item(0).MinSequence;
        tx.executeSql(InsertRowSql, [userId, listId, item.name, sequence, 0, 0, timestamp]);         
    }
       
    db = fwDatabase.open();
    db.transaction( function(tx) {    
          tx.executeSql(MinSequenceSql,[], insertItem );
        }  
    ,tranError, tranSuccess);
  };
  
  //
  //
  //
  PushRecipeIngredients = function (recipeId, tranSuccess, tranError) {
    
    var d, timestamp, sequence;
    d = new Date();
    timestamp = d.getTime();

    var getIngredientsSql = 'SELECT Name From RecipeIngredient WHERE RecipeID = ' + recipeId; 

    // get min sequence and call next db command
    db = fwDatabase.open();
    db.transaction( 
      function(tx) {
        console.log('get sequence') ;   
        tx.executeSql(MinSequenceSql,[], processItems, function(tx, err) {console.log(err.message)});
      }  
    ,tranError, tranSuccess);

    // retrieve ingredients and call next db command
    function processItems(tx, rs) {
      sequence = rs.rows.item(0).MinSequence;
      tx.executeSql(getIngredientsSql,[], insertItems);
    }

    // insert using right sequence
    function insertItems(tx, rs) {
      var len, i;
      len = rs.rows.length;

      for (i = 0; i < len; i++) {
        tx.executeSql(InsertRowSql, [userId, listId, rs.rows.item(i).Name, sequence - (len - i), 0, 0, timestamp]);         
      }
    }
  };

  //
  //  API
  //

  _ShoppingListItem_Table.prototype.CreateTable = CreateTable;
  _ShoppingListItem_Table.prototype.ReCreateTable = ReCreateTable;
  _ShoppingListItem_Table.prototype.ReplaceAll = ReplaceAll;
  _ShoppingListItem_Table.prototype.ReplaceSet = ReplaceSet;
  _ShoppingListItem_Table.prototype.ReadAll = ReadAll;
  _ShoppingListItem_Table.prototype.PushItem = PushItem;
  _ShoppingListItem_Table.prototype.PushRecipeIngredients = PushRecipeIngredients;
  _ShoppingListItem_Table.prototype.DeleteSet = DeleteSet;
};


var _LastUpdate_Table = function() {
  
  
  var gettimestamp = function(cb , formatted) {
      var sql = "SELECT LastUpdateTime, datetime(LastUpdateTime/1000, 'unixepoch') as ReadableTS from LastUpdate";
      var db, ok, err;
      var timestamp, ReadableTS;

      tranSuccess = function(tx) {
        //alert(timestamp);
        /*
        var date = new Date(t);
        var year = date.getFullYear();
        var month = date.getMonth() + 1;
        var day =  date.getDate()
        var minutes = date.getMinutes();
        var seconds = date.getSeconds();
        // will display time in 21:00:00 format
        var formattedTime = hours + ':' + minutes + ':' + seconds;
        */
        if (formatted) 
          cb(ReadableTS);
        else
          cb(timestamp); 
      };

      tranError = function(e) {
        console.log("_LastUpdate_Table.gettimestamp Transaction error: "+e.message);
      };


      db = fwDatabase.open();
      db.transaction( function(tx) {    
          tx.executeSql(sql,[], function (tx,res) { 
            if (res.rows.length > 0) {
              timestamp = res.rows.item(0).LastUpdateTime; 
              ReadableTS = res.rows.item(0).ReadableTS;
            }
        }
      , function(tx,e) { console.log("_LastUpdate_Table .gettimestamp SQL error: "+e.message);}
      );

      },tranError, tranSuccess);
  };
  //
  //
  //
  _LastUpdate_Table.prototype.GetTimestamp = gettimestamp;   

};

/////////////////////////////////////////////////////////////

var ShoppingListItem_Table = new _ShoppingListItem_Table();
var LastUpdate_Table = new _LastUpdate_Table();

//
//
//
var DataAccess = {
  CreateLocalTables: function() {
      ShoppingListItem_Table.CreateTable();
  },
  userId:40  //TODO : implement select from user table
};

/*
 Test timestamp

 var f = function(t) {
    alert(t);
 };

LastUpdate_Table.GetTimestamp(f, false);
LastUpdate_Table.GetTimestamp(f, true);
*/

/////////////////////////////////////////////////////
// TEST Shopping List Table API
////////////////////////////////////////////////////

/*
function T_TableCreate() {
  console.log('creating...');
  ShoppingListItem_Table.CreateTable();  
}

function T_Insert() {
  console.log('writing...');
  var list = [], list2 = [];
  list[0] = {};
  list[0].name = "name1";

  list[1]= {};
  list[1].name = "name2";

  list2[0] = {};
  list2[0].name = "nameA";

  list2[1]= {};
  list2[1].name = "nameB";

  ShoppingListItem_Table.ReplaceAll (list, list2);
}

function T_Read() {
  console.log('reading...');
  function gotIt(o) {
    console.log(o.checked.length);
    console.log(o.unchecked.length);
  }
  ShoppingListItem_Table.ReadAll(gotIt);
}



$(function() {
  $("#create").bind("click",T_TableCreate);
  $("#insert").bind("click",T_Insert);
  $("#read").bind("click",T_Read);
});
*/
