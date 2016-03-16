class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @students = Student.new
  end

  def create
    @student = Student.create!(student_params)
    @student.house_id = rand(House.count)
    if @student.save
      redirect_to :action => :index
    end
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url, :house_id)
  end
end
