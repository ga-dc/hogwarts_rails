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
    Student.create(student_params)
    redirect_to students_path
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

end

private
def student_params
  params.require(:student).permit(:name, :img_url)
end
