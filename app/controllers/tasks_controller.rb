class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @current_task = Task.find(params[:id])
  end
end
