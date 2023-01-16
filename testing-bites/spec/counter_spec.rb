require 'counter'

RSpec.describe Counter do
  it "reports the current count after adding values" do
    counter = Counter.new
    counter.add(10)
    result = counter.report
    expect(result).to eq "Counted to 10 so far."
  end
  
  it "reports the starting count of 0" do
    counter = Counter.new
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end

  it "reports the current count after multiple added values" do
    counter = Counter.new
    counter.add(5)
    counter.add(3)
    counter.add(10)
    result = counter.report
    expect(result).to eq "Counted to 18 so far."
  end
end