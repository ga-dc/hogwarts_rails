class HousesController < ApplicationController

	def index
		@houses = House.all
	end

	def show
		@house = House.find(params[:id])
	end

	def create
		@house = House.new(house_params)
		flash[:notice] = "Error!" unless @house.save
		redirect_to houses_url
	end

	def destroy
		House.find(params[:id]).destroy
		redirect_to houses_url
	end

	private
	def house_params
		params.require(:house).permit(:name)
	end

end
