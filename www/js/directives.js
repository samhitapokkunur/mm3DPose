'use strict';

/* Directives */
angular.module('myApp.directives', [])
    .directive('appVersion', ['version', function(version) {
        return function(scope, elm, attrs) {
          elm.text(version);
}}]);

angular.module('myApp.directives', [])
  .directive('focusThis', function ($parse) {
    return function (scope, element, attrs) {
      var model = $parse(attrs.focusThis);
      scope.$watch(model, function(value) {
        if (value === true) {
          element.focus();
        }
      });
      /*$("#" + element.attr('id')).blur('blur', function() {
        console.log('hello');
        scope.$apply(model.assign(scope, false));
      });*/
    }
  });

angular.module('myApp.directives', [])
  .directive("ngTap", function() {
  return function($scope, $element, $attributes) {
    var tapped;
    tapped = false;
    $element.bind("click", function() {
      if (!tapped) {
        return $scope.$apply($attributes["ngTap"]);
      }
    });
    $element.bind("touchstart", function(event) {
      return tapped = true;
    });
    $element.bind("touchmove", function(event) {
      tapped = false;
      return event.stopImmediatePropagation();
    });
    return $element.bind("touchend", function() {
      if (tapped) {
        return $scope.$apply($attributes["ngTap"]);
      }
    });
  };
});
