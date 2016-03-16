class StudentsController < ActionController

  def index
    @students = Students.all
  end

  def show
    @student = Student.find(:id)
  end

end
