class StudentsController < ApplicationController

  def index
    @house = House.find(params[:house_id])
    @students = @house.students
  end

  def show
    @house = House.find(params[:house_id])
    @student = Student.find(params[:id])
  end

end
