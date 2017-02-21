class HousesController < ApplicationController

  def index
    @house = House.all
  end

  def show
    @house = House.all
  end

end
