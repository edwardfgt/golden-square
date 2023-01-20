require 'diaryentry'
require 'diary'

describe DiaryEntry do
  it "returns the length of contents" do
    Diaryentry = DiaryEntry.new("01", "This is contents")
    expect(Diaryentry.count_words).to eq 3
  end
end
