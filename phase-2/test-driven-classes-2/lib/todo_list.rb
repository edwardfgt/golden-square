class TodoList
  def initialize
    @todos = []
  end

  def add(todo) # todo is an instance of Todo
    @todos << todo
  end

  def incomplete
    return "The list is empty" if @todos.empty?
    @todos.select { |todo| todo.done? == false}
  end

  def complete
    return "The list is empty" if @todos.empty?
    @todos.select { |todo| todo.done? == true}
  end

  def give_up!
    return "The list is empty" if @todos.empty?
    @todos.each { |todo| todo.mark_done!}
  end
end