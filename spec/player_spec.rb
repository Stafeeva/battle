# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP
describe "#player" do
  subject(:rory) { Player.new('Rory') }
  subject(:albert) { Player.new('Albert') }

  describe '#name' do
    it "returns players name" do
      expect(rory.name).to eq 'Rory'
    end
  end

  describe '#hp' do
    it "returns players points" do
      expect(rory.hp).to eq Player::HP
    end
  end

  describe '#receive_damage' do
    it 'reduces the player the player hp' do
      expect { albert.receive_damage }.to change { albert.hp }.by(-10)
    end
  end

end
