class HousesController < ApplicationController

  def index
    @house = House.all
  end

  def show
    @house = House.find(params[:id])
  end

end
