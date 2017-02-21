class StudentsController < ApplicationController

  def index
    @student = Student.all
  end

  def show
    @student = student.find(params[:id])
  end

end
