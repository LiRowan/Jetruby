require "rspec"
require_relative "./foobar.rb"
describe Foobar do
  it "when num1 or num2 equal 20" do
    x = Foobar.new
    expect(x.call_foobar(20, 9)).to eq(20)
  end
  it "when num1 or num2 not equal 20" do
    x = Foobar.new
    expect(x.call_foobar(1,0)).to eq
  end
end