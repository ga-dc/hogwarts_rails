class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create!(student_params)
    redirect_to students_path
  end

def sorting_hat
  @spec = House.all.sample.id
end

  private
  def student_params
    params.require(:student).permit(:name, :img_url).merge!({house_id: sorting_hat})
  end

end
