class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @new_student = Student.new
    @new_student.house_id = (1..4).to_a.sample.to_i
    puts "*" * 60
    puts "*" * 60
    puts @new_student
    puts @new_student.house_id
    puts "*" * 60
    puts "*" * 60
  end

  def create

    @new_student = Student.create!(student_params)
    redirect_to student_path(@student)
  end

  def sorting_hat
    # house_id: 1
    #@student.house_id = 1
    # house = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"].sample
    # params[:house_id] = house
  end

  private
    def student_params
      params.require(:student).permit(:name, :img_url, :house)
    end

end
