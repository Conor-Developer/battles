feature 'Enter names' do
  scenario 'Expects two players to fill in their names (in a form)' do
    sign_in_and_play
    expect(page).to have_content 'Conor vs. Jordan'
  end
end


