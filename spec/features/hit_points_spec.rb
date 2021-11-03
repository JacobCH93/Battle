feature 'Hit points' do
    scenario 'Show the players HP' do
    visit '/'
       fill_in 'player_1', with: 'Jacob'
       fill_in 'player_2', with: 'Mo'
       click_button 'Submit'
    expect(page).to have_content 'Player 2 HP = 100'
    end
end