# Declare app level module which depends on filters, and services
angular.module('app', [
  'ngCookies'
  'ngResource'
  'app.controllers'
  'app.directives'
  'app.filters'
  'app.services'
])
.config([ '$routeProvider', ($routeProvider, $locationProvider, config) ->
  $routeProvider
    .when('/view1', {templateUrl: '/partials/view1.html'})
    .when('/view2', {templateUrl: '/partials/view2.html'})

    # Catch all
    .otherwise({redirectTo: '/view1'})
])