require_relative '../lib/player'

describe Player do

  subject(:player_1) { Player.new("Conor") }
  subject(:player_2) { Player.new("Bal") }

  context 'Player Class' do
    it 'return the players names' do
      player_1 = Player.new("Conor")
      expect(player_1.name).to eq("Conor")
    end
  end

  context 'HP' do
    it 'check HP is default value' do
      expect(player_1.hp).to eq(Player::DEFAULT_HIT_POINTS)
    end
  end

  context '#Attack' do
    it 'damages the player' do
      expect(player_1).to receive(:take_damage)
      player_2.attack(player_1)
    end
  end

  context '#take_damage' do
    it 'to reduce player 2\'s hit points by 10' do
      player_1.attack(player_2)
      expect { player_2.take_damage }.to change { player_2.hp }.by(-10)
    end
  end

end
