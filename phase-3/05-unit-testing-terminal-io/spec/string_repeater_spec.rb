require "string_repeater"

describe StringRepeater do
  it "returns string * integer" do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.")
    expect(terminal).to receive(:puts).with("Please enter a string")
    expect(terminal).to receive(:gets).and_return("TWIX")
    expect(terminal).to receive(:puts).with("Please enter a number of repeats")
    expect(terminal).to receive(:gets).and_return(10)
    expect(terminal).to receive(:puts).with("Here is your result:")
    expect(terminal).to receive(:puts).with("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX")

    string_repeater = StringRepeater.new(terminal)
    string_repeater.repeat
  end
end
