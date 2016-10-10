class StudentsController < ActionController

  def index
    @students = Student.all
  end

  def show
    @student = student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url)
  end


end
