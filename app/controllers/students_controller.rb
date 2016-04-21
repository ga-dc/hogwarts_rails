class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def shows
    @students = student.find(:id)
  end

end
