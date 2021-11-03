feature "Players can put in their names" do
    scenario "Players can enter their names" do
    visit '/'
       fill_in 'player_1', with: 'Jacob'
       fill_in 'player_2', with: 'Mo'
       click_button 'Submit'
       expect(page).to have_content 'Player 1 = Jacob'
       expect(page).to have_content 'Player 2 = Mo'
    end
end