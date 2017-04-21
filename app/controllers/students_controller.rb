class StudentsController < ApplicationController

  def index
    @students = Student.all
    @houses = House.all
  end

  def show
    @student = Student.find(params[:id])
    @house = House.find(@student.house_id)
  end

end
