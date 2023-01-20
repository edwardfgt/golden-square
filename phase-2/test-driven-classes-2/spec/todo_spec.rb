require 'todo'

describe Todo do
  before(:each) do
    @todo = Todo.new("Drink water")
  end

  it "marks task as true" do
    expect(@todo.task).to eq({ :content => "Drink water", :isDone => false })
  end

  it "returns when a task is false" do
    expect(@todo.done?).to eq false
  end

  it "returns when a task is done" do
    @todo.mark_done!
    expect(@todo.done?).to eq true
  end
end   
