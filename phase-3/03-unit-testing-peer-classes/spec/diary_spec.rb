require 'diary'

describe Diary do
  it "initialises and reads contents" do
    diary = Diary.new("this is contents")
    expect(diary.read).to eq "this is contents"
  end
end