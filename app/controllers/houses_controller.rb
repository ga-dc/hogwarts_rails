class HousesController < ActionController::Base

  def index
    @houses = House.all
  end

  def show
    @houses = House.all
  end

end
