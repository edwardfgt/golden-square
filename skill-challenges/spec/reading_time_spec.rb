require 'reading_time'

describe "estimate_time method" do
  context "given an empty string" do
    it "returns 0" do
      expect(estimate_time("")).to eq 0
    end
  end

  context "given a string under 200 words long" do
    it "returns 1" do
      expect(estimate_time("hello")).to eq 1
    end
  end

  context "given a string over 200 words long" do
    it "returns length of time taken to read (200 words per minute)" do
      expect(estimate_time("hello " * 400)).to eq 2
      expect(estimate_time("hello " * 600)).to eq 3
      expect(estimate_time("hello " * 800)).to eq 4
      expect(estimate_time("hello " * 1000)).to eq 5
    end
  end
end