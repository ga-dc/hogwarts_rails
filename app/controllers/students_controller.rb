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
    @student = @house.students.create!(student_params)
    redirect_to students_path
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url)
  end
end
