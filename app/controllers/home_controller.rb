class HomeController < ApplicationController
  def home
      @lat_lng = cookies[:lat_lng].split("|") unless cookies[:lat_lng].nil?
      @pois = Poi.all
  end
end
