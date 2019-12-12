class Api::V1::TodosController < ApplicationController
  before_action :set_params, only: [:show]

  def index
    @todos = Todo.all
    render json: @todos, only: [:content, :due_date], status: 200
  end

  def show
    render json: @todo, status: 200
  end

  def create
    @todo = Todo.create(todo_params)
    render json: TodoSerializer.new(@todo), status: :created
  end


  private

  def todo_params
    params.require(:todo).permit(:content, :due_date, :course_id)
  end

  def set_params
    @todo = Todo.find(params[:id])
  end

end
