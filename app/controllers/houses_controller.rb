class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def create
    @house = House.create!(house_params)
    redirect_to @house
  end


  private
  def house_params
    params.require(:house).permit(:name,:img_url)
  end

end
