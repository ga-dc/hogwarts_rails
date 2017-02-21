class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    puts "*" * 60
    puts "*" * 60
    puts params.inspect
    puts "*" * 60
    puts "*" * 60
  end

end
