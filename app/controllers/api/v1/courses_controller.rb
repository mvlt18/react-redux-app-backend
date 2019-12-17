class Api::V1::CoursesController < ApplicationController
  before_action :set_platform
  before_action :set_params, only: [:show]

  def index
    @courses = Course.all
    render json: @courses, only: [:name, :url, :start_date, :end_date, :status], status: 200
  end

  def create
    # binding.pry
    @course = @platform.courses.new(course_params)
    if @course.save
      render json: @platform, status: 200
    else
      render json: {error: 'There was an error creating this course'}
    end
  end

  def show
    render json: @course, status: 200
  end


  private

  def set_platform
    @platform = Platform.find(params[:platform_id])
  end

  def course_params
    params.require(:course).permit(:name, :url, :start_date, :end_date, :status, :platform_id)
  end

  def set_params
    @course = Course.find(params[:id])
  end

end
