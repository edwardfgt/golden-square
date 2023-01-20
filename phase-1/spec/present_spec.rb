require 'present'

RSpec.describe Present do
  context "When no content has been wrapped" do
    it "Fails and returns error" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end

  context "When content has been wrapped" do
    it "returns content" do
      present = Present.new
      present.wrap("Computer")
      expect(present.unwrap).to eq "Computer"
    end

    it "returns 'Content has already been wrapped'" do
      present = Present.new
      present.wrap("Computer")
      expect { present.wrap("Computer") }.to raise_error "A contents has already been wrapped."
    end

  end

end