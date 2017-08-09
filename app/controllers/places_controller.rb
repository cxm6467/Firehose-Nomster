class PlacesController < ApplicationController

  ## Make sure a user is logged in first
  before_action :authenticate_user!, only: [:new, :create]

  ## An action for the index view
  def index
    @places = Place.paginate(:page => params[:page], :per_page => 3)
  end

  ## Action to controller creation of new places
  def new
    @place = Place.new
  end

  ##
  def create
    current_user.places.create(place_params)
    redirect_to root_path
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end

end
