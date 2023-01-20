require 'count_words'

# A method called count_words that takes a string as an argument and returns the number of words in that string.

RSpec.describe "count_words method" do
  context "when string is empty" do
    it "returns 0" do
      expect(count_words("")).to eq 0
    end
  end
  context "When string is passed" do
    it "returns number of words in the string" do
      expect(count_words("Hello")).to eq 1
      expect(count_words("Hello my name is edward")).to eq 5
      expect(count_words("this is a test")).to eq 4
      expect(count_words("1 2 3 4 5 6 7 8 9 10 11 12")).to eq 12
      expect(count_words("djidjoidawjodaw 99idj")).to eq 2
    end
  end
end