GeoLocator =
  getLocation: ->
    if navigator.geolocation
      navigator.geolocation.getCurrentPosition(GeoLocator.setGeoCookie)
      navigator.geolocation.getCurrentPosition(GeoLocator.showPosition)
    else
      alert "Geolocation is not supported by this browser."

  showPosition: (position) ->
    # console.log "Latitude" + position.coords.latitude
    # console.log "Longitude" + position.coords.longitude

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

  setGeoCookie: (position) ->
    cookie_val = position.coords.latitude + "|" + position.coords.longitude;
    document.cookie = "lat_lng=" + escape(cookie_val);

jQuery ->
  if document.cookie.indexOf("lat_lng") > -1
    coord_container = $('#map').attr('data-coord')
    coord_lat= coord_container.substr(2, 10);
    temp = coord_container.substr(16, coord_container.length - 3);
    coord_lng = temp.substr(0, temp.length - 3)
    position = {
      coords: { latitude: coord_lat, longitude: coord_lng}
    }
    GeoLocator.showPosition(position)
  else
    GeoLocator.getLocation()