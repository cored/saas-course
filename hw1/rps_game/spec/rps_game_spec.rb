require File.dirname(__FILE__) + '/spec_helper'

describe RpsGame do 

  describe "Game rules" do 
    it "should raise an error if number of players is not 2" do 
      lambda { RpsGame.rps_game_winner([["Armando","P"]]) }.should raise_error(WrongNumberOfPlayersError)
    end
    it "should raise an error if there is no a valid strategy for one or both players" do 
      lambda { RpsGame.rps_game_winner([["Armando","P"],["Jeff", "Z"]]) }.should raise_error(NoSuchStrategyError)
      lambda { RpsGame.rps_game_winner([["Armando","D"],["Jeff","R"]]) }.should raise_error(NoSuchStrategyError)
    end
    context "Rock vs Scissors" do 
      it "should says that the user with rock wins over scissors" do 
        RpsGame.rps_game_winner([["Armando","R"],["Jeff","S"]]).should == ["Armando","R"]
        RpsGame.rps_game_winner([["Armando", "S"],["Jeff","R"]]).should == ["Jeff","R"]
      end
      it "should says that the user with paper wins oever" 
    end

  end

end
