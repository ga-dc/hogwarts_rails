class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @students = Student.find(parems[:id])
  end

end
