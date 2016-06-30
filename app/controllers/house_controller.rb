class HouseController < ActionController

  def index
    @houses = House.all
  end

  def show
    @houses = Houses.all
  end

end
