class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @house = House.find(params[:house_id])
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @house = House.find(params[:house_id])
    @student.house = @house

    if @student.save
        redirect_to @house, notice: "#{@student.name} was sucessfully created."
      else
        render "houses/show"
      end
    end

    def edit
      @student = Student.find(params[:id])
      @house = @student.house
    end

    def update
      @student = Student.find(params[:id])
      @house = House.find(params[:house_id])
      @student.house = @house

    if @student.update(student_params)
      redirect_to @student.house, notice: "#{@student.name} sucessfully updated."
    else
      render :edit
    end
  end

  private
  def student_params
    params.require(:student).permit(:name, :img_url, :house_id)
  end

end
