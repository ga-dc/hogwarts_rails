class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
       @student = student.find(:id)          # GIRO:  BOTH WAYS WORK
    # @student = Student.find(params[:id])  # GIRO:  THIS MTD FROM LISA
  end

end
