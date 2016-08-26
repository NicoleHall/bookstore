class LocationsController < ApplicationController

  def show
    @location = Location.find(params[:id])
  end

  def inventory
    @locations = Location.all
  end

end
