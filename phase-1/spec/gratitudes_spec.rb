require 'gratitudes'

RSpec.describe Gratitudes do
  it "creates a new object" do
    gratitudes = Gratitudes.new
    expect(gratitudes.format).to eq "Be grateful for: "
  end
  
  it "pushes a gratitute into the array" do
    gratitudes = Gratitudes.new
    gratitudes.add("Coffee")
    expect(gratitudes.format).to eq "Be grateful for: Coffee"
  end

  it "pushes another gratitude into the array" do
    gratitudes = Gratitudes.new
    gratitudes.add("Coffee")
    gratitudes.add("Sun")
    expect(gratitudes.format).to eq "Be grateful for: Coffee, Sun"
  end
end