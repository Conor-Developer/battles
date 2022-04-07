require_relative '../lib/player'

describe Player do
  context 'Player Class' do
    it 'Return the players names' do
      player_1 = Player.new("Conor")
      expect(player_1.name).to eq("Conor")
    end
  end
end
