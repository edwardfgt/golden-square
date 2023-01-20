class Todo_list
  def initialize
    @todos = []
  end

  def add(task)
    @todos << task
  end

  def read_tasks
    return @todos
  end
end