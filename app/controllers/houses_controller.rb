class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @houses = House.find(params[:id])
  end

  def show
    @student = Student.find(params[:id])
  end

end
