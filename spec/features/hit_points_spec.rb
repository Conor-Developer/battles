feature "Hit points" do
  scenario 'Expects to see Player 2\'s Hit Points ' do
  sign_in_and_play
  expect(page).to have_content 'Conor vs. Jordan Jordan : 100 hp'
end
end