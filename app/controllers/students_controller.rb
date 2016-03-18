class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create!(student_params)
    @student.house = House.random_house
    @student.save!
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url)
  end


end
