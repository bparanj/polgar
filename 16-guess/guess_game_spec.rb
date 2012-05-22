require_relative 'guess_game'

describe GuessGame do
  it "should generate random number between 1 and 100 inclusive" do
    game = GuessGame.new
    result = game.random
    
    expected = 1..100
    # expected.include?(result) -- This is also ok (does not use rspec matcher)
    expected.should cover(result)
  end
  
  it "should display 'Welcome to the Guessing Game' when the game begins" do
    fake_console = double('Console')
    fake_console.should_receive(:output).with('Welcome to the Guessing Game')
    game = GuessGame.new(fake_console)
    game.start
  end
end