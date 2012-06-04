html5mode = ($locationProvider) -> $locationProvider.html5Mode(true)

routes = ($routeProvider) -> $routeProvider
  .when('/', {template: 'list.html', controller: MyCtrl })
  .otherwise({redirectTo: '/'})

angular.module('my-app', [])
  .config(html5mode)
  .config(routes)

@MyCtrl = ($scope) ->
  $scope.ok = "Yes!"
