class HousesController < ApplicationController

#index
  def index
    @houses = House.all
    @house = House.new
  end

#show
  def show
    @house = House.find(params[:id])
    @houses = House.all
  end

#new
def new
  @house = House.new
end


#create
def create
  @house = House.create!(house_params)

end


#edit

#update

#delete

private

def house_params
  params.require(:house).permit(:name, :image_url)
end

end
