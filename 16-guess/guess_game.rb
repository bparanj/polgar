require_relative 'standard_console'
require_relative 'randomizer'

class GuessGame
  attr_reader :guess
  attr_accessor :error
  attr_reader :random
  
  def initialize(console=StandardConsole.new, randomizer=Randomizer.new)
    @console = console
    @random = randomizer.get
  end
    
  def start
    @console.output("Welcome to the Guessing Game")
    @console.prompt("Enter a number between 1 and 100 to guess the number")
  end
      
  def get_user_guess
    @guess = @console.input  
    give_feedback if valid
  end
  
  def to_s
    "You have chosen : #{@console} to play the guess game"
  end
  
  private
  
  def valid
    if (@guess < 1) or (@guess > 100)
      @error = 'The number must be between 1 and 100'
      false
    else
      true
    end
  end
  
  def give_feedback
    if @guess < @random
      @console.output('Your guess is lower')
    elsif @guess > @random
      @console.output('Your guess is higher')
    else
      @console.output('Your guess is correct')
    end
  end
end

