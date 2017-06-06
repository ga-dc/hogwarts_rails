class HousesController < ApplicationController
  def index
    @houses = House.all
  end
  def show
    @houses = House.find(params[:id])
  end
  def create
    @houses = House.create!(name: params[:house])
    redirect_to "/houses/#{@houses.id}"
  end

end
