class StudentsController < ApplicationController

  def index
    @student = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end


  def create
    @student = Student.create(params[:id])
    redirect_to @student
  end
  
end
