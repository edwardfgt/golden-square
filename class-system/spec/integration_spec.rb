require 'contacts'
require 'diary'
require 'diaryentry'
require 'todo_list'
require 'todo'

describe "diary integration" do
  it "returns all diary entries for the user" do
    diary = Diary.new
    entry1 = DiaryEntry.new("January 01", "Today I went to the shops and bought 10 melons, 6 packets of ham and a can of lemonade")
    entry2 = DiaryEntry.new("January 02", "Today I did nothing")
    diary.add(entry1)
    diary.add(entry2)
    expect(diary.read).to eq [entry1, entry2]
  end


  it "returns the best entry based on how much time the user has to read" do
    diary = Diary.new
    entry1 = DiaryEntry.new("January 01", "Today I went to the shops and bought 10 melons, 6 packets of ham and a can of lemonade")
    entry2 = DiaryEntry.new("January 02", "Today I did nothing")
    entry3 = DiaryEntry.new("January 03", "Today I slept")
    diary.add(entry1)
    diary.add(entry2)
    diary.add(entry3)
    expect(diary.find_best_entry(2, 3)).to eq entry2
  end
end


describe "todo integration" do
  context "given multiple todos added" do
    it "returns all todos" do
      todolist = Todo_list.new
      todo1 = Todo.new("eat dinner")
      todo2 = Todo.new("drink water")
      todolist.add(todo1)
      todolist.add(todo2)
      expect(todolist.read_tasks).to eq [todo1, todo2]
    end
  end

  context "given multiple diary entries containing phone numbers" do
    it "crawls entries and returns unique numbers" do
      diary = Diary.new
      entry1 = DiaryEntry.new("January 01", "Today I met Bob, his number is 07488155392")
      entry2 = DiaryEntry.new("January 02", "Today I called 08122987263 on my mobile")
      entry3 = DiaryEntry.new("January 03", "This string doesn't have a number")
      diary.add(entry1)
      diary.add(entry2)
      diary.add(entry3)
      contacts = Contacts.new
      expect(diary.extract_numbers).to eq ["07488155392", "08122987263"]
    end
  end
end