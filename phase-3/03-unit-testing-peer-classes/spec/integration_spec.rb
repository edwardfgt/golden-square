require "secret_diary"
require "diary"

describe "Diary, secret_diary integration" do
  it "raises an error 'Go away' when diary entry has not been unlocked" do
    diary = Diary.new("Hello world")
    secret_diary = SecretDiary.new(diary)
    expect { secret_diary.read }.to raise_error  "Go away!"
  end

  context "when diary entry is unlocked" do
    it "Returns the diary content when the diary is unlocked and read method is called" do
      diary = Diary.new("Hello world")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "Hello world"
    end
  end

  it "Returns 'Go Away!' when the diary is locked and read method is called" do
    diary1 = Diary.new("Hello world")
    secret_diary = SecretDiary.new(diary1)
    secret_diary.lock
    expect { secret_diary.read }.to raise_error  "Go away!"
  end


end