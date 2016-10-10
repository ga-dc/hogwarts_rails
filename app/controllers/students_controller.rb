class StudentsController < ApplicationController

  # index
  def index
    @students = Student.all
  end

  # new

  # create

  # show
  def show
    @student = Student.find params[:id]
  end

  # edit

  # update

  # destroy


end
