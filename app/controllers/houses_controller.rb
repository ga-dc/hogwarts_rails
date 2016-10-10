class HousesController < ApplicationController
  def index
    @house = House.all
  end
  def show
    @houses = House.all
  end
end
