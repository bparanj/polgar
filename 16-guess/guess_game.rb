
class GuessGame
  def initialize(console=STDOUT)
    @console = console
  end
  
  def random
    Random.new.rand(1..100)
  end
  
  def start
    @console.output("Welcome to the Guessing Game")
  end
end