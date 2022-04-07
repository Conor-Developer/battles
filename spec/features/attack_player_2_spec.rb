feature "Attack player 2" do
  scenario "Expect player 1 to attack player 2 and get confirmation" do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content "90"
  end
end