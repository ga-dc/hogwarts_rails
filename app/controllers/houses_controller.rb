class HouseController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @houses = House.find(parems[:id])
  end

end
