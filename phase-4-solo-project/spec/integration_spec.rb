require "app"
require "dish"
require "menu"

describe "app menu integration test" do
  context "When app is initalised with no paramaters" do
    it "returns an empty menu" do
      menu = Menu.new
      app = App.new(menu)
      expect(app.view_menu).to eq []
    end
  end
end



