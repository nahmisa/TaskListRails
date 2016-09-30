module TasksHelper
  def name_completed_class(task)
    if task.completed_at != nil
      "done"
    else
      "pending"
    end
  end
end
