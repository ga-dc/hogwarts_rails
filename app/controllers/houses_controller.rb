class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(pararms[:id])
  end

end
