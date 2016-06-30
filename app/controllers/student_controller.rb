class StudentsController < ApplicationController
  # index
  def index
    @students = Student.all
  end

  # new
  def new
    @house = House.find(params[:house_id])
    @student = Student.new
  end

  # create
  def create
    @house = House.find(params[:house_id])
    @student = Student.create!(student_params.merge(house: @house))
    redirect_to house_student_path(@house, @student)
  end

  #show
  def show
    @student = Student.find(params[:id])
  end

  # edit
  def edit
    @student = Student.find(params[:id])
  end

  # update
  def update
    @student = Student.find(params[:id])
    @house = House.find(params[:house_id])
    @student.update(student_params.merge(house: @house))
    redirect_to house_student_path(@student.house, @student)
  end

  def add_favorite
    @student = Student.find(params[:id])
    @student.favorites.create(user: current_user)
    @house = @student.house
    redirect_to @house
  end

  def remove_favorite
    @student = Student.find(params[:id])
    @student.favorites.where(user: current_user).destroy_all
    @house = @student.house
    redirect_to @house
  end

  # destroy
  def destroy
    @student = student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  private
  def student_params
    params.require(:student).permit(:name, :preview_url, :house_id)
  end
end
