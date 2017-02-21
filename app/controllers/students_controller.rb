class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = student.find(:id)
  end
end
