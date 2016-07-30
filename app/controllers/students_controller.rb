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
    @student = Student.create!(name: student_params[:name], img_url: student_params[:img_url], house: hat_sort)
    redirect_to @student
  end

  private

  def student_params
    params.require(:student).permit(:name, :img_url)
  end

  def hat_sort
    houses = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]
    return House.find_by(name: houses.sample)
  end

end
