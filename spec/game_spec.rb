require 'player'
require 'game'

describe Game do

  context '#Attack' do
    
    it 'damages the player' do
       player_1 = Player.new("Conor")
        subject.attack(player_1)
        expect(player_1.hp).to eq 90
    end
  end
end  