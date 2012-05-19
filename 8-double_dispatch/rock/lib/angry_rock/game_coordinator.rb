require_relative 'paper'
require_relative 'rock'
require_relative 'scissor'

module AngryRock
  
  class GameCoordinator
    
    def initialize(player_one, player_two)
      @player_one = player_one
      @player_two = player_two
      @choice_one = player_one.choice
      @choice_two = player_two.choice
    end

    def winner      
      result = pick_winner
      
      winner_name(result)
    end
    
    private 
    
    def select_winner(receiver, target)
      receiver.beats(target)
    end
    
    def classify(string)
      Object.const_get(@choice_two.capitalize)
    end
    
    def winner_name(result)
      if result
        @player_one.name
      else
        @player_two.name
      end
    end
    
    def pick_winner
      result = false
       if @choice_one == 'scissor'
         result = select_winner(Scissor.new, classify(@choice_two).new)
       else
         result = select_winner(classify(@choice_one).new, classify(@choice_two).new)
       end
       result
    end
  end
  
end