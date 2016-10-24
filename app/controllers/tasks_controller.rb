class TasksController < ApplicationController
  before_action :validate_user, only: [:edit, :update]

  def index
    @tasks = @current_user.tasks
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    @task.user_id = session[:user_id]

    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def complete
    @task = Task.find(params[:id])

    if @task.update(completed_at: Time.now)
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def uncomplete
    @task = Task.find(params[:id])

    if @task.update(completed_at: nil)
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:title, :description, :due_date)
  end

  def validate_user
    unless Task.find(params[:id]).user_id == session[:user_id]
      redirect_to root_path
    end
  end
end
