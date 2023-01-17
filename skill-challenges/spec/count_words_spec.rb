require 'count_words'

# A method called count_words that takes a string as an argument and returns the number of words in that string.

RSpec.describe "count_words method" do
  context "when string is empty" do
    it "returns 0" do
      expect(count_words("")).to eq 0
    end
  end
end