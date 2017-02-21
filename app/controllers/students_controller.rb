class StudentsController < ApplicationController

  def index
    @house = House.find(params[:house_id])
    # @student = Student.all
    @student = @house.students.find(params[:id])
  end

  def show
    @student = Student.find(params[:id])
  end

end
