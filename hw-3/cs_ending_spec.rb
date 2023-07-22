require "rspec"
require_relative "./cs_ending.rb"
describe CsEnd do
  it "when a word doesn't end in cs" do
    x = CsEnd.new
    expect(x.cs_ending("ball")).to eq("llab")
  end
  it "when a word ends in cs" do
    x = CsEnd.new
    expect(x.cs_ending("sonics")).to eq(2**6)
  end
end