class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(houses_params)
  end
  def new
    @house = House.new
  end
  private
  def houses_params
    params.require(:house).permit(:name, :img_url)
  end
end
