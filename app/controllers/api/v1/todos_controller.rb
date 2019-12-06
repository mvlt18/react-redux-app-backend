class Api::V1::TodosController < ApplicationController

  def index
    @todos = Todo.all
    todos_json = TodoSerializer.new(@todos).serialized_json
    render json: todos_json, status: 200
  end

end
