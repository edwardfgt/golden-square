require 'todo'
require 'todo_list'

describe "Todo List Integration" do
  before(:each) do
    @todo_list = TodoList.new
  end

  it "returns list of non-done todos" do
    todo1 = Todo.new("Drink water")    
    todo2 = Todo.new("Run")
    todo2.mark_done!
    @todo_list.add(todo1)
    @todo_list.add(todo2)
    expect(@todo_list.incomplete).to eq [todo1]
  end

  it "returns list of done todos" do
    todo1 = Todo.new("Drink water")    
    todo2 = Todo.new("Run")
    todo2.mark_done!
    @todo_list.add(todo1)
    @todo_list.add(todo2)
    expect(@todo_list.complete).to eq [todo2]
  end

  it "returns list of done todos" do
    todo1 = Todo.new("Drink water")    
    todo2 = Todo.new("Run")
    @todo_list.add(todo1)
    @todo_list.add(todo2)
    @todo_list.give_up!
    expect(@todo_list.complete).to eq [todo1, todo2]
  end

  context "Error" do
    it "returns 'The list is empty" do
      expect(@todo_list.incomplete).to eq "The list is empty"
      expect(@todo_list.complete).to eq "The list is empty"
      expect(@todo_list.give_up!).to eq "The list is empty"
    end
  end
end