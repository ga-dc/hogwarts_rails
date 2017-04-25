class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @students = Student.all
    @house = House.find(params[:id])
  end

end
