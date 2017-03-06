class HotelsController < ApplicationController

  before_action :set_hotel, only: [:show, :edit, :update, :destroy]

  def index
    @hotels = Hotel.all

  end

  def new
    @hotel = Hotel.new
  end

  def show
  end

  def create
    @hotel = Hotel.new(hotel_param)
    if @hotel.save
      redirect_to hotels_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @hotel.update_attributes(hotel_param)
      redirect_to hotels_path
    end
  end

  def destroy
    @hotel.destroy
    redirect_to @hotel
  end

  private
    def set_hotel
      @hotel = Hotel.find(params[:id])
    end

    def hotel_param
      params.require(:hotel).permit(:region_id, :town_id, :name, :transcription)
    end
end
