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
  @student= Student.new(student_params)
  @student.house_id=House.all.sample.id
  @student.save
  redirect_to student_path(@student)

  end

 def student_params
   params.required(:student).permit(:name, :img_url)
 end

end
