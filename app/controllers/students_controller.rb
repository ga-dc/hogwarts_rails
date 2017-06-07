class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @house = House.find(params[:house_id])
    @student = @house.students.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    # @house = House.find(params[:artist_id])
    house_id = rand(1..4).to_i
    @house = House.find_by(id: house_id)
    @student = @house.students.create!(student_params)
    redirect_to house_student_path(@house, @student)
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url, :house_id)
  end

end
