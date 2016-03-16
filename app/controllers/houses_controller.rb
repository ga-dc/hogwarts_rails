class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  private
  def house_params
    params.required(:house).permit(:name, :img_url, :created_at, :updated_at)
  end
end
