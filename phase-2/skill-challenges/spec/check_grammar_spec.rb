require 'check_grammar'

describe "check_grammar method" do
  context "when given a string with correct grammar" do
    it "returns true" do
      expect(check_grammar("This is a string.")).to eq true
      expect(check_grammar("Hello, world!")).to eq true
      expect(check_grammar("Is this correct?")).to eq true
      expect(check_grammar("Correct sentence!")).to eq true  
    end
  end

  context "when given a string with incorrect grammar" do
    it "returns false" do
      expect(check_grammar("this is a string")).to eq false
      expect(check_grammar("Hello, world")).to eq false
      expect(check_grammar("is this correct?")).to eq false
      expect(check_grammar("correct sentence")).to eq false  
    end
  end
end