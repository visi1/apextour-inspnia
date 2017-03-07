class RegionsController < ApplicationController
  before_action :set_region, only: [:show, :edit, :update, :destroy]

  def index
    @regions = Region.all
    @region = Region.new

  end

  def new
    @region = Region.new
  end

  def show
    redirect_to regions_path
  end

  def create
    @region = Region.new(region_param)
    if @region.save
      redirect_to @region
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @region.update_attributes(region_param)
      redirect_to regions_path
    end
  end

  def destroy
    @region.destroy
    redirect_to regions_path
  end

  private
  def set_region
    @region = Region.find(params[:id])
  end

  def region_param
    params.require(:region).permit(:name)
  end
end