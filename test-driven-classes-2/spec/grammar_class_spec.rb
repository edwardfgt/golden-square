require 'grammar_class'

describe GrammarStats do
  # context "initialize method" do

  # end

  context "check method" do
    it "returns true if string follows grammar rules" do
      grammar = GrammarStats.new
      expect(grammar.check("Hello World!")).to eq true
      expect(grammar.check("This is a correct sentence.")).to eq true
      expect(grammar.check("Is this also correct?")).to eq true
    end

    it "returns false if string does not follow grammar rules" do
      grammar = GrammarStats.new
      expect(grammar.check("hello world.")).to eq false
      expect(grammar.check("This is incorrect")).to eq false
      expect(grammar.check("even more incorrect")).to eq false
    end
  end

  # context "percentage_good method" do

  # end
end