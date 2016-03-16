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
    @house = House.all
    @student = Student.create(params.require(:student).permit(:name, :img_url, :house_id))
    if @student.save
      redirect_to :action => :index
    end
  end
end
