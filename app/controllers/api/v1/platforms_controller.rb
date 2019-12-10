class Api::V1::PlatformsController < ApplicationController
  before_action :set_params, only: [:show]

  def index
    @platforms = Platform.all

    options = {
      include: [:courses]
    }

    platforms_json = PlatformSerializer.new(@platforms, options).serialized_json
    render json: platforms_json, status: 200
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
