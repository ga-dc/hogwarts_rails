class StudentsController < ActionController
end 
  def index
    @students= Student.all
  end

  def show
    @students= student.find(:id)
  end
