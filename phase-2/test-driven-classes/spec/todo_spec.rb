require 'todo'

describe Todo do
  it "displays 1 todo item after being added" do
    todo = Todo.new
    todo.add_todo("Drink water")
    expect(todo.display_todo).to eq "1: Drink water"
  end

  it "displays a message when the list is empty" do
    todo = Todo.new
    todo.add_todo("Drink water")
    todo.del_todo(1)
    expect(todo.display_todo).to eq "There are no todos in your list"
  end

  it "displays 2 todo items" do
    todo = Todo.new
    todo.add_todo("Drink water")  
    todo.add_todo("Wash the dishes")
    expect(todo.display_todo).to eq "1: Drink water, 2: Wash the dishes"
  end
end