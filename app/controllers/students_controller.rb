class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  # new
def new
  @student = Student.new
end

# create
def create
  @student = Student.new(student_params)
  @student.assign
  @student.save
  redirect_to @student
end

def destroy
  @student = Student.find(params[:id])
  @student.destroy
  redirect_to students_path
end


private
def student_params
  params.require(:student).permit(:name, :img_url)
end

end
