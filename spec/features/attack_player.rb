feature "Player 1 has attacked player 2" do
    scenario "Player 2 ahs lost HP" do
    sign_in_and_play
    expect(page).to have_content 'Jaocb attacked Mo!'
    end
end