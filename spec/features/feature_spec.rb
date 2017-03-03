describe Battle, :type => :feature do
  feature "Name input" do
    it "should return \"Let's battle!\"" do
      visit'/'
      expect(page).to have_content("Let's battle!")
    end

    it "should allow 2 players to enter names, submit, store as param and show their names" do
      sign_in_and_play
      expect(page).to have_content("Rory VS Albert")
    end
  end

  feature "Hit points" do
    it "should show a player's hit points" do
      sign_in_and_play
      expect(page).to have_content("Albert: 100HP")
    end
  end
end
