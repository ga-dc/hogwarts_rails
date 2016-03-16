class StudentsController < ActionController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(:id)
  end

end
