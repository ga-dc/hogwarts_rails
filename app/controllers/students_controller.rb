class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.house = House.all.sample
    @student.save
    redirect_to students_path(@student)
  end

  def student_params
    params.require(:student).permit(:name, :img_url)
  end
end
