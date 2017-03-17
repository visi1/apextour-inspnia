class HotelsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  protect_from_forgery prepend: true, with: :exception
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]

  def index
    @hotels = Hotel.all

  end

  def new
    @hotel = Hotel.new
    @services = Service.all
  end

  def show
  end

  def create
    @hotel = Hotel.new(hotel_param)

    if @hotel.save
      redirect_to hotels_path, success: 'Отель успешно создан'
    else
      flash[:danger] = 'Отель не создан'
      render 'new'
    end
  end

  def edit

  end

  def update

    if @hotel.update_attributes(hotel_param)

      redirect_to hotels_path, success: 'Отель успешно обновлена'
    else
      flash[:danger] = 'Отель не обновлен'
      render :edit
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
      @hotel
      params.require(:hotel).permit(:region_id, :town_id, :name, :transcription, {images: []}, {service_ids: []}, {numbers_attributes: [:id, :name, :date_start, :date_finish, :one_person, :two_person, :additional_space, :_destroy]}, :address, :latitude, :longitude)
    end


end
