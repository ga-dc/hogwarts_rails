class StudentsController < ActionController

  def index
    @student = Student.all
  end

  def show
    @student = Student.find(:id)
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(house_params)
    redirect_to "/students/#{@student.id}"
  end

end
