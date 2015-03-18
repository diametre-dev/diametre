class LocationsController < ApplicationController
  def index
    @locations = Location.all

    # Let's DYNAMICALLY build the markers for the view.
    @markers = Gmaps4rails.build_markers(@locations) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
      marker.title location.name
      marker.infowindow (location.name.capitalize + "<br>" + location.address + "<div class='map-description'>" + location.description + "</div>")
    end
  end
end
