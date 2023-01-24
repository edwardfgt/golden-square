require 'cat_facts'

describe CatFacts do
  it "calls an API and returns a fact about cats" do
    requester = double :requester
    url = URI"https://catfact.ninja/fact"
    json = %({"fact":"About 37% of American homes today have at least 1 cat.","length":54})
    expect(requester).to receive(:get).with(url).and_return(json)
    catfact = CatFacts.new(requester)
    expect(catfact.provide).to eq "Cat fact: About 37% of American homes today have at least 1 cat."
  end
end