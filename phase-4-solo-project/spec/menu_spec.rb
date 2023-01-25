require "menu"
require "dish"

describe Menu do
  context "when no items added" do
    it "returns an empty menu" do
      menu = Menu.new
      expect(menu.return).to eq []
    end
  end
end