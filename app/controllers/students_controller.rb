class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @students = Student.find(params[:id])
  end

  def create
    @students = Student.new(student_params)
    @students.assign
    @students.save!
    redirect_to @students
  end

  def new
    @students = Student.new
  end

  def destroy
    @students = Student.find(params[:id])
    @students.destroy
    redirect_to students_path
  end

  private
  def student_params
    params.require(:student).permit(:name)
  end

end
