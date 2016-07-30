class StudentsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end


end
