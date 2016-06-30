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
      @student = Student.new(student_params)
      @student = Student.sorting_hat @student
      @student = Student.create!({:name => @student.name, :img_url => @student.img_url, :house => @student.house})
      redirect_to student_url(@student)
  end

  private
  def student_params
      params.require(:student).permit(:name, :img_url)
  end

end
