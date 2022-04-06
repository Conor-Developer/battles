feature 'Battle' do
  scenario 'Expects two players to fill in their names (in a form)' do
    visit('/')
    fill_in 'player_1', with: 'Conor'
    fill_in 'player_2', with: 'Jordan'
    click_button('Submit')
    expect(page).to have_content 'Conor vs. Jordan'
  end

  scenario 'Expects to see Player 2\'s Hit Points ' do
    visit('/')
    fill_in 'player_1', with: 'Conor'
    fill_in 'player_2', with: 'Jordan'
    click_button('Submit')
    save_and_open_page
    expect(page).to have_content 'Conor vs. Jordan Jordan : 100 hp'
  end
end
