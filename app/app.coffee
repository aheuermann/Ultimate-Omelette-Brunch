# Declare app level module which depends on filters, and services
angular.module('app', [
  'ui.bootstrap'
  'ngCookies'
  'ngResource'
  'app.controllers'
  'app.directives'
  'app.filters'
  'app.services'
])
.config(($routeProvider, $locationProvider) ->
  $routeProvider
    .when('/view1', {templateUrl: '/partials/view1.html', controller:"Ctrl1"})
    .when('/view2', {templateUrl: '/partials/view2.html', controller:"Ctrl2"})

    # Catch all
    .otherwise({redirectTo: '/view1'})
)