feature "Attack player 2" do
  scenario "Expect player 1 to attack player 2 and get confirmation" do
    sign_in_and_play
    click_button("Attack!")
    save_and_open_page
    expect(page).to have_content "Conor attacked Jordan"
  end
end