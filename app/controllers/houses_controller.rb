class HouseController < ApplicationController

  def index
    @houses = Houses.all
  end

  def show
    @houses = houses.find(:id)
  end

end
