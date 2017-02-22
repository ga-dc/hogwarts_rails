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
    @house = House.all.sample
    @student = Student.create!(student_params.merge(house: @house))
    redirect_to student_path(@student)
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url)
  end
end
