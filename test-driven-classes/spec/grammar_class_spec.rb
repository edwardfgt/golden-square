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

  context "percentage_good method" do
    it "returns, 'no texts have been passed' if @checked == 0" do
      grammar = GrammarStats.new
      expect(grammar.percentage_good).to eq "No texts have been passed"
    end

    it "returns '100% of tests passed when passed so far' when passed one correct text" do
      grammar = GrammarStats.new
      grammar.check("Hello World!")
      expect(grammar.percentage_good).to eq "100% of checks have passed so far"
    end

    it "returns '0% of tests passed when passed so far' when passed one incorrect text" do
      grammar = GrammarStats.new
      grammar.check("hello World!")
      expect(grammar.percentage_good).to eq "0% of checks have passed so far"
    end

    it "returns '% of tests passed when passed so far' when passed multiple texts" do
      grammar = GrammarStats.new
      grammar.check("hello World!")
      grammar.check("Hello World!")
      expect(grammar.percentage_good).to eq "50% of checks have passed so far"
      grammar.check("Hi everyone!")
      grammar.check("Bye.")
      expect(grammar.percentage_good).to eq "75% of checks have passed so far"

    end
  end
end