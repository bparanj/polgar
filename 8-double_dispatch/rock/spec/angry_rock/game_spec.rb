require 'spec_helper'

module AngryRock
  describe Game do
    
    before(:all) do
      @player_one = Player.new
      @player_one.name = "Green_Day"
      @player_two = Player.new  
      @player_two.name = "minder"
    end
        
    it "picks paper as the winner over rock" do
      @player_one.choice = 'paper'
      @player_two.choice = 'rock'
      
      game = Game.new(@player_one, @player_two)
      game.winner.should == 'Green_Day'   
    end
    
    it "picks scissors as the winner over paper" do
      @player_one.choice = 'scissor'
      @player_two.choice = 'paper'
      
      game = Game.new(@player_one, @player_two)
      game.winner.should == 'Green_Day'
    end
    
    it "picks rock as the winner over scissors " do
      @player_one.choice = 'rock'
      @player_two.choice = 'scissor'
      
      game = Game.new(@player_one, @player_two)
      game.winner.should == 'Green_Day'
    end

    it "picks rock as the winner over scissors. Verify player name. " do
       @player_one.choice = 'scissor'
       @player_two.choice = 'rock'

       game = Game.new(@player_one, @player_two)
       game.winner.should == 'minder'
    end
    
  end
end