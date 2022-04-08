require_relative './player'

class Game
  attr_reader :player1, :player2, :current_turn, :next_turn_v

  def initialize(player1 = Player.new('player_1'), player2 = Player.new('player_2'))
    @player1 = player1
    @player2 = player2
    @current_turn = @player1
    @next_turn_v = @player2
  end

  def attack(player_being_attacked)
    player_being_attacked.take_damage
  end

  def next_turn
    if @current_turn == @player1
      @next_turn_v = @player1
      @current_turn = @player2
    else
      @next_turn_v = @player2
      @current_turn = @player1
     
    end
  end
end
