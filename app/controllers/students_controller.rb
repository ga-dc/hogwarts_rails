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
    @student = Student.create(student_params)
    sorting_hat(@student)
    @student.save
    redirect_to student_path(@student)
  end

  def sorting_hat(student)
    student.house_id = (1..4).to_a.sample.to_i
  end

  private
    def student_params
      params.require(:student).permit(:name, :img_url, :house_id)
    end

end
