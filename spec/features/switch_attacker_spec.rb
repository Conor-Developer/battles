
feature '#swithcher' do
  scenario 'after one player has attacked other one can press attach button' do
    sign_in_and_play
    click_button ('Attack!')
    click_button ('Ok')
    expect(page).to have_button 'Attack!'
  end  
end