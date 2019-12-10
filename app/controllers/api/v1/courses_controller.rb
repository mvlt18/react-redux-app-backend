class Api::V1::CoursesController < ApplicationController
  before_action :set_params, only: [:show]

  def index
    @courses = Course.all
    options = {
      include: [:todos]
    }
    courses_json = CourseSerializer.new(@courses, options).serialized_json
    render json: courses_json, status: 200
  end

  def show
    render json: @course, status: 200
  end

  def create
    @course = Course.create(course_params)

    options = {
      include: [:todos]
    }

    render json: CourseSerializer.new(@course, options), status: :created
  end


  private

  def course_params
    params.require(:course).permit(:name, :url, :start_date, :end_date, :status, :platform_id)
  end

  def set_params
    @course = Course.find(params[:id])
  end

end
