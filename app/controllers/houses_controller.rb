class HousesController < ApplicationController

  def index
    @houses = Houses.all
  end

  def show
    @houses = House.all
  end

end
