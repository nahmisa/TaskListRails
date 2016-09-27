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
  end
end
