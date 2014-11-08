GeoLocator =
  getLocation: ->
    if navigator.geolocation
      navigator.geolocation.getCurrentPosition(GeoLocator.showPosition)
    else
      alert "Geolocation is not supported by this browser."

  showPosition: (position) ->
    allPois = JSON.parse($('#map').attr('data-pois'));
    allPois.push({"lat":position.coords.latitude,"lng":position.coords.longitude,"infowindow":"You","title":"You-title"});

    handler = Gmaps.build("Google")
    handler.buildMap
      provider: {}
      internal:
        id: "map"
    , ->
      markers = handler.addMarkers(allPois)
      user = markers[(allPois.length-1)]
      handler.map.centerOn(user);
      # handler.bounds.extendWith markers
      # handler.fitMapToBounds()

jQuery ->
  GeoLocator.getLocation()
