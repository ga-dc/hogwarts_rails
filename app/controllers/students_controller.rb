class StudentsController < ApplicationController

  def index
    @student = Student.all
  end

  def show
    @student = Student.find(:id)
  end

end
