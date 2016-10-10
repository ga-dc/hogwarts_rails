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
    @student = Student.create(strong_params)
    redirect_to student_path(@student)
  end

  private
  def strong_params
    params.require(:student).permit(:name, :img_url)
  end
end
