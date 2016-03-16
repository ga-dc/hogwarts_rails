class HousesController < ApplicationController

  #index
  def index
    @houses = House.all
    @house = House.new
  end

  #show
  def show
    @house = House.find(params[:id])
    @houses = House.all
  end

  #new
  def new
    @house = House.new
  end

  #create
  def create
    @house = House.create!(house_params)
  end

  #edit
  def edit
    @house = House.find(params[:id])
  end

  #update
  def update
    @house = House.find(params[:id])
    @house.update(house_params)
  end

  #delete
  def destroy
    @house = House.find(params[:id])
    @house.destroy
  end

  private

  def house_params
    params.require(:house).permit(:name, :image_url)
  end

end
