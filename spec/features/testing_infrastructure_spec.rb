feature "Testing infrastructure" do
  scenario "Check that homepage says Testing infrastructure working!" do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end
end
