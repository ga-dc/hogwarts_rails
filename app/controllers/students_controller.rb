class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @students = Student.new
  end

  def create
  @student = Student.create(name: params[:name], house[:house], img_url:params[:img_url])
  end
end
