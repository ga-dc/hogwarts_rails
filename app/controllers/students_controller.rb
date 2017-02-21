class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(paramas[:id])
  end

end
