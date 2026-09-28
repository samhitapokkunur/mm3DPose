// error callback for db call
function errorCB(err) {
  console.log('error code: ' + err.code + ', error message: ' + err.message);
  return false;
}

/* 
 * general function to query db using phonegap api
 * sql - a sql statement string
 * key_array - an array of strings corresponding to desired column names from result set
 * callback - custom function to handle data, takes an array
 * 
 * successCB is called on a successful database query and passes an array of
 * JavaScript objects with key-value pairs of column_name: row_value (column_name
 * comes from the key_array passed into top level function, row_value is from db)
 * to callback function passed in at top level
 */
function dbLookup(sql, key_array, callback) {
  
  // initialize window db connection
  var db = window.openDatabase("FairwayMarket", "1.0", "Fairway Market", 200000);
  
  // function that actually queries db using tx, takes sql
  function queryDB (tx) {
    tx.executeSql(sql, [], successCB, errorCB);
  }

  function successCB (tx, results) {
    var len = results.rows.length;
    var return_array = [];

    for (var i=0; i < len; i++) {
      var tmp = {};
      for (var j=0; j < key_array.length; j++) {
        tmp[key_array[j]] = results.rows.item(i)[key_array[j]];
      }
      return_array.push(tmp);
    }
    callback(return_array);
  }
  
  db.transaction(queryDB, errorCB);
}

// function to draw map
function drawMap (arr, map_id, link_path, addInfoWindow, zoom) {
  var markers = [];
  var inactive_icon = 'img/locations-imgs-aff/Locations-MapPin.png';
  var active_icon = 'img/locations-imgs-aff/Locations-MapPin-active.png';
  zoom = zoom || 14;

  function createLinkHTML (name, id, path, addr) {
    var content = '<div id="innerInfoBox"><img src="img/infoBox.png" />'
    content += '<div id="textBox"><a href="index.html#/' + path + id +'/">';
    content += '<div class="infoBoxName">' + name + '</div>';
    content += addr ? '<div class="infoBoxAddress">' + addr + '</div>' : "";
    return content + '</a></div></div>';
  }

  function resetMarkers(markers) {
    for (var i=0; i < markers.length; i++) {
      markers[i][0].setIcon(inactive_icon);
    }
  }

  var myOptions = {
    zoom: zoom,
    scrollwheel: false,
    navigationControl: true,
    mapTypeControl: false,
    scaleControl: false,
    draggable: true,
    disableDefaultUI: true,
    zoomControl: true,
    disableDoubleClickZoom: true,
    mapTypeId: google.maps.MapTypeId.ROADMAP,
    center: new google.maps.LatLng(arr[0].lat, arr[0].lng)
  };

  var map = new google.maps.Map(document.getElementById(map_id), myOptions);
  var mapBounds = new google.maps.LatLngBounds();

  for (var i=0; i < arr.length; i++) {
    var markerlocation = new google.maps.LatLng(arr[i].Latitude, arr[i].Longitude);
    var marker = new google.maps.Marker({
      position: markerlocation,
      map: map,
      title: arr[i].Name,
      icon: inactive_icon
    });
    
    var html_message = createLinkHTML(arr[i].Name, arr[i].StoreID,
                                      link_path, arr[i].Address1);
    
    markers.push([marker, html_message]);
    
    if (arr.length > 1)
      mapBounds.extend(markerlocation);
  }

  if (markers.length == 1) {
    map.setZoom(zoom);
    map.setCenter(marker.getPosition());
  }

  if (addInfoWindow) {
    var infoBoxOptions = {
      content: 'test',
      zIndex: null,
      boxStyle: {
        content: 'test',
      },
      disableAutoPan: false,
      closeBoxMargin: "15px 2px 2px 2px",
      infoBoxClearance: new google.maps.Size(50, 50),
      pixelOffset: new google.maps.Size(-79, 2),
    };
    var ib = new InfoBox(infoBoxOptions);
    google.maps.event.addListener(ib, 'closeclick', function() {
      resetMarkers(markers);
    });

    for (var i=0; i < markers.length; i++) {
      google.maps.event.addListener(markers[i][0], 'click', (function (marker, content) {
      return function () {
        resetMarkers(markers);
        marker.setIcon(active_icon);
        ib.setContent(content);
        ib.open(map, marker);
      }
      })(markers[i][0], markers[i][1]));
    }
  }
  if (markers.length > 1) {
    google.maps.event.addListener(map, 'zoom_changed', function() {
      zoomChangeBoundsListener = 
          google.maps.event.addListener(map, 'bounds_changed', function(event) {
              if (this.getZoom() > 1 && this.initialZoom == true) {

                  this.setZoom(11);
                  // special case zoom for pelham manor and nanuet locations
                  if (markers.length == 2 && (markers[0][1].match('Pelham') || 
                                              markers[1][1].match('Pelham')))
                    this.setZoom(10);
                  this.initialZoom = false;
              }
          google.maps.event.removeListener(zoomChangeBoundsListener);
      });
    });
    map.initialZoom = true;
    map.fitBounds(mapBounds);
  }

  google.maps.event.addListener(map, 'click', function() {
    resetMarkers(markers);
    ib.close();
  });
}
