class HouseController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(:id)
  end

end
