feature 'Enter names' do
  scenario 'Expects two players to fill in their names (in a form)' do
    visit('/')
    fill_in 'player_1', with: 'Conor'
    fill_in 'player_2', with: 'Jordan'
    click_button('Submit')
    expect(page).to have_content 'Conor vs Jordan'
  end
end
