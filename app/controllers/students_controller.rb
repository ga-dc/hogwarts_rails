class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)

    redirect_to students_path(@student)
  end

  def show
    @student = student.find(params[:id])
  end

end
