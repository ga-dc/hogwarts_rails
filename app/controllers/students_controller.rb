class StudentsController < ApplicationController

  def index
    @students = Student.all
    @houses = House.all
  end

  def show
    @student = Student.find(params[:id])
    find_id = Student.find(params[:id]).house_id
    @house = House.find(find_id)
  end

end
