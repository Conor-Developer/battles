feature 'Reduce HP' do
  scenario 'Clicking attack reduces player 2\'s hp by 10' do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content '90'
  end
end
