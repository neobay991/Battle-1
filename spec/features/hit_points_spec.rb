require "./app.rb"

feature 'hit_points' do

  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points
  scenario 'see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Daniel: 60HP'
  end

  # As Player 1,
  # So I can see how close I am to losing,
  # I want to see my own hit points
  scenario 'see player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Jay: 60HP'
  end

end
