feature "Players can put in their names" do
    scenario "Players can enter their names" do
    sign_in_and_play
       expect(page).to have_content 'Jacob HP = 100'
       expect(page).to have_content 'Mo HP = 100'
    end
end