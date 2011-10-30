class PlacesController < ApplicationController
  helper :application

  def show
    @place = Place.new(:name => params[:name])
  end
  
end
