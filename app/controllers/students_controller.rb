class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create!(student_params)

    redirect_to "/students/#{@student.id}"
  end

  def show
    @student = Student.find(params[:id])
  end

end
