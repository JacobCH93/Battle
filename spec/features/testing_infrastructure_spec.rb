feature "testing infrastructure" do
    scenario "It can dispay apps content" do
        visit '/'
        expect(page).to have_content 'Testing infrastucture working!'
    end
end