def sign_in_and_play
  visit('/')
  fill_in(:player1_name, with: 'Jay')
  fill_in(:player2_name, with: 'Daniel')
  click_button('Submit')
end
