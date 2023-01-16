require "greet"

RSpec.describe "greet method" do
  it "greets a user" do
    result = greet("Edward")
    expect(result).to eq "Hello, Edward!"
  end
end