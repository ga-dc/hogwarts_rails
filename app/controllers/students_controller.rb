class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
      @student = Student.new
  end

  # def create
  #     @student = Student.create!()
  #       redirect_to artist_song_path(@artist, @song)
  # end

end
