class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @house = House.find(params[:house_id])
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

end
