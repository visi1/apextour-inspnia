class TownsController < ApplicationController
  before_action :set_town, only: [:show, :edit, :update, :destroy]

    def index
      @towns = Town.all

      @town = Town.new
    end

    def new
      @town = Town.new
    end

    def show
      redirect_to towns_path
    end

    def create
      @town = Town.new(town_param)
      if @town.save
        redirect_to @town
      else
        render 'new'
      end
    end

    def edit
    end

    def update
      if @town.update_attributes(town_param)
        redirect_to towns_path
      end
    end

    def destroy
      @town.destroy
      redirect_to @town
    end

    private
    def set_town
      @town = Town.find(params[:id])
    end

    def town_param
      params.require(:town).permit(:name, :region_id)
    end
end