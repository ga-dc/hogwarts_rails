class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  # new
  def new
    @student = Student.new
  end
  # create
  def create
    @student= Student.create!(student_params)
    redirect_to students_path
  end

  def show
    @student = Student.find(params[:id])
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url)
  end

end
