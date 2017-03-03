# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP
feature "#player", :plr do

    scenario "returns players name" do
      expect(Player.new('Rory').name).to eq 'Rory'
    end

    scenario "attack reduces player 2's points" do
      sign_in_and_play
      click_button('Attack!')
      expect(page).to have_content('Albert: 90HP')
    end

end
