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
    @houses = House.all
    @student = Student.new(student_params)
    @student.house_id = rand(@houses[0][:id]..@houses[3][:id])
    @student.save!

    redirect_to @student
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url)
  end

end
