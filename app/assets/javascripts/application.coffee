//= require jquery
//= require jquery_ujs
//= require bootstrap-sass-official
//= require angular/angular
//= require angular-route/angular-route
//= require angular-ui-utils/ui-utils
//= require angular-ui-map/ui-map
//= require template_path
//= require map
//= require_self

@onGoogleMapReady = ->
  setTimeout ->
      $('body').html("<div ng-view></div>")
      angular.bootstrap(document, ["myApp"])
    , 1000
