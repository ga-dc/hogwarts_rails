class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  def new
    # @house = House.find(params[:house_id])
  @student = Student.new
  end
  def create
    @student = Student.new(student_params)
    @student.house_id = rand(33..36)
    @student.save
    redirect_to houses_path
  end
private
def student_params
  params.require(:student).permit(:name, :img_url, :house_id)

end
end
