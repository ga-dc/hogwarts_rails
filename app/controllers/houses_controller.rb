class HousesController < ApplicationController

  def index
    @houses = Houses.all
  end

  def show
    @houses = House.find(params[:id])
  end

end
