require_relative 'guess_game'

describe Randomizer do

  it "should generate random number between 1 and 100 inclusive" do
    result = Randomizer.new.get
  
    expected = 1..100
    # expected.include?(result) -- This is also ok (does not use rspec matcher)
    expected.should cover(result)
  end
end