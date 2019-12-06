class Api::V1::PlatformsController < ApplicationController

  def index
    @platforms = Platform.all
    options = {
      include: [:courses]
    }
    platforms_json = PlatformSerializer.new(@platforms, options).serialized_json
    render json: platforms_json, status: 200
  end

end
