angular
  .module('app.controllers', [])
  .controller('Ctrl1', ($scope, $dialog) ->
    $scope.opts =
      backdrop: true
      keyboard: true
      dialogFade: true
      backdropClick: true
      templateUrl: '/partials/dialog.html'
      controller: 'DialogCtrl'

    $scope.openDialog = ->
      d = $dialog.dialog $scope.opts
      d.open().then (result) ->
        alert "dialog closed with result: #{result}" if result
          
  )
  .controller('Ctrl2', ->

  )
  .controller('DialogCtrl', ($scope, dialog) ->
    $scope.close = -> dialog.close()

  )