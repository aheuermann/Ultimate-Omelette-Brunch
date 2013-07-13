angular
  .module('app.filters', [])
  .filter('interpolate', (version)->
      return (text) ->
        return String(text).replace /\%VERSION\%/mg, version
  );