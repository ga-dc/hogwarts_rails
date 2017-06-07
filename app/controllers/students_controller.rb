class StudentsController < ApplicationController
  # before_action :find_house

  def index
    @houses = House.all
    @student = Student.all
  end

  def show
    @student = Student.all
    # @houses = House.find(params[:id])
    # @student = Student.find(params[:id])
    @house = House.all
  end

  def new
  end
  # private
  # def find_house
    # @house = House.find(params[:house_id])
  # end
end
