feature "Players can put in their names" do
    scenario "Players can enter their names" do
    sign_in_and_play
       expect(page).to have_content 'Player 1 = Jacob'
       expect(page).to have_content 'Player 2 = Mo'
    end
end