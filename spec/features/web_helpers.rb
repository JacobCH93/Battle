def sign_in_and_play
    visit '/'
    fill_in 'player_1', with: 'Jacob'
    fill_in 'player_2', with: 'Mo'
    click_button 'Submit'
end