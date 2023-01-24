require "secret_diary"

describe SecretDiary do

  it "returns go away" do
    diary_entry = double(:fake_entry)
    secret_diary = SecretDiary.new(diary_entry)
    expect { secret_diary.read }.to raise_error  "Go away!"
  end


  it "Returns the diary content when the diary is unlocked and read method is called" do
    diary = double(:fake_entry, read: "Hello world")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "Hello world"
  end
end