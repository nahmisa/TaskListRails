class TasksController < ApplicationController
  def index
    @tasks = [
      {
        id: 1,
        name: "Take out trash",
        description: "Trash outside",
        complete: true,
      },
      {
        id: 2,
        name: "Walk the dog",
        description: "Dog outside",
        complete: false,
      },
    ]

  end

  def show
    @tasks = [
      {
        id: 1,
        name: "Take out trash",
        description: "Trash outside",
        complete: true,
      },
      {
        id: 2,
        name: "Walk the dog",
        description: "Dog outside",
        complete: false,
      },
    ]

    @current_task = @tasks[params[:id].to_i - 1]
    # IDs start at 1; the -1 to index the array
    
  end
end
