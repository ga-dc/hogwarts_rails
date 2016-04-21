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
    houses = House.all
    house = houses.sample
    new_person = Student.new(student_params)
    new_person.house_id = house.id
    new_person.save
    redirect_to students_path
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url)
  end

end
