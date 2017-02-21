class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
    puts "*" * 60
    puts "*" * 60
    puts params.inspect
    puts "*" * 60
    puts "*" * 60
  end

end
