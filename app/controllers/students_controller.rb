class StudentsController < ActionController

  def index
    @students = Student.all
  end

  def show
    @students = Student.find(params[:id])
  end

end
