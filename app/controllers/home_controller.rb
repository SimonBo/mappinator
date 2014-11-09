class HomeController < ApplicationController
  def home
      @lat_lng = cookies[:lat_lng].split("|") unless cookies[:lat_lng].nil?
      @pois = Poi.all.where.not(latitude: nil)
      @lat_lng = cookies[:lat_lng].split("|")
      
      @hash = Gmaps4rails.build_markers(@pois) do |poi, marker|
        marker.lat poi.latitude
        marker.lng poi.longitude
        marker.infowindow poi.name
        marker.json({ title: poi.name })
    end
  end

end
