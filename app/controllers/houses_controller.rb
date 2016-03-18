#must change some from singular to plural, and vice versa
class HousesController < ApplicationController

  def index
    @houses = House.all
  end

#assign params
  def show
    @houses = find(params[:id])
  end

end
