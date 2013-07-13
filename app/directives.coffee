angular
  .module('app.directives', [])
  .directive('appVersion', (version) ->
    return (scope, elm, attrs) ->
      elm.text version
  )