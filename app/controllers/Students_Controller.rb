class StudentsController < ApplicationController

  def index
    @student = Student.all
  end

  def show

  end

  private


end
