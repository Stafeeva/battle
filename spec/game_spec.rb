require 'game'

describe Game do

  subject (:new_game) { described_class.new(player_one, player_two) }
  let(:player_one) { double :player }
  let(:player_two) { double :player }

  describe '#player_one' do
    it 'returns the first player' do
      expect(subject.player_one).to eq player_one
    end
  end

  describe '#player_two' do
    it 'returns the second player' do
      expect(subject.player_two).to eq player_two
    end
  end

  describe '#attack'
    it 'damages the player' do
      expect(player_two).to receive(:receive_damage)
      new_game.attack(player_two)
    end
end
