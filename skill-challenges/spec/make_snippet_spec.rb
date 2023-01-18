require 'make_snippet'

RSpec.describe "make_snippet method" do
  context "when string is empty" do
    it "returns an empty string" do
      result = make_snippet("")
      expect(result).to eq ""
    end
  end

  context "given a string which is fewer than 5 words" do
    it "returns the string" do
      result = make_snippet("hello everyone goodbye everyone")
      expect(result).to eq "hello everyone goodbye everyone"
    end
  end

  context "given a string of five words" do
    it "returns the string" do
      result = make_snippet("hello everyone goodbye everyone hello")
      expect(result).to eq "hello everyone goodbye everyone hello"
    end
  end

  context "given a string of six words" do
    it "returns the first 5 words, followed by a ..." do
      result = make_snippet("hello everyone goodbye everyone hello everyone")
      expect(result).to eq "hello everyone goodbye everyone hello..."
    end
  end

end