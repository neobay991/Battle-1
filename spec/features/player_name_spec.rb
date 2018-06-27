require "./app.rb"

feature "player_name" do
  scenario "can submit name by a form" do
    sign_in_and_play
    expect(page).to have_content("Jay vs. Daniel")
  end
end
