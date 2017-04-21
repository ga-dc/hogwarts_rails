class StudentsController < ApplicationController

  def index
    @students = Student.all
    @houses = House.all
  end

  def show
    @student = Student.find(params[:id])
    @house = House.find(@student.house_id)
  end

  def new
    @student = Student.new 

  end

  # create
  def create

    @student = @house_rand.students.create(student_params)
    @house_rand = random
    redirect_to student_path(@student)
  end

  private
  def random
  	house_num = (1..4).shuffle
  	return [gryffindor, hufflepuff, ravenclaw, slytherin].at(house_num)
  end

end
