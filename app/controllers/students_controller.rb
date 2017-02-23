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
    @student = Student.create!(student_params)
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
    @student.update(student_params)
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url, :house_id)
  end

end
