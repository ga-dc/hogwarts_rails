class StudentsController < ApplicationController

  def index
    @student = Student.all
  end

  def show
    @student = student.find(:id)
  end

  def new
    @student = Student.new
  end

  # create
  def create
    @student = Student.create(student_params)

    redirect_to "/students/#{@student.id}"
  end

end
