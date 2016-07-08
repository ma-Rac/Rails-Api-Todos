class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]


  # GET /todos.json... no other options, just JSON.
  def index
    @todo = Todo.new
    @todos = Todo.all
    render json: @todos
  end

  def show
  end


  # POST /todos.json and only json because Json is boss in this API
  def create
    @todo = Todo.new(todo_params)


      if @todo.save
       render json: @todo, status: :created
      else
       render json: @todo.errors, status: :unprocessable_entity
      end

  end

#I dont need patches.. but I'll leave this here JUST IN CASE.
  def update

      if @todo.update(todo_params)
        render json: @todo, status: :ok
      else
        render json: @todo.errors, status: :unprocessable_entity
      end
    
  end

#Dont... don't do this.. It's only a todo.. you monster
  def destroy
    @todo.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions. #plus.. it's private.
    def set_todo
      @todo = Todo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through. #this comment is amazing.
    def todo_params
      params.require(:todo).permit(:title, :completed)
    end
end
