def sign_in_and_play
  visit('/')
  fill_in 'player_1', with: 'Conor'
  fill_in 'player_2', with: 'Jordan'
  click_button('Submit')
end