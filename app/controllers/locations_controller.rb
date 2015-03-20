class LocationsController < ApplicationController
  def index
    @locations = Location.all

    # Let's DYNAMICALLY build the markers for the view.
    @markers = Gmaps4rails.build_markers(@locations) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
      marker.title location.name
      marker.infowindow ( "<div class='map-infowindow'>" + "<div class='map-infowindow-header'>" + "<strong>" + location.name.upcase + "</strong>" + "<br>" + "</div>" + "<em>" + location.address + "</em>" + "<div class='map-infowindow-body'>" + location.description + "</div>" + "</div>")
    end
  end
end
