class StudentsController < ActionController

  def index
    @student = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end
end
