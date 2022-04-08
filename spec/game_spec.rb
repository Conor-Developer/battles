require 'player'
require 'game'

describe Game do
  context '#Attack' do
    it 'damages the player' do
      player1 = Player.new('Conor')
      subject.attack(player1)
      expect(player1.hp).to eq 90
    end
  end

  context 'create two Player instances' do
    it '#new - creates two player' do
      game = Game.new(Player.new('Conor'), Player.new('Bal'))
      expect(game.player1).to be_instance_of(Player)
    end
  end
  
  context 'switching player' do
    it "shows you can change player after attack" do
      game = Game.new(Player.new('Conor'), Player.new('Bal'))
      game.next_turn
      expect(game.current_turn.name).to eq "Bal" 
    end
  end

end
