class HouseController < ApplicationController
end
  def index
    @houses = House.all
  end

  def show
    @houses = House.all
  end
