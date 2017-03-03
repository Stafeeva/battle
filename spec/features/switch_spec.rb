# As two Players,
# So we can continue our game of Battle,
# We want to switch turns

feature 'switch' do
  scenario "players change" do
    visit'/'
    player1 = Player.new('Rory')
    player2 = Player.new('Albert')
    fill_in :player_one, with: player1.name
    fill_in :player_two, with: player2.name
    click_button('Fight!')
    click_button('Attack!')
    click_button('Switch!')
    expect(page).to have_content("Albert VS Rory")
  end
end
