class HousesController < ApplicationController

  def index
    @houses = Houses.all
  end

  def show
    @house = Houses.find(params[:id])
  end

end
