class Admin::PlacesController < ApplicationController
  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.save!
    redirect_to admin_places_path
  end

  def index
    @places = Place.page(params[:page])
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    @place.update(place_params)
    redirect_to admin_places_path
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to admin_places_path
  end

  private

  def place_params
    params.require(:place).permit(:place, :address)
  end

end
