class StudentsController < ActionController

  # index
  def index
    @house = House.find params[:house_id]
    @students = @house.students.all
  end

  # new

  # create

  # show
  def show
    @house = House.find params[:house_id]
    @student = @house.students.find(params[:id])
    # @student = student.find(:id)
  end

  # edit

  # update

  # destroy


end
