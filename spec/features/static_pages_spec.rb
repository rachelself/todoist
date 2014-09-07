feature "Default Rails Welcome Page" do
  scenario "is displayed when loading the site" do
    visit '/lists'
    expect(page).to have_content("Welcome, ToDoist.")
  end
end
