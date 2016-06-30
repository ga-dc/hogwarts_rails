class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = house.find(params[:id])
  end

end
