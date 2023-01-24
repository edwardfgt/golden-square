require "task_formatter"

RSpec.describe TaskFormatter do  
  it "returns formatted code when task is uncomplete" do
    new_task = double(:task, title: "drink water", complete?: false) 
    formatter = TaskFormatter.new(new_task)
    expect(formatter.format).to eq "- [ ] drink water"
  end

  it "returns formatted code when task is complete" do
    new_task = double(:task, title: "eat food", complete?: true) 
    formatter = TaskFormatter.new(new_task)
    expect(formatter.format).to eq "- [X] eat food"
  end
end