class HouseController < ApplicationController

  def index
    @houses = Houses.all
  end

  def show
    @houses = Houses.all
  end

end
