feature 'Hit points' do
    scenario 'Show the players HP' do
    sign_in_and_play
    expect(page).to have_content 'Mo HP = 100'
    end
end