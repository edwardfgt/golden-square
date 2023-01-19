class Todo
  def initialize
    @todos = []
  end

  def add_todo(string)
    @todos.push(string)
  end

  def del_todo(id)
    @todos.delete(@todos[id - 1])
  end

  def display_todo
    return "There are no todos in your list" if @todos.empty?
    output = ""
    @todos.each_with_index do |todo, index|
       output << "#{index + 1}: #{todo}"
       output << ", " if todo != @todos[-1]
    end
    return output
  end

end