class HousesController < ApplicationController

  def index
    @house = Houses.all

  end

  def show
    @house = House.find(params[:id])
  end

end
