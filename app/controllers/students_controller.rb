class StudentsController < ApplicationController

  def index
    @house = House.find(params[:house_id])
    @students = @house.students.all
  end

  def show
    @house = House.find(params[:house_id])
    @student = Student.find(params[:id])
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url, :house_id, :created_at, :updated_at)
  end
end
