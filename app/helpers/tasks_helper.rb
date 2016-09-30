module TasksHelper
  def name_completed_class(task)
    task.completed_at != nil ? "done" : "pending"
  end

  def make_completed_path_type(task)
    task.completed_at != nil ? uncomplete_task_path(task) : complete_task_path(task)
  end
end
