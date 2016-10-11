class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
    @student = Student.find(params[:id])
    @students = Student.all
  end

end
