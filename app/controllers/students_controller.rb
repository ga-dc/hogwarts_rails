class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    @houses = House.all
    @houses_id = @houses.map {|house| house.id}
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url, :house_id)
  end

end
