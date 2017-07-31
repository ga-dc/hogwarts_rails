class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @house = @student.house
  end

  def new
    @student = Student.new
  end

  def create
    @house = House.all.sample
    @student = @house.students.create!(student_params)
    redirect_to "/students/#{@student.id}"
  end

  private
  def student_params
    params.require(:student).permit(:img_url, :name)
  end


end
