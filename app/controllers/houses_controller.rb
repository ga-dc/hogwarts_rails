              #############################################
              # 201702221638L     EL MARTES   GIRO
              # GIRO:  CHANGED ActionController to ApplicationController
              # GIRO:  CHANGED HousesController to HousesController

class HousesController < ApplicationController

  def index
    @houses = House.all   # GIRO: DOUBLECHECKED IN CHROME, THE INSTANCE VAR IS "@houses"   Showing /Users/justingiron/Dropbox/3/x/wdi/homework/due_201702240900L/hogwarts_rails/app/views/houses/index.html.erb where line #6 raised: undefined method `each' for nil:NilClass; #GIRO:  and "House" STAYS "House", not "Houses"
  end

  def show
    @house = House.find(params[:id])
  end

end
