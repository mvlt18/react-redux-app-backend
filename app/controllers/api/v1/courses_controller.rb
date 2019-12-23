class Api::V1::CoursesController < ApplicationController
  before_action :set_platform_params, only: [:create]
  before_action :set_course_params, only: [:show]

  def index
    @courses = Course.all
    render json: @courses, status: 200
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

  def set_course_params
    @course = Course.find(params[:id])
  end

  def set_platform_params
    @platform = Platform.find(params[:platform_id])
  end

  def course_params
    params.require(:course).permit(:name, :url, :start_date, :end_date, :status, :platform_id)
  end



end
