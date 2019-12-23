class Api::V1::TodosController < ApplicationController
  before_action :set_todo_params, only: [:show]
  before_action :set_course_params, only: [:create]
  before_action :set_platform_params, only: [:create]

  def index
    @todos = Todo.all
    render json: @todos, status: 200
  end

  def create
    # binding.pry
    @todo = @course.todos.new(todo_params)
    if @todo.save
      render json: @platform, status: 200
    else
      render json: {error: 'There was an error creating this todo'}
    end
  end

  def show
    render json: @todo, status: 200
  end


  private

  def todo_params
    params.require(:todo).permit(:content, :due_date, :course_id)
  end

  def set_course_params
    @course = Course.find(params[:course_id])
  end

  def set_platform_params
    @platform = Platform.find(params[:platform_id])
  end

  def set_todo_params
    @todo = Todo.find(params[:id])
  end

end
