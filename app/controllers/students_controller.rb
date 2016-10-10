class StudentsController < ActionController

  def index
    @students = Student.all
  end

  def show
    @students = Student.find(:id)
  end

end
