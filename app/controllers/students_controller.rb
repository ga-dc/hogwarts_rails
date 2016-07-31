class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @current_house = House.find(@student.house_id)
  end

end
