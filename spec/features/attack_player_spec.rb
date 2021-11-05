feature "Player 1 has attacked player 2" do

    scenario "Player 2 ahs lost HP" do
    sign_in_and_play
    srand(2)
    click_on 'Attack'
    expect(page).to have_content 'Jacob attacked Mo!'
    end

    scenario "attack reduces hp by 10" do
      sign_in_and_play
      srand(2)
      click_on 'Attack'
      click_on 'OK'
      expect(page).to have_content 'Mo HP = 90'
      end

end