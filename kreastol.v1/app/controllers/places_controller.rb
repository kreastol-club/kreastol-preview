class PlacesController < ApplicationController

  def create
    @place = Place.new(place_params)

    if @place.save
      flash[:notice] = "Place has been created"
      redirect_to event_templates_path
    else
      flash[:alert] = "Something went wrong"
      redirect_to event_templates_path
    end
  end

  private

  def place_params
    params.require(:place).permit(:city, :street, :link)
  end
end