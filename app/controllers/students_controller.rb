class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.house = House.all.sample
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end
  private
  def student_params
    params.require(:student).permit(:name, :img_url, :house_id)
  end
end

# @article = Article.new(params.require(:article).permit(:title, :text))
#
# def create
#   @article = Article.new(article_params)
#
#   @article.save
#   redirect_to @article
# end
#
