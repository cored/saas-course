require "rps_game/version"

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
module RpsGame
  class Strategy
    attr_reader :value
    def initialize(value)
      @value = sanitize(value)
    end

    def sanitize(value)
      raise NoSuchStrategyError unless value =~ /[R|P|S]/
      value
    end
  end

  class Player
    attr_reader :name, :strategy
    def initialize(data) 
      @name = data[0]
      @strategy = Strategy.new data[1]
    end
  end

  class Game
    def initialize(first_player, second_player)
      @first_player = Player.new(first_player)
      @second_player = Player.new(second_player)
    end
    
    def winner
      winner = []
      if @first_player.strategy.value == "R" || @second_player.strategy.value == "R"
        if @first_player.strategy.value == "R" && @second_player.strategy.value == "S"
          winner = [@first_player.name, @first_player.strategy.value]
        else
          winner = [@second_player.name, @second_player.strategy.value]
        end
      end
      winner
    end
  end

  def self.rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.size == 2
    Game.new(game[0],game[1]).winner
  end
end
