class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
    @house_id = House.all.sample.id
  end

  def create
    @student = Student.create!(student_params)
    @house_id = House.all.sample.id

    redirect_to student_url(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  private

  def student_params
    params.require(:student).permit(:name, :img_url, :house_id)
  end

end
