class HousesController < ApplicationController

    def index
      @houses = House.all
    end

    def new
      @house = House.new
    end


    def create
      @house = House.create!(post_params)

      @house.save
      redirect_to @house
    end

    def show
      @house = House.find(params[:id])
    end


    def edit
      @house = House.find(params[:id])
    end

    def update
      @house = House.find(params[:id])
      @house.update(artist_params)

      redirect_to house_path(@house)
    end

    def destroy
      @house = House.find(params[:id])
      @house.destroy

      redirect_to posts_path(@house)
    end

    private
    def house_params
      params.require(:house).permit(:name, :img_url)
    end
    end
