require "./app.rb"

feature "hit_points" do
  scenario "see player 2 hit points" do
    visit('/')
    fill_in(:player1_name, with: 'Jay')
    fill_in(:player2_name, with: 'Daniel')
    click_button('Submit')
    expect(page).to have_content 'Jay: 60HP'
  end
end
