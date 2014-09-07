feature "Adding a new todo list" do
  scenario "Path of success" do
    visit "/lists#index"
    click_on "New List"
    fill_in "Title", with: "Groceries"
    click_on "Create List"
    page.should have_content("Groceries List has been created.")
    current_path.should == lists_path
    within("ul#lists") do
      page.should have_content("Groceries")
    end
  end

  scenario "skipping filling out the form" do
    visit "/lists#index"
    click_on "New List"
    click_on "Create List"
    page.should have_content("List could not be created.")
  end
end
