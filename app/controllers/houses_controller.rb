#must change some from singular to plural, and vice versa
class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @houses = House.all
  end

end
