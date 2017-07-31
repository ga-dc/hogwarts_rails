class HousesController < ApplicationController
  #index
  def index
    @houses = House.all
  end
  #show
  def show
    @house = House.find(params[:id])
  end

end
