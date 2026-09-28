/*
var AddToFilters = function (ItemType,TagID,TagLabel, stayOnPage) {
    //alert(ItemType + "---" + TagID + "--" + TagLabel);
    var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
    db.transaction(
                   function(tx) {
                   //if (TagID != '0') {
                   if (TagLabel == "department") {
                        var dept = (ItemType == "products" ? 0 : 1);
                        tx.executeSql("Delete from User_DepartmentPreference Where DisplayOrder=0 And IsHidden=" + dept);
                        
                        tx.executeSql('INSERT INTO User_DepartmentPreference (UserID, DepartmentID, DisplayOrder, IsHidden) Values (?,?,?,?)',[40,TagID,0,dept]);
                   } else {
                       if (TagID == '0') {
                            tx.executeSql("Delete from User_Filters Where ItemType='" + ItemType + "' And TagLabel='" + TagLabel + "'");
                       }
                       tx.executeSql("Delete from User_Filters Where Status=0 And ItemType='" + ItemType + "' And TagLabel='" + TagLabel + "'");
                       tx.executeSql('INSERT INTO User_Filters (ItemType,TagID,TagLabel,Status) Values (?,?,?,?)',[ItemType,TagID,TagLabel,0]);
                   }
           
           if (!stayOnPage) {
             
          history.back();
           }
                   //}
                   }
                   );
    
};
//////
var CancelFilters = function (ItemType) {
    
    
};
var DoneFilters = function (ItemType) {
    
};
////////
function getItemType() {
  return angular.element('section').scope().params.ItemType;
};

///////
var FlipSwitch = function(){
  var ItemType = getItemType();

  if ($(this).is(':checked')) {
    AddToFilters(ItemType,9999,'dietpreference', true);
  }   
  else {
    AddToFilters(ItemType,0,'dietpreference', true);  //?????
  }
      
};
  
// bind
$('header .doneLink').on('click', function(e){
                  e.preventDefault();
                var ItemType = getItemType();
                                var dept = (ItemType == "products" ? 0 : 1);
                                var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
                                db.transaction(
                                    function(tx) {
                                        var sql = "Select * from User_Filters Where Status=0 And ItemType='" + ItemType + "'";
                                        tx.executeSql(sql, [],
                                                     function(tx, results) {
                                                       var len = results.rows.length;
                                                       for (var i=0; i<len; i++) {
                                                         tx.executeSql("Delete From User_Filters Where Status=1 And TagLabel='" + results.rows.item(i).TagLabel + "'");
                                                      
                                                       }
                                                       tx.executeSql("Update User_Filters Set Status=1");
                                                       //location.href="index.html#/" + ItemType + "-landing/"
                                                     }
                                                    )
                                        var sql = "Select * from User_DepartmentPreference Where DisplayOrder=0 And IsHidden=" + dept;
                                        tx.executeSql(sql, [],
                                                     function(tx, results) {
                                                       var len = results.rows.length;
                                                       for (var i=0; i<len; i++) {
                                                      tx.executeSql("Delete from User_DepartmentPreference Where DisplayOrder=1 And IsHidden=" + dept);
                                                      tx.executeSql("Update User_DepartmentPreference Set DisplayOrder=1 Where IsHidden=" + dept);
                                                      
                                                       }
                                                       location.href="index.html#/" + ItemType + "-landing/"
                                                     }
                                                    )
                                        
                                    }
                                    
                                );
               });
  
$('header .cancelLink').on('click', function(e){
                  e.preventDefault();
                var ItemType = getItemType();
                                var dept = (ItemType == "products" ? 0 : 1);
                                var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
                                db.transaction(
                                    function(tx) {
                                    tx.executeSql("Delete from User_Filters Where Status=0 And ItemType='" + ItemType + "'");
                                    tx.executeSql("Delete from User_DepartmentPreference Where DisplayOrder=0 And IsHidden=" + dept);
                                    location.href="index.html#/" + ItemType + "-landing/"
                                });
                //history.back();
               });

$('#onoffswitch').on('click',FlipSwitch);
*/

