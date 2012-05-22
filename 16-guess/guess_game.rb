require_relative 'standard_output'

class GuessGame
  attr_accessor :guess
  attr_accessor :error
  attr_reader :random
  
  def initialize(console=StandardOutput.new)
    @console = console
    @random = Random.new.rand(1..100)
  end
    
  def start
    @console.output("Welcome to the Guessing Game")
    @console.prompt("Enter a number between 1 and 100 to guess the number")
  end
  
  def guess=(n)
    if (n < 1) or (n > 100)
      @error = 'The number must be between 1 and 100'
    end
  end
end

