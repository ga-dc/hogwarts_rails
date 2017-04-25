class HousesController < ApplicationController

  def index
    @houses = Houses.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    @house = House.create!(house_params)
    redirect_to house_path(@house)
  end

end
