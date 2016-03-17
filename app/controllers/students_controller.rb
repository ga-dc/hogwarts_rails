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
    houses = House.all.shuffle
    house = houses.pop
    @student = Student.new(student_params)
    @student.house = house
    @student.save
    redirect_to student_path(@student)
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url)
  end
end
