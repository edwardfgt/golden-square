require 'contains_todo'

describe "contains_todo method" do
  context "The string inputted contains todo" do
    it "returns true" do
      expect(contains_todo('#TODO')).to eq true
      expect(contains_todo('Hello world, #TODO')).to eq true
      expect(contains_todo('This is a longer test #TODO, test')).to eq true
    end
  end

  context "The string doesn't contain todo" do
    it "returns false" do
      expect(contains_todo('hello world')).to eq false
      expect(contains_todo('hello tod0!!')).to eq false
      expect(contains_todo('todo')).to eq false
    end
  end
end