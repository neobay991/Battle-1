require "./app.rb"

feature "player_name" do
  scenario "can submit name by a form" do
    visit('/')
    fill_in(:player1_name, with: 'Jay')
    fill_in(:player2_name, with: 'Daniel')
    click_button('Submit')
    expect(page).to have_content("Jay vs. Daniel")
  end
end
