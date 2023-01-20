require 'string_builder'

RSpec.describe StringBuilder do
  it "Reports initial size as 0" do
    builder = StringBuilder.new
    expect(builder.size).to eq 0
  end

  it "Return an empty string" do
    builder = StringBuilder.new
    expect(builder.output).to eq ""
  end

  context "Given an additional string" do
    it "outputs a string" do
      builder = StringBuilder.new
      builder.add("Hello")
      expect(builder.output).to eq "Hello"
    end

    it "outputs the length of the string" do
      builder = StringBuilder.new
      builder.add("Hello")
      expect(builder.size).to eq 5
    end
  end



end