GeoLocator =
  getLocation: ->
    console.log 'Fething location'
    positionOutput = $('#demo')
    if navigator.geolocation
      console.log 'Gonna get current position'
      navigator.geolocation.getCurrentPosition(GeoLocator.showPosition)
    else
      $('#demo').innerHTML = "Geolocation is not supported by this browser."

  showPosition: (position) ->
    console.log 'Show Position:' + ' ' + position.coords.latitude
    $('#demo').text("<h1>TEST</h1>")
    # "Latitude: " + position.coords.latitude + "<br>Longitude: " + position.coords.longitude
    handler = Gmaps.build("Google")
    handler.buildMap
      provider: {}
      internal:
        id: "map"
    , ->
      markers = handler.addMarkers([
        lat: 0
        lng: 0
        picture:
          url: "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png"
          width: 36
          height: 36

        infowindow: "hello!"
      ])
      handler.bounds.extendWith markers
      handler.fitMapToBounds()

jQuery ->
  console.log 'Run'


  $("#locate").click ->
    console.log 'Click'
    GeoLocator.getLocation()


