

if (!window.GA) {
    window.GA = {
    trackerWithTrackingId: function(id) {
        //PhoneGap.exec("GoogleAnalyticsPlugin.trackerWithTrackingId",id);
        //PhoneGap.exec(id, id, "GoogleAnalyticsPlugin", "trackerWithTrackingId",[id]);
        //cordova.exec("GoogleAnalyticsPlugin.trackerWithTrackingId",id);

        cordova.exec(null, null, "GoogleAnalyticsPlugin", "trackerWithTrackingId",[id]);
    },
    trackView: function(pageUri) {
        //PhoneGap.exec("GoogleAnalyticsPlugin.trackView",pageUri);
        cordova.exec(null, null, "GoogleAnalyticsPlugin", "trackView",[pageUri]);
    },
    trackEventWithCategory: function(category,action,label,value) {
        var options = {category:category,
        action:action,
        label:label,
            value:value};
        //PhoneGap.exec("GoogleAnalyticsPlugin.trackEventWithCategory",options);
        //cordova.exec(null,null,"GoogleAnalyticsPlugin","trackEventWithCategory",[options]);
        cordova.exec(null, null, "GoogleAnalyticsPlugin", "trackEventWithCategory",[{"category":"User_40","action":"Products Landing","label":"","value":""}]);
    },
    hitDispatched: function(hitString) {
        //console.log("hitDispatched :: " + hitString);
    },
    trackerDispatchDidComplete: function(count) {
        //console.log("trackerDispatchDidComplete :: " + count);
    }
    }
    
}