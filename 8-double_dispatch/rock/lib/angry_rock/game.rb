require_relative 'game_coordinator'

module AngryRock
  class Game
    def initialize(player_one, player_two)
      @player_one = player_one
      @player_two = player_two
    end
    
    def winner
      coordinator = GameCoordinator.new(@player_one, @player_two)
      coordinator.winner
    end
    
  end
end