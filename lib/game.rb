require_relative './player'

class Game
  attr_reader :player1, :player2

  def initialize(player1 = Player.new('player_1'), player2 = Player.new('player_2'))
    @player1 = player1
    @player2 = player2
  end

  def attack(player_being_attacked)
    player_being_attacked.take_damage
  end
end
