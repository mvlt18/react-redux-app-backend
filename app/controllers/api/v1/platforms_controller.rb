class Api::V1::PlatformsController < ApplicationController
  before_action :set_params, only: [:show]

  def index
    @platforms = Platform.all
    render json: @platforms, only: [:name, :url, :image], status: 200
  end

  def create
    # binding.pry
    @platform = Platform.new(platform_params)
    if @platform.save
      render json: @platform, only: [:name, :url, :image], status: 200
    else
      render json: {error: 'There was an error creating this Platform'}
    end
  end

  def show
    render json: @platform, status: 200
  end

  private

  def platform_params
    params.require(:platform).permit(:name, :url, :image)
  end

  def set_params
    @platform = Platform.find(params[:id])
  end

end
