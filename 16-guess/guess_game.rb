require_relative 'standard_output'

class GuessGame
  def initialize(console=StandardOutput.new)
    @console = console
  end
  
  def random
    Random.new.rand(1..100)
  end
  
  def start
    @console.output("Welcome to the Guessing Game")
  end
end