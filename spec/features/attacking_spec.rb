require "./app.rb"

feature "attack" do

  # As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation
  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_button'Attack >>'
    expect(page).to have_content 'Jay attacked Daniel!'
  end

  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP by 10
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content 'Daniel: 60HP'
    expect(page).to have_content 'Daniel: 50HP'
  end

  # As Player 1,
  # So I can lose a game of Battle,
  # I want Player 2 to attack me, and I want to get a confirmation
  scenario 'be attacked by player 2' do
    sign_in_and_play
    attack_and_confirm
    click_button 'Attack >>'
    expect(page).to have_content "Daniel attacked Jay"
  end


  # As Player 1,
  # So I can start to lose a game of Battle,
  # I want Player 2's attack to reduce my HP by 10
  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    2.times { attack_and_confirm }
    expect(page).not_to have_content 'Jay: 60HP'
    expect(page).to have_content 'Jay: 50HP'
  end

end
