class StudentsController < ApplicationController

	def index
		@students = Student.all
	end

	def new
	end

	def show
		@student = Student.find(params[:id])
	end

	def create
		if params[:do_destroy]
			params[:destroy].each{|id|
				Student.find(id.to_i).destroy
			}
			redirect_to students_url
			return
		elsif params[:do_resort]
			params[:resort].each{|id|
				stud = Student.find(id.to_i)
				stud.update(house_id: stud.reSort(id))
			}
			redirect_to students_url
			return
		else
			@house = House.sortingHat
			@student = @house.students.create(student_params)
			@student.save
			redirect_to students_url
		end
	end

	def destroy
		Student.find(params[:id]).destroy
		redirect_to students_url
	end

	private
	def student_params
		params.require(:student).permit(:name,:house)
	end

end
