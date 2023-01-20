require 'diary'
require 'diary_entry'

describe "Diary integration" do
  before(:each) do
    @diary = Diary.new
  end
  
  it "returns all diary entries" do
    diaryentry1 = DiaryEntry.new("1", "ABC")
    diaryentry2 = DiaryEntry.new("2", "DEF")
    @diary.add(diaryentry1)
    @diary.add(diaryentry2)
    expect(@diary.all).to eq [diaryentry1, diaryentry2]
  end

  it "returns total numbers of words in entries" do
    diaryentry1 = DiaryEntry.new("1", "This is a text.")
    diaryentry2 = DiaryEntry.new("2", "Another one.")
    @diary.add(diaryentry1)
    @diary.add(diaryentry2)
    expect(@diary.count_words).to eq 6
  end

  it "returns total time of reading all entries" do
    diaryentry1 = DiaryEntry.new("1", "This is a text.")
    diaryentry2 = DiaryEntry.new("2", "Another one.")
    @diary.add(diaryentry1)
    @diary.add(diaryentry2)
    expect(@diary.reading_time(1)).to eq 6
  end

  it "returns total time of reading all entries" do
    diaryentry1 = DiaryEntry.new("1", "This is a text.")
    diaryentry2 = DiaryEntry.new("2", "Another one.")
    @diary.add(diaryentry1)
    @diary.add(diaryentry2)
    expect(@diary.reading_time(6)).to eq 2
  end

  it "Returns an instance of diary entry representing the entry that is closest to" do
    diaryentry1 = DiaryEntry.new("1", "This text should be the most optimal")
    diaryentry2 = DiaryEntry.new("2", "This one is too long and should not be used as a result")
    diaryentry3 = DiaryEntry.new("3", "too short")
    @diary.add(diaryentry1)
    @diary.add(diaryentry2)
    @diary.add(diaryentry3)
    expect(@diary.find_best_entry_for_reading_time(8, 1)).to eq diaryentry1
  end
end