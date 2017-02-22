class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  # create
  def create
    @student = Student.create!(student_params)

    redirect_to student_path(@student)
  end

end
