class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def index
    @services = Service.all

    @service = Service.new


  end

  def new
    @service = Service.new
  end

  def show
    redirect_to services_path
  end

  def create
    @service = Service.new(service_param)
    if @service.save
      redirect_to @service
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @service.update_attributes(service_param)
      redirect_to services_path
    end
  end

  def destroy
    @service.destroy
    redirect_to @service
  end

  private
  def set_service
    @service = Service.find(params[:id])
  end

  def service_param
    params.require(:service).permit(:icon, :name)
  end
end
