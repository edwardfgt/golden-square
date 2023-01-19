class Todo
  def initialize(task) # task is a string
    @task = { content: task, isDone: false }
  end

  def task
    @task
  end

  def mark_done!
    @task[:isDone] = true
  end

  def done?
    return @task[:isDone]
  end
end
