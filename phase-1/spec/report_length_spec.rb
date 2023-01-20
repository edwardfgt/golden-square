require "report_length"

RSpec.describe "report_length method" do
  it "Reports on the length of a string" do
    # result = greet("Edward")
    expect(report_length("Edward")).to eq "This string was #{6} characters long."
    expect(report_length("qwerty111!!!")).to eq "This string was #{12} characters long."
    expect(report_length("test")).to eq "This string was #{4} characters long."
    expect(report_length("")).to eq "This string was #{0} characters long."
    expect(report_length("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")).to eq "This string was #{30} characters long."
  end
end