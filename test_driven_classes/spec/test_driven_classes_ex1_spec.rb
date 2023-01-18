require 'test_driven_class_ex1'

RSpec.describe DiaryEntry do

  context "initialize method" do
  end

  context "title method" do
    it "returns an empty string" do
      diary = DiaryEntry.new("", "")
      expect(diary.title).to eq ""
    end

    it "returns 'my diary' as a string" do
      diary = DiaryEntry.new("my diary", "")
      expect(diary.title).to eq "my diary"
    end
  end


  context "contents method" do
    it "returns an empty string" do
      diary = DiaryEntry.new("","")
      expect(diary.contents).to eq ""
    end

    it "returns 'today I did yoga' as a string" do
      diary = DiaryEntry.new("","today I did yoga")
      expect(diary.contents).to eq "today I did yoga"
    end
  end

  context "count_words method" do
    it "returns 0 for an empty string" do
      diary = DiaryEntry.new("", "")
      expect(diary.count_words).to eq 0
    end

    it "returns 1 for string ABCDEFGHIJ" do
      diary = DiaryEntry.new("", "ABCDEFGHIJ")
      expect(diary.count_words).to eq 1
    end

    it "returns 10 for string A B C D E F G H I J" do
      diary = DiaryEntry.new("", "A B C D E F G H I J")
      expect(diary.count_words).to eq 10
    end
  end

  context "reading_time method" do
    it "returns 1 when text length < wpm && greater than 0" do
      diary =  DiaryEntry.new("", "#{[1..10].join(" ")}")
      expect(diary.reading_time(12)).to eq 1
      expect(diary.reading_time(100)).to eq 1
      expect(diary.reading_time(500)).to eq 1
      expect(diary.reading_time(1000)).to eq 1
      
    end

    it "returns 1 when text length == wpm" do
      diary = DiaryEntry.new("", "#{[1..10].join(" ")}")
      expect(diary.reading_time(10)).to eq 1
    end

    it "returns reading_time when text_length > wpm" do
      diary = DiaryEntry.new("","Hello " * 2000)
      expect(diary.reading_time(1)).to eq 2000
      expect(diary.reading_time(1000)).to eq 2
      expect(diary.reading_time(10)).to eq 200
      expect(diary.reading_time(893)).to eq 2
    end

    it "returns an error when wpm == 0" do
      diary = DiaryEntry.new("","Hello")
      expect { diary.reading_time(0) }.to raise_error(ZeroDivisionError)
    end

    it "returns 0 when word_count == 0" do
      diary = DiaryEntry.new("","")
      expect(diary.reading_time(100)).to eq 0
    end
  end

  context "reading_chunk method" do
    it "returns 0 when wpm is 0" do
      diary = DiaryEntry.new("","")
      expect(diary.reading_chunk(0,0)).to eq 0
      expect(diary.reading_chunk(0,10)).to eq 0
      expect(diary.reading_chunk(0,56)).to eq 0

    end

    it "returns 0 when minutes is 0" do
      diary = DiaryEntry.new("","")
      expect(diary.reading_chunk(20,0)).to eq 0
      expect(diary.reading_chunk(100,0)).to eq 0
      expect(diary.reading_chunk(98,0)).to eq 0
    end

    it "returns readable chunk" do
      diary = DiaryEntry.new("", "1 2 3 4 5 6 7 8 9 10 11 12") 
      expect(diary.reading_chunk(2,2)).to eq "1 2 3 4"
      expect(diary.reading_chunk(2,3)).to eq "5 6 7 8 9 10"
    end

  end
end