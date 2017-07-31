class HousesController < ApplicationController

  def index
    @houses = House.all

  end

  def show
    @house = House.find(params[:id])
  end

  def edit
    @house = House.find(params[:id])

  end

  def create
    @house = House.create!(house_params)
    redirect_to "/houses/#{@houses.id}"
end
