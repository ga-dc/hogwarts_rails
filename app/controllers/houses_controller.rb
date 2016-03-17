class HousesController < ApplicationController

  def index
    @houses = Houses.all
  end

  def show
    @house = House.find(:id)
  end

end
