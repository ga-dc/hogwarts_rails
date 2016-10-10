class StudentsController < ActionController

  def index
    @students = Student.all
  end

  def show
    @student = student.find(params[:id])
  end
  

end
