require 'music'

describe Musictracker do
  before(:each) do
    @library = Musictracker.new
  end

  it "returns an empty array" do
    expect(@library.view_songs).to eq "No songs in your library"
  end 

  it "returns 1 song name" do
    @library.add_song("Rolling in the deep")
    expect(@library.view_songs).to eq "Rolling in the deep"
  end

  it "returns multiple song names" do
    @library.add_song("Rolling in the deep")
    @library.add_song("Baby")
    expect(@library.view_songs).to eq "Rolling in the deep, Baby"
  end

end