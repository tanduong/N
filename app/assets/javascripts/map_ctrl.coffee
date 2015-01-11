app = angular.module "myApp"

class MapCtrl
  constructor: (@scope) ->
    @scope.mapOptions =
      center: new google.maps.LatLng(35.784, -78.670)
      zoom: 15
      mapTypeId: google.maps.MapTypeId.ROADMAP
    @scope.myMarkers = []

  addMarker: ($event, $params) ->
    @scope.myMarkers.push new google.maps.Marker
      map: @scope.myMap
      position: $params[0].latLng

  markerClicked: (m) ->
    console.log(m)
    index = @scope.myMarkers.indexOf(m)
    m.setMap(null)
    @scope.myMarkers.splice(index, 1)

  markerHover: (marker) ->
    @scope.currentMarker = marker
    @scope.currentMarkerLat = marker.getPosition().lat()
    @scope.currentMarkerLng = marker.getPosition().lng()
    @scope.myInfoWindow.open(@scope.myMap, marker)

  setMarkerPosition: (marker, lat, lng) ->
    marker.setPosition(new google.maps.LatLng(lat, lng))

app.controller 'MapCtrl', [
    '$scope'
    MapCtrl
  ]
