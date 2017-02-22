class StudentsController < ApplicationController

  def index
    # @house = House.find(params[:house_id])
    @students = Student.all
  end

  def show
    # @house = House.find(params[:house_id])
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.house= House.all.sample
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(song_params)
    redirect_to student_path(@student)
  end

private
def student_params
  params.require(:student).permit(:name, :img_url)
end
end
