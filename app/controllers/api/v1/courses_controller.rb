class Api::V1::CoursesController < ApplicationController

  def index
    @courses = Course.all
    render json: @courses, status: 200
  end

end
