class StudentsController < ApplicationController

#index
  def index
    @students = Student.all
    @student = Student.find(params[:id])
  end

#show
  def show
    @student = Student.find(params[:id])
    redirect_to house_student_path(@student)
  end

#new
  def new
    @house = House.find(params[:id])
    @student = @house.students.new
  end

#create
  def create
    @house = House.find(params[:id])
    @student = @house.students.create!(student_params)
  end

#edit
  def edit
    @student = Student.find(params[:id])
  end


#update
  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
  end

  #delete
  def delete
    @student = Student.find(params[:id])
    @student.destroy
  end

private

def student_params
  params.require(:student).permit(:name, :img_url, :house_id)
end

end
