class StudentsController < ApplicationController

  def index
    @student = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

end
