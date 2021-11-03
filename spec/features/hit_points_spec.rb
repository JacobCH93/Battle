feature 'Hit points' do
    scenario 'Show the players HP' do
    sign_in_and_play
    expect(page).to have_content 'Player 2 HP = 100'
    end
end