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
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  # destroy
  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url, :house_id)
  end

end
