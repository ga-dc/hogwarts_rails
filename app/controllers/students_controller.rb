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
    @student = Student.new(student_params)
    @student.house = @house
    @student.save

    redirect_to "/students/#{@student.id}"
  end

private
  def student_params
    params.require(:student).permit(:name, :img_url)
  end

end
