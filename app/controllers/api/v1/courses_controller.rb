class Api::V1::CoursesController < ApplicationController

  def index
    @courses = Course.all
    options = {
      include: [:todos]
    }
    courses_json = CourseSerializer.new(@courses, options).serialized_json
    render json: courses_json, status: 200
  end

end
