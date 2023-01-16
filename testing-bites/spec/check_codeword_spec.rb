require "check_codeword"

RSpec.describe "check_codeword method" do
  it "Rejects a user if password is wrong" do
    result = check_codeword("ADWDA")
    expect(result).to eq "WRONG!"
  end

  it "Accepts a user if password is correct" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "Tells a user their guess was close" do
    result = check_codeword("hope")
    expect(result).to eq "Close, but nope."
  end

end