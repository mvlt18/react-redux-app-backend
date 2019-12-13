class Api::V1::TodosController < ApplicationController
  before_action :set_params, only: [:show]

  def index
    @todos = Todo.all
    render json: @todos, only: [:content, :due_date], status: 200
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      render json: @todos, status: 200
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

  def set_params
    @todo = Todo.find(params[:id])
  end

end
