require "rspec"
require_relative "./greeting.rb"
describe Greeting do
    it "when user y.o more than 18" do
        user = Greeting.new
        expect(user.say_greeting(20, "Ангелина")).to eq("user>18") 
    end

    it "when user y.o less 18" do
        user = Greeting.new
        expect(user.say_greeting(15, "Ангелина")).to eq("user<18")
    end
end
