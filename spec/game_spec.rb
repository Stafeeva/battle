require 'game'

describe Game do

rory = Player.new('Rory')
albert = Player.new('Albert')
subject (:new_game) { Game.new(rory, albert) }

    it 'damages the player' do
      expect(albert).to receive(:receive_damage)
      new_game.attack(albert)
    end
end
