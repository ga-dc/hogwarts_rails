class StudentsController < ApplicationController

#index
  def index
    @students = Student.all
    # @student = Student.find(params[:id])
  end

#show
  def show
    @student = Student.find(params[:id])
  end
  # redirect_to house_student_path(@student)

#new
  def new
    @student = Student.new
  end
  # @house = House.find(params[:id])
  # @student = @house.students.new

#create
  def create
    @student = Student.new(student_params)
    @student.house_id = House.all.sample.id
    @student.save!
    redirect_to student_path(@student)
  end
  # @house = House.find(params[:id])
  # @student = @house.students.create!(student_params)

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
