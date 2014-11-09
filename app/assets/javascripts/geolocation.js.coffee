GeoLocator =
  getLocation: ->
    console.log 'Fething location'
    if navigator.geolocation
      navigator.geolocation.getCurrentPosition(GeoLocator.showPosition)
    else
      alert "Geolocation is not supported by this browser."

  showPosition: (position) ->
    current_latitude = position.coords.latitude
    current_longitude = position.coords.longitude
    handler = Gmaps.build("Google")
    handler.buildMap
      provider: {}
      internal:
        id: "map"
    , ->
      markers = handler.addMarkers([
        lat: current_latitude
        lng: current_longitude
        zoom: 1
        picture:
          url: "http://mythoughtspot.ca/media/uploads/default_map_all_1407956913_m.png"
          width: 36
          height: 36
 #       infowindow: "hello!"
      ])
      handler.bounds.extendWith markers
      handler.fitMapToBounds()

jQuery ->
  GeoLocator.getLocation()


