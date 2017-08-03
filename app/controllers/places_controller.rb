class PlacesController < ApplicationController

  ## An action for the index view
  def index
    @places = Place.all
  end
end
