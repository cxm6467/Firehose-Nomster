class PlacesController < ApplicationController

  ## An action for the index view
  def index
    @places = Place.paginate(:page => params[:page], :per_page => 3)
  end

  ## Action to controller creation of new places
  def new
    @place = Place.new
  end
end
