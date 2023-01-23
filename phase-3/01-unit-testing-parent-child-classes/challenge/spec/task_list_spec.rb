require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  it "returns tasks which have been added" do
    task_list = TaskList.new
    todo1 = double :todo
    todo2 = double :todo
    task_list.add(todo1)
    task_list.add(todo2)
    expect(task_list.all).to eq [todo1, todo2]
  end

  it "returns true when all tasks have been complete" do
    task_list = TaskList.new
    todo1 = double(:todo, complete?: true)
    todo2 = double(:todo, complete?: true)
    task_list.add(todo1)
    task_list.add(todo2)
    expect(task_list.all_complete?).to eq true
  end
end
