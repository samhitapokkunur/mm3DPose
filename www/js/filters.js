'use strict';

/* Filters */
angular.module('myApp.filters', []).
  filter('interpolate', ['version', function(version) {
    return function(text) {
      return String(text).replace(/\%VERSION\%/mg, version);
    }
  }]);


angular.module('myApp.filters', []).filter('capitalize_first_letter', function() {
  return function (input) {
    return input.slice(0,1).toUpperCase() + input.slice(1);
  }
}).filter('clean_up_phone', function() {
  return function (input) {
    return "1-" + input.replace('\(', '').replace('\)', '').replace(' ', '-');
  }
});
