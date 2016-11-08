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
    newStudent = Student.new(student_params)
    newStudent.house_id = Student.test
    newStudent.save!
    redirect_to students_path
  end

private
  def student_params
    params.require(:student).permit(:name, :img_url, :house_id)
  end

end
