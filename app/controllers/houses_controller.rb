class HousesController < ApplicationController

  def index
    @houses = Houses.all
  end

  def show
    @houses = Houses.find(params[:id])
  end

end
