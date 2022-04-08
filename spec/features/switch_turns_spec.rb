feature "Switch turns" do
  scenario "Once player 1 has attacked, player 2 can attack" do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content "Conor attacked Jordan"
  end

  scenario "Once player 1 has attacked, player 2 can attack" do
    sign_in_and_play
    click_button("Attack!")
    click_button("Ok")
    click_button("Attack!")
    expect(page).not_to have_content "Conor attacked Jordan"
    expect(page).to have_content "Jordan attacked Conor"
  end
end