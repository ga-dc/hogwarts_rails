class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    # @house = House.find(params[:house_id])
    # @student = @house.student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    @student.sorting_hat
    @student.save!
    redirect_to students_path
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url)
  end
end
