class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def create
    @house = House.create!(house_params)

    redirect_to house_path(@house)
  end
  private
  def house_params
    params.required(:house).permit(:name, :img_url, :created_at, :updated_at)
  end
end
