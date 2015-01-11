app = angular.module "myApp"
app.config ["$routeProvider", "$locationProvider", ($routeProvider, $locationProvider) ->
    $routeProvider
    .when "/",
      templateUrl: ASSET_PATH.mapView
  ]
