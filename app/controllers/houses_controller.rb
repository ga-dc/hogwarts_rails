class HouseController < ApplicationController

  def index
    @houses = Houses.all
  end

  def show
    @house = House.find(params[:id])
  end

end
