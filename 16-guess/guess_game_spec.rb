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
    fake_console = double('Console').as_null_object
    fake_console.should_receive(:output).with('Welcome to the Guessing Game')
    game = GuessGame.new(fake_console)
    game.start
  end
  
  it "should display 'Welcome to the Guessing Game' to the standard output when the game begins" do
    game = GuessGame.new
    game.start
  end
  
  it "should prompt the user to enter the number representing their guess. Prompt should explain to users what they are to do." do
    fake_console = double('Console').as_null_object
    fake_console.should_receive(:prompt).with('Enter a number between 1 and 100 to guess the number')
    game = GuessGame.new(fake_console)
    game.start    
  end
  
  it "should perform validation of the guess entered by the user : lower than 1" do
    fake_console = double('Console')
    game = GuessGame.new(fake_console)
    game.guess = 0
    
    game.error.should == 'The number must be between 1 and 100'            
  end
  
  it "should perform validation of the guess entered by the user : higher than 100" do
    fake_console = double('Console')
    game = GuessGame.new(fake_console)
    game.guess = 101
    
    game.error.should == 'The number must be between 1 and 100'            
  end
  
end