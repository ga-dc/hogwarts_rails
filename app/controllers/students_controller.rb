class StudentsController < ApplicationController

  def index
    # @house = House.all
    @students = Student.all
  end

  def show
    # @house = House.all
    @student = Student.find(params[:id])
  end

  # def new
  #   @student = Student.new
  # end
  #
  # def create
  #   @student = Student.create(student_params)
  # end
  #

  private
     def student_params
       params.require(:student).permit(:name, :img_url)
     end
end
