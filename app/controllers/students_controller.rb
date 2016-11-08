class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to students_path
    end

  def create
    new_student = Student.new(student_params)
    new_student.house_id = House.test
    new_student.save
    redirect_to students_path
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  private
  def student_params
    params.require(:student).permit(:name, :house_id)
  end

end
