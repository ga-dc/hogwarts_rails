class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @houses = House.all
  end

  def create
  end

end
